on enabledGUIScripting(flag)
	considering numeric strings
		set MountainLionOrOlder to system version of (system info) < "10.9"
	end considering
	if MountainLionOrOlder then
		
		-- In OS X Mountain Lion 10.8 or earlier, enable GUI Scripting globally by calling this handler and passing 'true' in the flag parameter before your script executes any GUI Scripting commands, or pass 'false' to disable GUI Scripting. Authentication is required only if the value of the 'UI elements enabled' property will be changed. Returns the final setting of 'UI elements enabled' even if unchanged.
		
		tell application "System Events"
			activate -- brings System Events authentication dialog to front
			set UI elements enabled to flag
			return UI elements enabled
		end tell
	else
		
		-- In OS X Mavericks 10.9 or later, global access is no longer available and GUI Scripting can only be enabled manually on a per-application basis. Pass true to present an alert with a button to open System Preferences and telling the user to select the current application (the application running the script) in the Accessibility list in the Security & Privacy preference's Privacy pane. Authentication is required to unlock the preference. Returns the current setting of 'UI elements enabled' asynchronously, without waiting for System Preferences to open, and tells the user to run the script again.
		
		tell application "System Events" to set GUIScriptingEnabled to UI elements enabled -- read-only in OS X Mavericks 10.9 or later
		if flag is true then
			if not GUIScriptingEnabled then
				activate
				set scriptRunner to name of current application
				display alert "GUI Scripting is not enabled for " & scriptRunner & "." message "Open System Preferences, unlock the Security & Privacy preference, select " & scriptRunner & " in the Privacy Pane's Accessibility list, and then run this script again." buttons {"Open System Preferences", "Cancel"} default button "Cancel"
				if button returned of result is "Open System Preferences" then
					tell application "System Preferences"
						tell pane id "com.apple.preference.security" to reveal anchor "Privacy_Accessibility"
						activate
					end tell
				end if
			end if
		end if
		return GUIScriptingEnabled
	end if
end enabledGUIScripting


#############################################
# Reading and Writing Params
#############################################

on writeTextToFile(theText, theFile, overwriteExistingContent)
	try
		set theFile to theFile as string
		set theOpenedFile to open for access file theFile with write permission
		
		if overwriteExistingContent is true then set eof of theOpenedFile to 0
		write theText to theOpenedFile starting at eof
		close access theOpenedFile
		
		return true
	on error
		try
			close access file theFile
		end try
		
		return false
	end try
end writeTextToFile



#############################################
# Write to file
#############################################

on writeFile(theContent, writable)
	set now to current date
	set mo to (month of now as string)
	set addDaytoYear to (year of now) * 100 + (day of now) as string
	set d to text -2 thru -1 of addDaytoYear
	set e to text 1 thru 3 of mo
	set f to text -6 thru -3 of addDaytoYear
	set this_Story to theContent
	set theFile to (((path to desktop folder) as string) & "results.txt")
	writeTextToFile(this_Story, theFile, writable)
end writeFile


property file_baseKeywords : "/Users/nicokillips/Desktop/base-keywords.txt"
property file_results : "/Users/nicokillips/Desktop/results.txt"
property file_alphabet : "/Users/nicokillips/Desktop/alphabet.txt"
property file_relatedTags : "/Users/nicokillips/Desktop/related-tags.txt"

property newLine : "
"


#############################################
# Make a list from an existing file
#############################################
on makeListFromFile(theFile)
	set theList to {}
	set theLines to paragraphs of (read POSIX file theFile)
	repeat with nextLine in theLines
		if length of nextLine is greater than 0 then
			copy nextLine to the end of theList
		end if
	end repeat
	return theList
end makeListFromFile



#############################################
# Click the search button
#############################################

on activateSearchButton()
	set searchButtonPath to "#gnav-search > div > div.search-button-wrapper.hide > button"
	tell application "Safari"
		do JavaScript "document.querySelector('" & searchButtonPath & "').click();" in document 1
	end tell
end activateSearchButton


#############################################
# Get populated keyword results from DOM
#############################################

on getFromDOM(instance)
	tell application "Safari"
		do JavaScript "document.getElementsByClassName('as-suggestion')['" & instance & "'].innerText;" in document 1
	end tell
end getFromDOM

#############################################
# Set the Input
#############################################

on setInput(keyword)
	tell application "System Events"
		tell process "Safari"
			set value of text field 1 of group 1 of group 1 of group 1 of group 2 of UI element 1 of scroll area 1 of group 1 of group 1 of tab group 1 of splitter group 1 of window 1 to keyword
		end tell
	end tell
end setInput


#############################################
# Evoke Etsy's population of suggested tags
#############################################

on inputEvent(keyword)
	tell application "Safari"
		activate
		tell application "System Events"
			tell process "Safari"
				# Click the input
				click text field 1 of group 1 of group 1 of group 1 of group 2 of UI element 1 of scroll area 1 of group 1 of group 1 of tab group 1 of splitter group 1 of window 1
				
				# Set the value of the input
				set value of text field 1 of group 1 of group 1 of group 1 of group 2 of UI element 1 of scroll area 1 of group 1 of group 1 of tab group 1 of splitter group 1 of window 1 to keyword
				
				delay 1
				
				(*
				select text field 1 of group 1 of group 1 of group 1 of group 2 of UI element 1 of scroll area 1 of group 1 of group 1 of tab group 1 of splitter group 1 of window 1
				
				delay 1
				
				perform action "AXPress" of text field 1 of group 1 of group 1 of group 1 of group 2 of UI element 1 of scroll area 1 of group 1 of group 1 of tab group 1 of splitter group 1 of window 1 *)
				
				# Adds space which initiates the results
				key code 49
				delay 1
				
				key code 51
				delay 1
			end tell
		end tell
	end tell
end inputEvent



#############################################
# Find Etsy's Related Keywords
#############################################

on getRelatedTagsFromDOM(instance)
	set relatedTags_DOMPath to "#content .guided-search li:nth-child"
	tell application "Safari"
		do JavaScript "document.querySelector('" & relatedTags_DOMPath & "(" & instance & ") a').innerText" in document 1
	end tell
end getRelatedTagsFromDOM





#############################################
# Loop through the related tags
#############################################

on loopRelatedTags()
	set theCount to 0
	set theData to ""
	
	repeat
		try
			set updatedCount to (theCount + 1)
			log ("step 1")
			set theData to getRelatedTagsFromDOM(updatedCount)
			log ("step 2")
			set theCount to theCount + 1
			log ("step 3")
			writeFile(theData & newLine, false) as text
			log ("step 4")
		on error
			set theCount to -1 #reset
			log ("step 5")
			exit repeat
		end try
	end repeat
	log ("End Repeat")
	return
end loopRelatedTags



#############################################
# Loop through the tag result in the DOM
#############################################

on savePopulatedWords()
	set theCount to -1
	set theData to ""
	
	repeat
		try
			set updatedCount to (theCount + 1)
			set theData to getFromDOM(updatedCount)
			set theCount to theCount + 1
			writeFile(theData & newLine, false) as text
		on error
			set theCount to -1 #reset
			exit repeat
		end try
	end repeat
	return
end savePopulatedWords



###############################################
# Loop the Alphabet file
#############################################

-- Makes a list
-- Loops through alphabet file
-- Initiates user click
-- Inserts letter
-- Grabs results
-- Saves to file

on loopAlphabet()
	set theList to makeListFromFile(file_alphabet)
	
	repeat with a from 1 to length of theList
		set theCurrentListItem to item a of theList
		inputEvent(theCurrentListItem)
		delay 2
		saveAutoPopulatedWords()
	end repeat
end loopAlphabet



###############################################
# Process the Base Keywords
#############################################

-- Makes a list from the existing base keywords file
-- Initiates Etsy's search bar populated related keywords for each line of the list
-- Writes the results to "results" file

on processBaseKeywordsFile()
	set theList to makeListFromFile(file_baseKeywords)
	set theList2 to makeListFromFile(file_alphabet)
	
	repeat with a from 1 to length of theList
		set theCurrentListItem to item a of theList
		
		repeat with a from 1 to length of theList2
			set theCurrentListItem2 to item a of theList2
			
			set theQuery to (theCurrentListItem & " " & theCurrentListItem2)
			
			inputEvent(theCurrentListItem & " " & theCurrentListItem2)
			
			delay 2
			
			savePopulatedWords()
		end repeat
	end repeat
end processBaseKeywordsFile

##############################################
# Wait for the Page Load
#############################################

on waitForPageLoad()
	tell application "Safari"
		local tids, theList, theText
		set {tids, AppleScript's text item delimiters} to {AppleScript's text item delimiters, "</html>"}
		tell application "Safari" to set theText to source of its document 1
		set theList to text items of theText
		set AppleScript's text item delimiters to tids
		if length of theList = 1 then return false
		return true
	end tell
end waitForPageLoad

##############################################
# Find Related Keywords from Existing File
#############################################

on findRelatedTags()
	set theList to makeListFromFile(file_baseKeywords)
	repeat with a from 1 to length of theList
		
		set theCurrentListItem to item a of theList
		setInput(theCurrentListItem)
		activateSearchButton()
		waitForPageLoad()
		loopRelatedTags()
	end repeat
end findRelatedTags


##############################################
# Find Number of Listings of Related Tags
#############################################

property file_searchbar_longtail_tags : "/Users/nicokillips/Desktop/search-bar-longtails.txt"

# Get Results Count

on getResultsCountFromDOM()
	set thePath to "#content > div > div.content.bg-white.col-md-12.pl-xs-1.pr-xs-0.pr-md-1.pl-lg-0.pr-lg-0.bb-xs-1 > div > div > div.col-group.pl-xs-0.search-listings-group > div:nth-child(2) > div:nth-child(1) > div.float-left > div > span:nth-child(6)"
	
	tell application "Safari"
		set theResult to do JavaScript "document.querySelector('" & thePath & "').innerText" in document 1
	end tell
end getResultsCountFromDOM

on findNumberofListings()
	set theList to makeListFromFile(file_searchbar_longtail_tags)
	repeat with a from 1 to length of theList
		
		set theCurrentListItem to item a of theList
		setInput(theCurrentListItem)
		activateSearchButton()
		#waitForPageLoad()
		delay 10
		try
			set theResults to getResultsCountFromDOM()
			writeFile(theCurrentListItem & "," & theResults & newLine, false) as text
		on error
			writeFile(theCurrentListItem & "," & "no result" & newLine, false) as text
		end try
	end repeat
end findNumberofListings




###############################################
-- Handler Tests


-- Main Routine
#processBaseKeywordsFile()
#findRelatedKeywords()
findNumberofListings()
