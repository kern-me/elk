FasdUAS 1.101.10   ��   ��    k             l     ��  ��    1 +-------------------------------------------     � 	 	 V - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -   
  
 l     ��  ��      User Input List     �       U s e r   I n p u t   L i s t      l     ��  ��    1 +-------------------------------------------     �   V - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -   ��  i         I      �������� ,0 getdatafromuserinput getDataFromUserInput��  ��    k    3       r         J     ����    o      ���� 0 thelist theList      l   ��������  ��  ��        T    A     k   
 < ! !  " # " r   
  $ % $ I   
 �� &���� 0 setinput setInput &  '�� ' I    �������� 0 	userinput 	userInput��  ��  ��  ��   % o      ���� 0 thetag theTag #  ( ) ( I    �� *���� $0 insertiteminlist insertItemInList *  + , + o    ���� 0 thetag theTag ,  - . - o    ���� 0 thelist theList .  /�� / m    ���� ��  ��   )  0 1 0 r     * 2 3 2 I     (�� 4���� (0 userprompt2buttons userPrompt2Buttons 4  5 6 5 m   ! " 7 7 � 8 8   A d d   a n o t h e r   t a g ? 6  9 : 9 m   " # ; ; � < <  N o :  =�� = m   # $ > > � ? ?  Y e s��  ��   3 o      ���� 0 userresponse userResponse 1  @ A @ l  + +��������  ��  ��   A  B C B Z   + 6 D E���� D =  + . F G F o   + ,���� 0 userresponse userResponse G m   , -��
�� boovfals E  S   1 2��  ��   C  H I H l  7 7��������  ��  ��   I  J�� J r   7 < K L K n   7 : M N M 1   8 :��
�� 
rvse N o   7 8���� 0 thelist theList L o      ���� 0 thelist theList��     O P O l  B B��������  ��  ��   P  Q R Q r   B G S T S m   B C U U � V V   T 1   C F��
�� 
ppgd R  W X W r   H M Y Z Y n   H K [ \ [ 1   I K��
�� 
leng \ o   H I���� 0 thelist theList Z o      ���� 0 thelistcount theListCount X  ] ^ ] r   N S _ ` _ o   N O���� 0 thelistcount theListCount ` 1   O R��
�� 
ppgt ^  a b a r   T Y c d c m   T U����   d 1   U X��
�� 
ppgc b  e f e r   Z _ g h g m   Z [ i i � j j   h 1   [ ^��
�� 
ppgd f  k l k l  ` `��������  ��  ��   l  m n m Y   ` o�� p q�� o k   n r r  s t s r   n t u v u n   n r w x w 4   o r�� y
�� 
cobj y o   p q���� 0 a   x o   n o���� 0 thelist theList v o      ���� 0 currentitem currentItem t  z { z r   u � | } | b   u � ~  ~ b   u � � � � b   u � � � � b   u � � � � b   u ~ � � � b   u z � � � m   u x � � � � � * G e t t i n g   t a g   d a t a   f o r   � o   x y���� 0 currentitem currentItem � m   z } � � � � �    /   � o   ~ ���� 0 a   � m   � � � � � � �    o f   � o   � ����� 0 thelistcount theListCount  m   � � � � � � �   } 1   � ���
�� 
ppgd {  � � � l  � ���������  ��  ��   �  � � � c   � � � � � I   � ��� ����� 0 setinput setInput �  ��� � o   � ����� 0 currentitem currentItem��  ��   � m   � ���
�� 
ctxt �  � � � r   � � � � � c   � � � � � o   � ����� 0 currentitem currentItem � m   � ���
�� 
ctxt � o      ����  0 currentkeyword currentKeyword �  � � � l  � ���������  ��  ��   �  � � � I   � ��������� ,0 activatesearchbutton activateSearchButton��  ��   �  � � � I   � ��� ����� "0 waitforpageload waitForPageLoad �  ��� � o   � ����� 0 currentitem currentItem��  ��   �  � � � l  � ���������  ��  ��   �  � � � r   � � � � � c   � � � � � I   � ��������� $0 gettotallistings getTotalListings��  ��   � m   � ���
�� 
ctxt � o      ���� 0 totallistings totalListings �  � � � r   � � � � � I   � ��������� 0 getavgreviews getAvgReviews��  ��   � o      ���� 0 
avgreviews 
avgReviews �  � � � l  � ���������  ��  ��   �  � � � Z   � � � ����� � =  � � � � � o   � ����� 0 
avgreviews 
avgReviews � m   � ���
�� boovfals � r   � � � � � m   � � � � � � � " N o   R e s u l t s   F o u n d . � o      ���� 0 
avgreviews 
avgReviews��  ��   �  � � � l  � ���������  ��  ��   �  � � � c   � � � � � I   � ��� ����� 0 	writefile 	writeFile �  � � � b   � � � � � b   � � � � � m   � � � � � � � H T a g , T o t a l   L i s t i n g s , A v e r a g e   R e v i e w s ,   � o   � ����� 0 newline newLine � m   � � � � � � �   �  ��� � m   � ���
�� boovfals��  ��   � m   � ���
�� 
ctxt �  � � � c   � � � � I   � �� ����� 0 	writefile 	writeFile �  � � � b   � � � � � b   � � � � � b   � � � � � b   � � � � � b   � � � � � b   � � � � � o   � ����� 0 currentitem currentItem � m   � � � � � � �  , � o   � ����� 0 totallistings totalListings � m   � � � � � � �  , � o   � ����� 0 
avgreviews 
avgReviews � m   � � � � � � �  , � o   � ����� 0 newline newLine �  ��� � m   � ���
�� boovfals��  ��   � m   ��
�� 
ctxt �  � � � l ��~�}�  �~  �}   �  � � � r  
 � � � o  �|�| 0 a   � 1  	�{
�{ 
ppgc �  ��z � I �y ��x
�y .sysodelanull��� ��� nmbr � m  �w�w �x  �z  �� 0 a   p m   c d�v�v  q l  d i ��u�t � I  d i�s ��r
�s .corecnte****       **** � o   d e�q�q 0 thelist theList�r  �u  �t  ��   n  � � � l �p�o�n�p  �o  �n   �  � � � l �m � ��m   �   Progress Reset    � � � �    P r o g r e s s   R e s e t �  � � � r   �  � m  �l�l    1  �k
�k 
ppgt �  r  ! m  �j�j   1   �i
�i 
ppgc  r  ") m  "%		 �

   1  %(�h
�h 
ppgd �g r  *3 m  *- �   1  -2�f
�f 
ppga�g  ��       �e�e   �d�d ,0 getdatafromuserinput getDataFromUserInput �c �b�a�`�c ,0 getdatafromuserinput getDataFromUserInput�b  �a   
�_�^�]�\�[�Z�Y�X�W�V�_ 0 thelist theList�^ 0 thetag theTag�] 0 userresponse userResponse�\ 0 thelistcount theListCount�[ 0 a  �Z 0 currentitem currentItem�Y  0 currentkeyword currentKeyword�X 0 totallistings totalListings�W 0 
avgreviews 
avgReviews�V 0 newline newLine $�U�T�S 7 ; >�R�Q U�P�O�N�M i�L�K � � � ��J�I�H�G�F � � ��E � � ��D	�C�U 0 	userinput 	userInput�T 0 setinput setInput�S $0 insertiteminlist insertItemInList�R (0 userprompt2buttons userPrompt2Buttons
�Q 
rvse
�P 
ppgd
�O 
leng
�N 
ppgt
�M 
ppgc
�L .corecnte****       ****
�K 
cobj
�J 
ctxt�I ,0 activatesearchbutton activateSearchButton�H "0 waitforpageload waitForPageLoad�G $0 gettotallistings getTotalListings�F 0 getavgreviews getAvgReviews�E 0 	writefile 	writeFile
�D .sysodelanull��� ��� nmbr
�C 
ppga�`4jvE�O ;hZ**j+  k+ E�O*��km+ O*���m+ E�O�f  Y hO��,E�[OY��O�*�,FO��,E�O�*�,FOj*�,FO�*�,FO �k�j kh ��/E�Oa �%a %�%a %�%a %*�,FO*�k+ a &O�a &E�O*j+ O*�k+ O*j+ a &E�O*j+ E�O�f  
a E�Y hO*a �%a %fl+ a &O*�a %�%a %�%a %�%fl+ a &O�*�,FOkj  [OY�XOj*�,FOj*�,FOa !*�,FOa "*a #,Fascr  ��ޭ