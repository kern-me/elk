FasdUAS 1.101.10   ��   ��    l      ����  i         I      �� ���� *0 enabledguiscripting enabledGUIScripting   ��  o      ���� 0 flag  ��  ��    k     � 	 	  
  
 P       ��  r        A        n        1   
 ��
�� 
sisv  l   
 ����  I   
������
�� .sysosigtsirr   ��� null��  ��  ��  ��    m       �    1 0 . 9  o      ���� *0 mountainlionorolder MountainLionOrOlder  ����
�� consnume��  ��     ��  Z    �  ��   o    ���� *0 mountainlionorolder MountainLionOrOlder  k    ,       l   ��������  ��  ��        l   ��   !��    �� In OS X Mountain Lion 10.8 or earlier, enable GUI Scripting globally by calling this handler and passing 'true' in the flag parameter before your script executes any GUI Scripting commands, or pass 'false' to disable GUI Scripting. Authentication is required only if the value of the 'UI elements enabled' property will be changed. Returns the final setting of 'UI elements enabled' even if unchanged.    ! � " "$   I n   O S   X   M o u n t a i n   L i o n   1 0 . 8   o r   e a r l i e r ,   e n a b l e   G U I   S c r i p t i n g   g l o b a l l y   b y   c a l l i n g   t h i s   h a n d l e r   a n d   p a s s i n g   ' t r u e '   i n   t h e   f l a g   p a r a m e t e r   b e f o r e   y o u r   s c r i p t   e x e c u t e s   a n y   G U I   S c r i p t i n g   c o m m a n d s ,   o r   p a s s   ' f a l s e '   t o   d i s a b l e   G U I   S c r i p t i n g .   A u t h e n t i c a t i o n   i s   r e q u i r e d   o n l y   i f   t h e   v a l u e   o f   t h e   ' U I   e l e m e n t s   e n a b l e d '   p r o p e r t y   w i l l   b e   c h a n g e d .   R e t u r n s   t h e   f i n a l   s e t t i n g   o f   ' U I   e l e m e n t s   e n a b l e d '   e v e n   i f   u n c h a n g e d .   # $ # l   ��������  ��  ��   $  %�� % O    , & ' & k    + ( (  ) * ) l    + , - + I   ������
�� .miscactvnull��� ��� null��  ��   , : 4 brings System Events authentication dialog to front    - � . . h   b r i n g s   S y s t e m   E v e n t s   a u t h e n t i c a t i o n   d i a l o g   t o   f r o n t *  / 0 / r     % 1 2 1 o     !���� 0 flag   2 1   ! $��
�� 
uien 0  3�� 3 L   & + 4 4 1   & *��
�� 
uien��   ' m     5 5�                                                                                  sevs  alis    \  Macintosh HD                   BD ����System Events.app                                              ����            ����  
 cu             CoreServices  0/:System:Library:CoreServices:System Events.app/  $  S y s t e m   E v e n t s . a p p    M a c i n t o s h   H D  -System/Library/CoreServices/System Events.app   / ��  ��  ��    k   / � 6 6  7 8 7 l  / /��������  ��  ��   8  9 : 9 l  / /�� ; <��   ;_Y In OS X Mavericks 10.9 or later, global access is no longer available and GUI Scripting can only be enabled manually on a per-application basis. Pass true to present an alert with a button to open System Preferences and telling the user to select the current application (the application running the script) in the Accessibility list in the Security & Privacy preference's Privacy pane. Authentication is required to unlock the preference. Returns the current setting of 'UI elements enabled' asynchronously, without waiting for System Preferences to open, and tells the user to run the script again.    < � = =�   I n   O S   X   M a v e r i c k s   1 0 . 9   o r   l a t e r ,   g l o b a l   a c c e s s   i s   n o   l o n g e r   a v a i l a b l e   a n d   G U I   S c r i p t i n g   c a n   o n l y   b e   e n a b l e d   m a n u a l l y   o n   a   p e r - a p p l i c a t i o n   b a s i s .   P a s s   t r u e   t o   p r e s e n t   a n   a l e r t   w i t h   a   b u t t o n   t o   o p e n   S y s t e m   P r e f e r e n c e s   a n d   t e l l i n g   t h e   u s e r   t o   s e l e c t   t h e   c u r r e n t   a p p l i c a t i o n   ( t h e   a p p l i c a t i o n   r u n n i n g   t h e   s c r i p t )   i n   t h e   A c c e s s i b i l i t y   l i s t   i n   t h e   S e c u r i t y   &   P r i v a c y   p r e f e r e n c e ' s   P r i v a c y   p a n e .   A u t h e n t i c a t i o n   i s   r e q u i r e d   t o   u n l o c k   t h e   p r e f e r e n c e .   R e t u r n s   t h e   c u r r e n t   s e t t i n g   o f   ' U I   e l e m e n t s   e n a b l e d '   a s y n c h r o n o u s l y ,   w i t h o u t   w a i t i n g   f o r   S y s t e m   P r e f e r e n c e s   t o   o p e n ,   a n d   t e l l s   t h e   u s e r   t o   r u n   t h e   s c r i p t   a g a i n . :  > ? > l  / /��������  ��  ��   ?  @ A @ l  / 9 B C D B O  / 9 E F E r   3 8 G H G 1   3 6��
�� 
uien H o      ���� *0 guiscriptingenabled GUIScriptingEnabled F m   / 0 I I�                                                                                  sevs  alis    \  Macintosh HD                   BD ����System Events.app                                              ����            ����  
 cu             CoreServices  0/:System:Library:CoreServices:System Events.app/  $  S y s t e m   E v e n t s . a p p    M a c i n t o s h   H D  -System/Library/CoreServices/System Events.app   / ��   C 0 * read-only in OS X Mavericks 10.9 or later    D � J J T   r e a d - o n l y   i n   O S   X   M a v e r i c k s   1 0 . 9   o r   l a t e r A  K L K Z   : � M N���� M =  : = O P O o   : ;���� 0 flag   P m   ; <��
�� boovtrue N Z   @ � Q R���� Q H   @ B S S o   @ A���� *0 guiscriptingenabled GUIScriptingEnabled R k   E � T T  U V U I  E J������
�� .miscactvnull��� ��� null��  ��   V  W X W r   K P Y Z Y n   K N [ \ [ 1   L N��
�� 
pnam \ m   K L��
�� misccura Z o      ���� 0 scriptrunner scriptRunner X  ] ^ ] I  Q o�� _ `
�� .sysodisAaleR        TEXT _ b   Q V a b a b   Q T c d c m   Q R e e � f f B G U I   S c r i p t i n g   i s   n o t   e n a b l e d   f o r   d o   R S���� 0 scriptrunner scriptRunner b m   T U g g � h h  . ` �� i j
�� 
mesS i b   W \ k l k b   W Z m n m m   W X o o � p p � O p e n   S y s t e m   P r e f e r e n c e s ,   u n l o c k   t h e   S e c u r i t y   &   P r i v a c y   p r e f e r e n c e ,   s e l e c t   n o   X Y���� 0 scriptrunner scriptRunner l m   Z [ q q � r r �   i n   t h e   P r i v a c y   P a n e ' s   A c c e s s i b i l i t y   l i s t ,   a n d   t h e n   r u n   t h i s   s c r i p t   a g a i n . j �� s t
�� 
btns s J   ] c u u  v w v m   ] ^ x x � y y . O p e n   S y s t e m   P r e f e r e n c e s w  z�� z m   ^ a { { � | |  C a n c e l��   t �� }��
�� 
dflt } m   f i ~ ~ �    C a n c e l��   ^  ��� � Z   p � � ����� � =  p { � � � n   p w � � � 1   s w��
�� 
bhit � 1   p s��
�� 
rslt � m   w z � � � � � . O p e n   S y s t e m   P r e f e r e n c e s � O   ~ � � � � k   � � � �  � � � O  � � � � � I  � ��� ���
�� .miscmvisnull���     **** � 4   � ��� �
�� 
xppa � m   � � � � � � � * P r i v a c y _ A c c e s s i b i l i t y��   � 5   � ��� ���
�� 
xppb � m   � � � � � � � : c o m . a p p l e . p r e f e r e n c e . s e c u r i t y
�� kfrmID   �  ��� � I  � �������
�� .miscactvnull��� ��� null��  ��  ��   � m   ~ � � ��                                                                                  sprf  alis    R  Macintosh HD                   BD ����System Preferences.app                                         ����            ����  
 cu             Applications  &/:Applications:System Preferences.app/  .  S y s t e m   P r e f e r e n c e s . a p p    M a c i n t o s h   H D  #Applications/System Preferences.app   / ��  ��  ��  ��  ��  ��  ��  ��   L  ��� � L   � � � � o   � ����� *0 guiscriptingenabled GUIScriptingEnabled��  ��  ��  ��       �� � ���   � ���� *0 enabledguiscripting enabledGUIScripting � �� ���� � ����� *0 enabledguiscripting enabledGUIScripting�� �� ���  �  ���� 0 flag  ��   � ���������� 0 flag  �� *0 mountainlionorolder MountainLionOrOlder�� *0 guiscriptingenabled GUIScriptingEnabled�� 0 scriptrunner scriptRunner �  ����  5�������� e g�� o q�� x {�� ~�������� � ��� ����� ���
�� .sysosigtsirr   ��� null
�� 
sisv
�� .miscactvnull��� ��� null
�� 
uien
�� misccura
�� 
pnam
�� 
mesS
�� 
btns
�� 
dflt�� 
�� .sysodisAaleR        TEXT
�� 
rslt
�� 
bhit
�� 
xppb
�� kfrmID  
�� 
xppa
�� .miscmvisnull���     ****�� ��g *j �,�E�VO� � *j O�*�,FO*�,EUY �� *�,E�UO�e  s� j*j O��,E�O�%�%��%�%��a lva a a  O_ a ,a   -a  #*a a a 0 *a a /j UO*j UY hY hY hO�ascr  ��ޭ