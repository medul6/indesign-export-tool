FasdUAS 1.101.10   ��   ��    k             l     ��  ��      ExportTool for InDesign     � 	 	 0   E x p o r t T o o l   f o r   I n D e s i g n   
  
 l     ��  ��      version 1.9.2.9     �       v e r s i o n   1 . 9 . 2 . 9      l     ��������  ��  ��        l     ��  ��    , & created by medul6, Michael Heck, 2012     �   L   c r e a t e d   b y   m e d u l 6 ,   M i c h a e l   H e c k ,   2 0 1 2      l     ��  ��    �  open sourced on September 7th, 2012 on Github > check the LICENSE.txt and README.md in the repository for detailed information     �   �   o p e n   s o u r c e d   o n   S e p t e m b e r   7 t h ,   2 0 1 2   o n   G i t h u b   >   c h e c k   t h e   L I C E N S E . t x t   a n d   R E A D M E . m d   i n   t h e   r e p o s i t o r y   f o r   d e t a i l e d   i n f o r m a t i o n      l     ��  ��    5 / https://github.com/medul6/indesign-export-tool     �   ^   h t t p s : / / g i t h u b . c o m / m e d u l 6 / i n d e s i g n - e x p o r t - t o o l     !   l     ��������  ��  ��   !  " # " l     �� $ %��   $ z t �������������������������������������������������������������������������������������������������������������������    % � & & �   " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " #  ' ( ' l     ��������  ��  ��   (  ) * ) l     �� + ,��   +   global variables    , � - - "   g l o b a l   v a r i a b l e s *  . / . p       0 0 ������  0 activedocument activeDocument��   /  1 2 1 p       3 3 ������ 0 opendocuments openDocuments��   2  4 5 4 p       6 6 ������ 0 activewindow activeWindow��   5  7 8 7 p       9 9 ������ ,0 pdfpresetsoncomputer pdfPresetsOnComputer��   8  : ; : p       < < ������ (0 preservedpagerange preservedPageRange��   ;  = > = p       ? ? ������ 0 stopbool stopBool��   >  @ A @ p       B B ������ 0 splittedrange splittedRange��   A  C D C l     ��������  ��  ��   D  E F E p       G G ������ 0 textoverflows textOverflows��   F  H I H l     ��������  ��  ��   I  J K J l     �� L M��   L  test variables!!!    M � N N " t e s t   v a r i a b l e s ! ! ! K  O P O l     �� Q R��   Q  global filePath    R � S S  g l o b a l   f i l e P a t h P  T U T l     �� V W��   V  global chosenPresetText    W � X X . g l o b a l   c h o s e n P r e s e t T e x t U  Y Z Y l     �� [ \��   [  global docName    \ � ] ]  g l o b a l   d o c N a m e Z  ^ _ ^ l     �� ` a��   `  global newFilePath    a � b b $ g l o b a l   n e w F i l e P a t h _  c d c l     �� e f��   e  global pathItems    f � g g   g l o b a l   p a t h I t e m s d  h i h l     �� j k��   j  global pageRange    k � l l   g l o b a l   p a g e R a n g e i  m n m l     �� o p��   o  global newdocName    p � q q " g l o b a l   n e w d o c N a m e n  r s r l     �� t u��   t  global failedLinks    u � v v $ g l o b a l   f a i l e d L i n k s s  w x w l     �� y z��   y  global textOverflows    z � { { ( g l o b a l   t e x t O v e r f l o w s x  | } | l     �� ~ ��   ~  global modifiedLinks     � � � ( g l o b a l   m o d i f i e d L i n k s }  � � � l     �� � ���   �  global missingLinks    � � � � & g l o b a l   m i s s i n g L i n k s �  � � � l     �� � ���   �  global exportPreset    � � � � & g l o b a l   e x p o r t P r e s e t �  � � � l     ��������  ��  ��   �  � � � l     �� � ���   �  properties!    � � � �  p r o p e r t i e s ! �  � � � j     �� ���  0 functionchoice functionChoice � J      � �  ��� � m      � � � � �  P D F - E x p o r t��   �  � � � j    	�� ��� 0 chosenpreset chosenPreset � J     � �  ��� � m     � � � � �  s k - S c r e e n��   �  � � � j   
 �� ��� 0 	pagerange 	pageRange � m   
  � � � � �  a l l   p a g e s �  � � � l     ��������  ��  ��   �  � � � l     �� � ���   � z t �������������������������������������������������������������������������������������������������������������������    � � � � �   " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " �  � � � l     ��������  ��  ��   �  � � � l    U ����� � O     U � � � k    T � �  � � � l   ��������  ��  ��   �  � � � l   �� � ���   � C = set up some informations from the current state as variables    � � � � z   s e t   u p   s o m e   i n f o r m a t i o n s   f r o m   t h e   c u r r e n t   s t a t e   a s   v a r i a b l e s �  � � � r     � � � 1    ��
�� 
pacd � o      ����  0 activedocument activeDocument �  � � � r     � � � 1    ��
�� 
pacw � o      ���� 0 activewindow activeWindow �  � � � l   �� � ���   � ) #set openDocuments to every document    � � � � F s e t   o p e n D o c u m e n t s   t o   e v e r y   d o c u m e n t �  � � � r    " � � � 6     � � � 2    ��
�� 
docu � =    � � � 1    ��
�� 
pvis � m    ��
�� boovtrue � o      ���� 0 opendocuments openDocuments �  � � � l  # #��������  ��  ��   �  � � � l  # #�� � ���   � � � only pdf presets are captured that are not build in. we have our own! remove the whose clause to show all of them, or modify the whose clause to show only them.    � � � �B   o n l y   p d f   p r e s e t s   a r e   c a p t u r e d   t h a t   a r e   n o t   b u i l d   i n .   w e   h a v e   o u r   o w n !   r e m o v e   t h e   w h o s e   c l a u s e   t o   s h o w   a l l   o f   t h e m ,   o r   m o d i f y   t h e   w h o s e   c l a u s e   t o   s h o w   o n l y   t h e m . �  � � � r   # 4 � � � 6  # 2 � � � n   # ( � � � 1   & (��
�� 
pnam � 2   # &��
�� 
PFst � H   ) 1 � � E   ) 0 � � � 1   * ,��
�� 
pnam � m   - / � � � � �  [ � o      ���� ,0 pdfpresetsoncomputer pdfPresetsOnComputer �  � � � l  5 5��������  ��  ��   �  � � � n  5 : � � � I   6 :�������� 0 	linkcheck 	linkCheck��  ��   �  f   5 6 �  � � � n  ; @ � � � I   < @�������� &0 textoverflowcheck textOverflowCheck��  ��   �  f   ; < �  � � � l  A A��������  ��  ��   �  � � � Z   A R � ����� � =  A F � � � o   A D���� 0 stopbool stopBool � m   D E��
�� boovtrue � n  I N � � � I   J N�������� "0 functionchooser functionChooser��  ��   �  f   I J��  ��   �  ��� � l  S S��������  ��  ��  ��   � 5     �� ���
�� 
capp � m     � � � � � $ c o m . a d o b e . I n D e s i g n
�� kfrmID  ��  ��   �  � � � l     ��������  ��  ��   �  � � � l     �� ��    z t �������������������������������������������������������������������������������������������������������������������    � �   " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " �  l     ��������  ��  ��    i     I      �������� "0 functionchooser functionChooser��  ��   k     h		 

 r      I    ��
�� .gtqpchltns    @   @ ns   J       m      � 2 P D F - E x p o r t   ( E i n z e l s e i t e n )  m     � . P D F - E x p o r t   ( M e h r s e i t i g ) �� m     �  I D M L - E x p o r t��   �
� 
inSL o    �~�~  0 functionchoice functionChoice �}
�} 
prmp m       �!!   F u n k t i o n   w � h l e n : �|"�{
�| 
okbt" m    ## �$$  W e i t e r !�{   o      �z�z  0 functionchoice functionChoice %&% l   �y�x�w�y  �x  �w  & '(' Z    f)*+�v) =    #,-, l   .�u�t. o    �s�s  0 functionchoice functionChoice�u  �t  - J    "// 0�r0 m     11 �22 2 P D F - E x p o r t   ( E i n z e l s e i t e n )�r  * n   & 0343 I   ' 0�q5�p�q .0 pdfexportersinglepage pdfExporterSinglepage5 6�o6 o   ' ,�n�n  0 functionchoice functionChoice�o  �p  4  f   & '+ 787 =   3 <9:9 l  3 8;�m�l; o   3 8�k�k  0 functionchoice functionChoice�m  �l  : J   8 ;<< =�j= m   8 9>> �?? . P D F - E x p o r t   ( M e h r s e i t i g )�j  8 @A@ n   ? IBCB I   @ I�iD�h�i ,0 pdfexportermultipage pdfExporterMultipageD E�gE o   @ E�f�f  0 functionchoice functionChoice�g  �h  C  f   ? @A FGF =   L UHIH l  L QJ�e�dJ o   L Q�c�c  0 functionchoice functionChoice�e  �d  I J   Q TKK L�bL m   Q RMM �NN  I D M L - E x p o r t�b  G O�aO n   X bPQP I   Y b�`R�_�` 0 idmlexporter idmlExporterR S�^S o   Y ^�]�]  0 functionchoice functionChoice�^  �_  Q  f   X Y�a  �v  ( T�\T l  g g�[�Z�Y�[  �Z  �Y  �\   UVU l     �X�W�V�X  �W  �V  V WXW l     �UYZ�U  Y z t �������������������������������������������������������������������������������������������������������������������   Z �[[ �   " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " "X \]\ l     �T�S�R�T  �S  �R  ] ^_^ i    `a` I      �Qb�P�Q .0 pdfexportersinglepage pdfExporterSinglepageb c�Oc o      �N�N  0 functionchoice functionChoice�O  �P  a k    *dd efe r     ghg c     iji b     klk o     �M�M  0 functionchoice functionChoicel m    mm �nn  !j m    �L
�L 
ctxth o      �K�K 0 
buttonname 
buttonNamef opo r    qrq I   �Jst
�J .gtqpchltns    @   @ ns  s o    	�I�I ,0 pdfpresetsoncomputer pdfPresetsOnComputert �Huv
�H 
inSLu o   
 �G�G 0 chosenpreset chosenPresetv �Fwx
�F 
prmpw m    yy �zz $ P D F - P r e s e t   w � h l e n :x �E{�D
�E 
okbt{ o    �C�C 0 
buttonname 
buttonName�D  r o      �B�B 0 chosenpreset chosenPresetp |�A| Z   *}~�@�?} >   %� o    #�>�> 0 chosenpreset chosenPreset� m   # $�=
�= boovfals~ k   (&�� ��� I  ( 7�<��
�< .sysodlogaskr        TEXT� b   ( -��� b   ( +��� m   ( )�� ��� N W e l c h e   S e i t e n   s o l l e n   e x p o r t i e r t   w e r d e n ?� o   ) *�;
�; 
ret � m   + ,�� ��� f N U R   k o m m a g e s t r e n n t e   W e r t e   e i n t r a g e n !   z . B .   ' 1 , 2 , 5 , 6 '� �:��9
�: 
dtxt� o   . 3�8�8 0 	pagerange 	pageRange�9  � ��� r   8 =��� l  8 ;��7�6� n   8 ;��� 1   9 ;�5
�5 
ttxt� 1   8 9�4
�4 
rslt�7  �6  � o      �3�3 0 
inputrange 
inputRange� ��� r   > E��� o   > ?�2�2 0 
inputrange 
inputRange� o      �1�1 0 	pagerange 	pageRange� ��� l  F F�0�/�.�0  �/  �.  � ��� I   F L�-��,�- (0 inputrangesplitter inputRangeSplitter� ��+� o   G H�*�* 0 
inputrange 
inputRange�+  �,  � ��� l  M M�)�(�'�)  �(  �'  � ��� l  M M�&���&  � 9 3hier sollte die splittedRange noch gecleaned werden   � ��� f h i e r   s o l l t e   d i e   s p l i t t e d R a n g e   n o c h   g e c l e a n e d   w e r d e n� ��� l  M M�%���%  � , &my splittedRangeCleaner(splittedRange)   � ��� L m y   s p l i t t e d R a n g e C l e a n e r ( s p l i t t e d R a n g e )� ��� l  M M�$�#�"�$  �#  �"  � ��� O   M ���� k   [ ��� ��� l  [ [�!� ��!  �   �  � ��� Y   [ ������� l  k ����� k   k ��� ��� l  k k����  �  �  � ��� n  k x��� I   l x���� 0 
pageranger 
pageRanger� ��� n  l t��� 4   o t��
� 
cobj� o   r s�� 0 x  � o   l o�� 0 splittedrange splittedRange�  �  �  f   k l� ��� l  y y����  �  �  � ��� r   y ���� n   y ���� 1   | ��
� 
pnam� o   y |��  0 activedocument activeDocument� o      �� 0 docname docName� ��� r   � ���� n  � ���� I   � ����� ,0 fileextensionremover fileExtensionRemover� ��� o   � ��
�
 0 docname docName�  �  �  f   � �� o      �	�	 0 
newdocname 
newdocName� ��� r   � ���� l  � ����� c   � ���� n   � ���� 1   � ��
� 
path� o   � ���  0 activedocument activeDocument� m   � ��
� 
TEXT�  �  � o      �� 0 filepath filePath� ��� r   � ���� 4   � ���
� 
PFst� l  � ���� � c   � ���� o   � ����� 0 chosenpreset chosenPreset� m   � ���
�� 
TEXT�  �   � o      ���� 0 exportpreset exportPreset� ��� l  � ���������  ��  ��  � ��� I  � �����
�� .K2  exAscBKT        docu� o   � �����  0 activedocument activeDocument� ����
�� 
exft� m   � ���
�� eXftt_PD� ����
�� 
kfil� l  � ������� b   � ���� b   � ���� b   � ���� b   � ���� o   � ����� 0 filepath filePath� o   � ����� 0 
newdocname 
newdocName� m   � ��� ���    s� l  � ������� n  � �   4   � ���
�� 
cobj o   � ����� 0 x   o   � ����� 0 splittedrange splittedRange��  ��  � m   � � �  . p d f��  ��  � ��
�� 
usng o   � ����� 0 exportpreset exportPreset ����
�� 
imot m   � ���
�� boovfals��  � �� l  � ���������  ��  ��  ��  � &   this iterates through all pages   � �		 @   t h i s   i t e r a t e s   t h r o u g h   a l l   p a g e s� 0 x  � m   ^ _���� � I  _ f��
��
�� .corecnte****       ****
 o   _ b���� 0 splittedrange splittedRange��  �  �  l  � ���������  ��  ��    l  � ���������  ��  ��    O   � � l  � � r   � � o   � ����� (0 preservedpagerange preservedPageRange 1   � ���
�� 
pcty * $ always restore original preferences    � H   a l w a y s   r e s t o r e   o r i g i n a l   p r e f e r e n c e s 1   � ���
�� 
DFpf  l  � ���������  ��  ��    l  � �����    wait for all tasks    � $ w a i t   f o r   a l l   t a s k s  ��  l  � ���������  ��  ��  ��  � 5   M X��!��
�� 
capp! m   Q T"" �## $ c o m . a d o b e . I n D e s i g n
�� kfrmID  � $%$ l  � ���������  ��  ��  % &'& Z   �$()����( >  �*+* o   � ����� 0 chosenpreset chosenPreset+ J   �,, -��- m   � �.. �//  s k - T e m p o r � r��  ) k   00 121 l ��34��  3  my displayTheEnd()   4 �55 $ m y   d i s p l a y T h e E n d ( )2 676 l ��89��  8 T Nmy displayNotificationShort("PDF Export gestartet", "Dokument: " & newdocName)   9 �:: � m y   d i s p l a y N o t i f i c a t i o n S h o r t ( " P D F   E x p o r t   g e s t a r t e t " ,   " D o k u m e n t :   "   &   n e w d o c N a m e )7 ;��; n  <=< I   ��>���� 20 displaynotificationlong displayNotificationLong> ?@? m  	AA �BB ( P D F   E x p o r t   g e s t a r t e t@ CDC l 	E����E c  	FGF l 	H����H n  	IJI 4  ��K
�� 
cobjK m  ���� J o  	���� 0 chosenpreset chosenPreset��  ��  G m  ��
�� 
TEXT��  ��  D L��L b  MNM m  OO �PP  D o k u m e n t :  N o  ���� 0 
newdocname 
newdocName��  ��  =  f  ��  ��  ��  ' Q��Q l %%��������  ��  ��  ��  �@  �?  �A  _ RSR l     ��������  ��  ��  S TUT l     ��VW��  V z t �������������������������������������������������������������������������������������������������������������������   W �XX �   " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " "U YZY l     ��������  ��  ��  Z [\[ i    ]^] I      ��_���� ,0 pdfexportermultipage pdfExporterMultipage_ `��` o      ����  0 functionchoice functionChoice��  ��  ^ k    �aa bcb r     ded c     fgf b     hih o     ����  0 functionchoice functionChoicei m    jj �kk  !g m    ��
�� 
ctxte o      ���� 0 
buttonname 
buttonNamec lml r    non I   ��pq
�� .gtqpchltns    @   @ ns  p o    	���� ,0 pdfpresetsoncomputer pdfPresetsOnComputerq ��rs
�� 
inSLr o   
 ���� 0 chosenpreset chosenPresets ��tu
�� 
prmpt m    vv �ww $ P D F - P r e s e t   w � h l e n :u ��x��
�� 
okbtx o    ���� 0 
buttonname 
buttonName��  o o      ���� 0 chosenpreset chosenPresetm yzy Z    v{|��}{ >   %~~ o    #���� 0 chosenpreset chosenPreset m   # $��
�� boovfals| k   ( j�� ��� l  ( (������  � 1 +if chosenPreset is not {"sk-Tempor�r"} then   � ��� V i f   c h o s e n P r e s e t   i s   n o t   { " s k - T e m p o r � r " }   t h e n� ��� I  ( B����
�� .sysodlogaskr        TEXT� b   ( -��� b   ( +��� m   ( )�� ��� N W e l c h e   S e i t e n   s o l l e n   e x p o r t i e r t   w e r d e n ?� o   ) *��
�� 
ret � m   + ,�� ��� : ( W e n n   a l l e ,   d a n n   ' a l l   p a g e s ' )� ����
�� 
dtxt� o   . 3���� 0 	pagerange 	pageRange� ����
�� 
btns� J   4 8�� ��� m   4 5�� ���  A l l   P a g e s� ���� m   5 6�� ���  W e i t e r !��  � �����
�� 
dflt� m   ; >�� ���  W e i t e r !��  � ���� Z   C j������ =  C N��� n   C J��� 1   F J��
�� 
bhit� 1   C F��
�� 
rslt� m   J M�� ���  W e i t e r !� r   Q ^��� l  Q X������ n   Q X��� 1   T X��
�� 
ttxt� 1   Q T��
�� 
rslt��  ��  � o      ���� 0 	pagerange 	pageRange��  � r   a j��� m   a d�� ���  a l l   p a g e s� o      ���� 0 	pagerange 	pageRange��  ��  } r   m v��� m   m p�� ���  a l l   p a g e s� o      ���� 0 	pagerange 	pageRangez ��� l  w w��������  ��  ��  � ��� n  w ���� I   x ������� 0 
pageranger 
pageRanger� ��~� o   x }�}�} 0 	pagerange 	pageRange�~  �  �  f   w x� ��� l  � ��|�{�z�|  �{  �z  � ��� O   �V��� k   �U�� ��� l  � ��y�x�w�y  �x  �w  � ��� Y   �@��v���u� l  �;���� k   �;�� ��� l  � ��t�s�r�t  �s  �r  � ��� r   � ���� n   � ���� 1   � ��q
�q 
pnam� n  � ���� 4   � ��p�
�p 
cobj� o   � ��o�o 0 x  � o   � ��n�n 0 opendocuments openDocuments� o      �m�m 0 docname docName� ��� r   � ���� n  � ���� I   � ��l��k�l ,0 fileextensionremover fileExtensionRemover� ��j� o   � ��i�i 0 docname docName�j  �k  �  f   � �� o      �h�h 0 
newdocname 
newdocName� ��� r   � ���� l  � ���g�f� c   � ���� n   � ���� 1   � ��e
�e 
path� n  � ���� 4   � ��d�
�d 
cobj� o   � ��c�c 0 x  � o   � ��b�b 0 opendocuments openDocuments� m   � ��a
�a 
TEXT�g  �f  � o      �`�` 0 filepath filePath� ��� r   � ���� 4   � ��_�
�_ 
PFst� l  � ���^�]� c   � ���� o   � ��\�\ 0 chosenpreset chosenPreset� m   � ��[
�[ 
TEXT�^  �]  � o      �Z�Z 0 exportpreset exportPreset� ��� l  � ��Y�X�W�Y  �X  �W  � ��� Z   �9���V�� =  � �   o   � ��U�U 0 chosenpreset chosenPreset J   � � �T m   � � �  s k - T e m p o r � r�T  � k   �  l  � ��S	
�S  	 M G this is temporarily disabled, because it just doesn't work that way :)   
 � �   t h i s   i s   t e m p o r a r i l y   d i s a b l e d ,   b e c a u s e   i t   j u s t   d o e s n ' t   w o r k   t h a t   w a y   : )  l  � ��R�R   � �asynchronous export file openDocuments's item x format PDF type to (filePath & newdocName & ".pdf") using exportPreset showing options yes    � a s y n c h r o n o u s   e x p o r t   f i l e   o p e n D o c u m e n t s ' s   i t e m   x   f o r m a t   P D F   t y p e   t o   ( f i l e P a t h   &   n e w d o c N a m e   &   " . p d f " )   u s i n g   e x p o r t P r e s e t   s h o w i n g   o p t i o n s   y e s �Q I  ��P
�P .K2  exAscBKT        docu n  � � 4   � ��O
�O 
cobj o   � ��N�N 0 x   o   � ��M�M 0 opendocuments openDocuments �L
�L 
exft m   � ��K
�K eXftt_PD �J
�J 
kfil l  ��I�H b   � b   � � o   � ��G�G 0 filepath filePath o   � ��F�F 0 
newdocname 
newdocName m   �   �!!  . p d f�I  �H   �E"#
�E 
usng" o  �D�D 0 exportpreset exportPreset# �C$�B
�C 
imot$ m  	
�A
�A boovfals�B  �Q  �V  � I 9�@%&
�@ .K2  exAscBKT        docu% n '(' 4  �?)
�? 
cobj) o  �>�> 0 x  ( o  �=�= 0 opendocuments openDocuments& �<*+
�< 
exft* m  !�;
�; eXftt_PD+ �:,-
�: 
kfil, l $+.�9�8. b  $+/0/ b  $'121 o  $%�7�7 0 filepath filePath2 o  %&�6�6 0 
newdocname 
newdocName0 m  '*33 �44  . p d f�9  �8  - �556
�5 
usng5 o  ./�4�4 0 exportpreset exportPreset6 �37�2
�3 
imot7 m  23�1
�1 boovfals�2  � 8�08 l ::�/�.�-�/  �.  �-  �0  � / ) this iterates through all open documents   � �99 R   t h i s   i t e r a t e s   t h r o u g h   a l l   o p e n   d o c u m e n t s�v 0 x  � m   � ��,�, � I  � ��+:�*
�+ .corecnte****       ****: o   � ��)�) 0 opendocuments openDocuments�*  �u  � ;<; l AA�(�'�&�(  �'  �&  < =>= l AA�%�$�#�%  �$  �#  > ?@? O  ASABA l IRCDEC r  IRFGF o  IL�"�" (0 preservedpagerange preservedPageRangeG 1  LQ�!
�! 
pctyD * $ always restore original preferences   E �HH H   a l w a y s   r e s t o r e   o r i g i n a l   p r e f e r e n c e sB 1  AF� 
�  
DFpf@ IJI l TT����  �  �  J KLK l TT�MN�  M  wait for all tasks   N �OO $ w a i t   f o r   a l l   t a s k sL P�P l TT����  �  �  �  � 5   � ��Q�
� 
cappQ m   � �RR �SS $ c o m . a d o b e . I n D e s i g n
� kfrmID  � TUT l WW����  �  �  U VWV Z  W�XY��X > WbZ[Z o  W\�� 0 chosenpreset chosenPreset[ J  \a\\ ]�] m  \_^^ �__  s k - T e m p o r � r�  Y k  e�`` aba l ee�cd�  c  my displayTheEnd()   d �ee $ m y   d i s p l a y T h e E n d ( )b fgf l ee�hi�  h x rmy displayNotificationShort("PDF Export gestartet", ((count openDocuments) as string) & " Dokument(e) exportiert")   i �jj � m y   d i s p l a y N o t i f i c a t i o n S h o r t ( " P D F   E x p o r t   g e s t a r t e t " ,   ( ( c o u n t   o p e n D o c u m e n t s )   a s   s t r i n g )   &   "   D o k u m e n t ( e )   e x p o r t i e r t " )g k�k n e�lml I  f��n�
� 20 displaynotificationlong displayNotificationLongn opo m  fiqq �rr ( P D F   E x p o r t   g e s t a r t e tp sts l iwu�	�u c  iwvwv l isx��x n  isyzy 4  ns�{
� 
cobj{ m  qr�� z o  in�� 0 chosenpreset chosenPreset�  �  w m  sv�
� 
TEXT�	  �  t |�| b  w�}~} l w�� �� c  w���� l w~������ I w~�����
�� .corecnte****       ****� o  wz���� 0 opendocuments openDocuments��  ��  ��  � m  ~���
�� 
TEXT�   ��  ~ m  ���� ��� .   D o k u m e n t ( e )   e x p o r t i e r t�  �
  m  f  ef�  �  �  W ��� l ����������  ��  ��  � ���� l ��������  �  end if   � ���  e n d   i f��  \ ��� l     ��������  ��  ��  � ��� l     ������  � z t �������������������������������������������������������������������������������������������������������������������   � ��� �   " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " "� ��� l     ��������  ��  ��  � ��� i    ��� I      ������� 0 idmlexporter idmlExporter� ���� o      ����  0 functionchoice functionChoice��  ��  � k     b�� ��� O     K��� Y    J�������� l   E���� k    E�� ��� l   ��������  ��  ��  � ��� r    ��� n    ��� 1    ��
�� 
pnam� n   ��� 4    ���
�� 
cobj� o    ���� 0 x  � o    ���� 0 opendocuments openDocuments� o      ���� 0 docname docName� ��� r    '��� n   %��� I     %������� ,0 fileextensionremover fileExtensionRemover� ���� o     !���� 0 docname docName��  ��  �  f     � o      ���� 0 
newdocname 
newdocName� ��� r   ( 2��� l  ( 0������ c   ( 0��� n   ( .��� 1   , .��
�� 
path� n  ( ,��� 4   ) ,���
�� 
cobj� o   * +���� 0 x  � o   ( )���� 0 opendocuments openDocuments� m   . /��
�� 
TEXT��  ��  � o      ���� 0 filepath filePath� ��� l  3 3��������  ��  ��  � ��� I  3 C����
�� .K2  exAscBKT        docu� n  3 7��� 4   4 7���
�� 
cobj� o   5 6���� 0 x  � o   3 4���� 0 opendocuments openDocuments� ����
�� 
exft� m   8 9��
�� eXftidml� �����
�� 
kfil� l  : ?������ b   : ?��� b   : =��� o   : ;���� 0 filepath filePath� o   ; <���� 0 
newdocname 
newdocName� m   = >�� ��� 
 . i d m l��  ��  ��  � ���� l  D D��������  ��  ��  ��  � / ) this iterates through all open documents   � ��� R   t h i s   i t e r a t e s   t h r o u g h   a l l   o p e n   d o c u m e n t s�� 0 x  � m    ���� � I   �����
�� .corecnte****       ****� o    ���� 0 opendocuments openDocuments��  ��  � 5     �����
�� 
capp� m    �� ��� $ c o m . a d o b e . I n D e s i g n
�� kfrmID  � ��� l  L L������  �  my displayTheEnd()   � ��� $ m y   d i s p l a y T h e E n d ( )� ��� l  L L������  � y smy displayNotificationShort("IDML Export gestartet", ((count openDocuments) as string) & " Dokument(e) exportiert")   � ��� � m y   d i s p l a y N o t i f i c a t i o n S h o r t ( " I D M L   E x p o r t   g e s t a r t e t " ,   ( ( c o u n t   o p e n D o c u m e n t s )   a s   s t r i n g )   &   "   D o k u m e n t ( e )   e x p o r t i e r t " )� ���� n  L b��� I   M b������� 20 displaynotificationlong displayNotificationLong� ��� m   M P�� ��� * I D M L   E x p o r t   g e s t a r t e t� ��� m   P S�� ���  S u b t i t l e   t e x t� ���� b   S ^��� l  S Z������ c   S Z��� l  S X������ I  S X�����
�� .corecnte****       ****� o   S T���� 0 opendocuments openDocuments��  ��  ��  � m   X Y��
�� 
TEXT��  ��  � m   Z ]�� ��� .   D o k u m e n t ( e )   e x p o r t i e r t��  ��  �  f   L M��  � � � l     ��������  ��  ��     l     ����   z t �������������������������������������������������������������������������������������������������������������������    � �   " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " "  l     ��������  ��  ��   	 i     

 I      ������ ,0 fileextensionremover fileExtensionRemover �� o      ���� 0 docname docName��  ��   k     E  l     r      n     1    ��
�� 
txdl 1     ��
�� 
ascr o      ���� 0 olddelimiters oldDelimiters * $ always preserve original delimiters    � H   a l w a y s   p r e s e r v e   o r i g i n a l   d e l i m i t e r s  r     J    	 �� m     �    .��   n     !"! 1   
 ��
�� 
txdl" 1   	 
��
�� 
ascr #$# r    %&% n    '(' 2   ��
�� 
citm( l   )����) c    *+* o    ���� 0 docname docName+ m    ��
�� 
ctxt��  ��  & o      ���� 0 	pathitems 	pathItems$ ,-, Z    6./��0. ?    121 l   3����3 I   ��4��
�� .corecnte****       ****4 o    ���� 0 	pathitems 	pathItems��  ��  ��  2 m    55 �66  2/ r     -787 n     +9:9 7  ! +��;<
�� 
cobj; m   % '���� < m   ( *������: o     !���� 0 	pathitems 	pathItems8 o      ���� 0 	pathitems 	pathItems��  0 r   0 6=>= n   0 4?@? 4   1 4��A
�� 
cobjA m   2 3���� @ o   0 1���� 0 	pathitems 	pathItems> o      ���� 0 	pathitems 	pathItems- BCB r   7 <DED c   7 :FGF o   7 8���� 0 	pathitems 	pathItemsG m   8 9��
�� 
TEXTE o      ���� 0 
newdocname 
newdocNameC HIH l  = BJKLJ r   = BMNM o   = >���� 0 olddelimiters oldDelimitersN n     OPO 1   ? A��
�� 
txdlP 1   > ?�
� 
ascrK ) # always restore original delimiters   L �QQ F   a l w a y s   r e s t o r e   o r i g i n a l   d e l i m i t e r sI R�~R L   C ESS o   C D�}�} 0 
newdocname 
newdocName�~  	 TUT l     �|�{�z�|  �{  �z  U VWV l     �yXY�y  X z t �������������������������������������������������������������������������������������������������������������������   Y �ZZ �   " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " "W [\[ l     �x�w�v�x  �w  �v  \ ]^] i   ! $_`_ I      �ua�t�u 0 
pageranger 
pageRangera b�sb o      �r�r 0 	pagerange 	pageRange�s  �t  ` O     "cdc k    !ee fgf O    hih l   jklj r    mnm 1    �q
�q 
pctyn o      �p�p (0 preservedpagerange preservedPageRangek , & always preserve original preferences    l �oo L   a l w a y s   p r e s e r v e   o r i g i n a l   p r e f e r e n c e s  i 1    �o
�o 
DFpfg pqp l   �n�m�l�n  �m  �l  q r�kr O    !sts r     uvu o    �j�j 0 	pagerange 	pageRangev 1    �i
�i 
pctyt 1    �h
�h 
DFpf�k  d 5     �gw�f
�g 
cappw m    xx �yy $ c o m . a d o b e . I n D e s i g n
�f kfrmID  ^ z{z l     �e�d�c�e  �d  �c  { |}| l     �b~�b  ~ z t �������������������������������������������������������������������������������������������������������������������    ��� �   " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " "} ��� l     �a�`�_�a  �`  �_  � ��� l     �^���^  � z t �������������������������������������������������������������������������������������������������������������������   � ��� �   " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " "� ��� l     �]�\�[�]  �\  �[  � ��� i   % (��� I      �Z�Y�X�Z 0 	linkcheck 	linkCheck�Y  �X  � O     ���� k    ��� ��� l   �W�V�U�W  �V  �U  � ��� r    ��� m    	�T
�T boovtrue� o      �S�S 0 stopbool stopBool� ��� r    ��� m    �R
�R boovtrue� o      �Q�Q 0 linkcheckbool linkCheckBool� ��� l   �P�O�N�P  �O  �N  � ��� Y    ���M���L� k    ��� ��� l   �K���K  � $ out of date/missing link check   � ��� < o u t   o f   d a t e / m i s s i n g   l i n k   c h e c k� ��� r    /��� l   -��J�I� 6   -��� n    $��� 2   " $�H
�H 
clnk� n   "��� 4    "�G�
�G 
cobj� o     !�F�F 0 x  � o    �E�E 0 opendocuments openDocuments� E   % ,��� 1   & (�D
�D 
stts� m   ) +�C
�C sttelmis�J  �I  � o      �B�B 0 missinglinks missingLinks� ��� r   0 A��� l  0 ?��A�@� 6  0 ?��� n   0 6��� 2   4 6�?
�? 
clnk� n  0 4��� 4   1 4�>�
�> 
cobj� o   2 3�=�= 0 x  � o   0 1�<�< 0 opendocuments openDocuments� E   7 >��� 1   8 :�;
�; 
stts� m   ; =�:
�: sttelood�A  �@  � o      �9�9 0 modifiedlinks modifiedLinks� ��� r   B G��� b   B E��� o   B C�8�8 0 missinglinks missingLinks� o   C D�7�7 0 modifiedlinks modifiedLinks� o      �6�6 0 failedlinks failedLinks� ��� Z   H Y���5�4� >  H O��� l  H M��3�2� I  H M�1��0
�1 .corecnte****       ****� o   H I�/�/ 0 failedlinks failedLinks�0  �3  �2  � m   M N�.�.  � r   R U��� m   R S�-
�- boovfals� o      �,�, 0 linkcheckbool linkCheckBool�5  �4  � ��� Z   Z ����+�*� =  Z ]��� o   Z [�)�) 0 linkcheckbool linkCheckBool� m   [ \�(
�( boovfals� I  ` ��'��
�' .sysodlogaskr        TEXT� b   ` z��� b   ` v��� b   ` t��� b   ` p��� b   ` n��� b   ` g��� b   ` e��� b   ` c��� m   ` a�� ��� ^ D o k u m e n t   h a t   m o d i f i z i e r t e   o d e r   f e h l e n d e   L i n k s !  � o   a b�&
�& 
ret � m   c d�� ��� R - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -� o   e f�%
�% 
ret � l  g m��$�#� n   g m��� 1   k m�"
�" 
pnam� n  g k��� 4   h k�!�
�! 
cobj� o   i j� �  0 x  � o   g h�� 0 opendocuments openDocuments�$  �#  � o   n o�
� 
ret � m   p s�� ��� R - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -� o   t u�
� 
ret � m   v y�� ��� J h a t   m o d i f i z i e r t e   o d e r   f e h l e n d e   L i n k s !� ���
� 
btns� J   } ��� ��� m   } ��� �   
 S t o p !� � m   � � �  W e i t e r !�  � ��
� 
dflt m   � � �  W e i t e r !�  �+  �*  � � Q   � �	� Z   � �
��
 =  � � n   � � 1   � ��
� 
bhit 1   � ��
� 
rslt m   � � � 
 S t o p ! r   � � m   � ��
� boovfals o      �� 0 stopbool stopBool�  �  	 R      ���
� .ascrerr ****      � ****�  �  �  �  �M 0 x  � m    �� � I   ��
� .corecnte****       **** o    �
�
 0 opendocuments openDocuments�  �L  � �	 l  � �����  �  �  �	  � 5     ��
� 
capp m     � $ c o m . a d o b e . I n D e s i g n
� kfrmID  �  l     ����  �  �    l     � �    z t �������������������������������������������������������������������������������������������������������������������    � �   " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " "  !  l     ��������  ��  ��  ! "#" i   ) ,$%$ I      �������� &0 textoverflowcheck textOverflowCheck��  ��  % O     �&'& k    �(( )*) l   ��������  ��  ��  * +,+ r    -.- m    	��
�� boovtrue. o      ���� 0 stopbool stopBool, /0/ r    121 m    ��
�� boovtrue2 o      ���� 0 textcheckbool textCheckBool0 343 l   ��������  ��  ��  4 565 Y    �7��89��7 k    �:: ;<; l   ��=>��  =  text overflow check   > �?? & t e x t   o v e r f l o w   c h e c k< @A@ l   ��BC��  B � �set textOverflows to (every text frame of openDocuments's item x whose overflows is true) --this checks all layers, visible or not   C �DD s e t   t e x t O v e r f l o w s   t o   ( e v e r y   t e x t   f r a m e   o f   o p e n D o c u m e n t s ' s   i t e m   x   w h o s e   o v e r f l o w s   i s   t r u e )   - - t h i s   c h e c k s   a l l   l a y e r s ,   v i s i b l e   o r   n o tA EFE l   ;GHIG r    ;JKJ l   9L����L 6   9MNM n    $OPO 2   " $��
�� 
txtfP n   "QRQ 4    "��S
�� 
cobjS o     !���� 0 x  R o    ���� 0 opendocuments openDocumentsN F   % 8TUT =  & -VWV 1   ' )��
�� 
OVRFW m   * ,��
�� boovtrueU =  . 7XYX n  / 3Z[Z 1   1 3��
�� 
pvis[ 1   / 1��
�� 
pilrY m   4 6��
�� boovtrue��  ��  K o      ���� 0 textoverflows textOverflowsH % this just checks visible layers   I �\\ > t h i s   j u s t   c h e c k s   v i s i b l e   l a y e r sF ]^] l  < <��_`��  _ c ]set missingLinks to (every link of openDocuments's item x whose status contains link missing)   ` �aa � s e t   m i s s i n g L i n k s   t o   ( e v e r y   l i n k   o f   o p e n D o c u m e n t s ' s   i t e m   x   w h o s e   s t a t u s   c o n t a i n s   l i n k   m i s s i n g )^ bcb l  < <��de��  d h bset modifiedLinks to (every link of openDocuments's item x whose status contains link out of date)   e �ff � s e t   m o d i f i e d L i n k s   t o   ( e v e r y   l i n k   o f   o p e n D o c u m e n t s ' s   i t e m   x   w h o s e   s t a t u s   c o n t a i n s   l i n k   o u t   o f   d a t e )c ghg l  < <��ij��  i 5 /set failedLinks to missingLinks & modifiedLinks   j �kk ^ s e t   f a i l e d L i n k s   t o   m i s s i n g L i n k s   &   m o d i f i e d L i n k sh lml Z   < Mno����n >  < Cpqp l  < Ar����r I  < A��s��
�� .corecnte****       ****s o   < =���� 0 textoverflows textOverflows��  ��  ��  q m   A B����  o r   F Itut m   F G��
�� boovfalsu o      ���� 0 textcheckbool textCheckBool��  ��  m vwv Z   N �xy����x =  N Qz{z o   N O���� 0 textcheckbool textCheckBool{ m   O P��
�� boovfalsy I  T ���|}
�� .sysodlogaskr        TEXT| b   T p~~ b   T l��� b   T j��� b   T f��� b   T d��� b   T [��� b   T Y��� b   T W��� m   T U�� ��� 6 D o k u m e n t   h a t   T e x t � b e r h a n g !  � o   U V��
�� 
ret � m   W X�� ��� R - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -� o   Y Z��
�� 
ret � l  [ c������ n   [ c��� 1   _ c��
�� 
pnam� n  [ _��� 4   \ _���
�� 
cobj� o   ] ^���� 0 x  � o   [ \���� 0 opendocuments openDocuments��  ��  � o   d e��
�� 
ret � m   f i�� ��� R - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -� o   j k��
�� 
ret  m   l o�� ��� � h a t   T e x t � b e r h a n g .   D a s   s k - I n D e s i g n - S k r i p t   � g o T o F i r s t T e x t O v e r f l o w �   f i n d e t   � b e r h � n g e !} ����
�� 
btns� J   s ~�� ��� m   s v�� ��� 
 S t o p !� ��� m   v y�� ��� , G e h e   z u   e r s t e r   S t e l l e !� ���� m   y |�� ���  W e i t e r !��  � �����
�� 
dflt� m   � ��� ���  W e i t e r !��  ��  ��  w ���� Q   � ������ Z   � ������� =  � ���� n   � ���� 1   � ���
�� 
bhit� 1   � ���
�� 
rslt� m   � ��� ��� 
 S t o p !� r   � ���� m   � ���
�� boovfals� o      ���� 0 stopbool stopBool� ��� =  � ���� n   � ���� 1   � ���
�� 
bhit� 1   � ���
�� 
rslt� m   � ��� ��� , G e h e   z u   e r s t e r   S t e l l e !� ���� k   � ��� ��� n  � ���� I   � ��������� $0 textoverflowgoer textOverflowGoer��  ��  �  f   � �� ��� n  � ���� I   � �������� 0 zoomthepages zoomThePages� ���� o   � ����� 0 activewindow activeWindow��  ��  �  f   � �� ���� r   � ���� m   � ���
�� boovfals� o      ���� 0 stopbool stopBool��  ��  ��  � R      ������
�� .ascrerr ****      � ****��  ��  ��  ��  �� 0 x  8 m    ���� 9 I   �����
�� .corecnte****       ****� o    ���� 0 opendocuments openDocuments��  ��  6 ���� l  � ���������  ��  ��  ��  ' 5     �����
�� 
capp� m    �� ��� $ c o m . a d o b e . I n D e s i g n
�� kfrmID  # ��� l     ��������  ��  ��  � ��� l     ������  � z t �������������������������������������������������������������������������������������������������������������������   � ��� �   " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " "� ��� l     ��������  ��  ��  � ��� i   - 0��� I      ������� (0 inputrangesplitter inputRangeSplitter� ���� o      ���� 0 
inputrange 
inputRange��  ��  � k     �� ��� l    ���� r     ��� n    ��� 1    ��
�� 
txdl� 1     ��
�� 
ascr� o      ���� 0 olddelimiters oldDelimiters� * $ always preserve original delimiters   � ��� H   a l w a y s   p r e s e r v e   o r i g i n a l   d e l i m i t e r s� ��� r    ��� J    	�� ���� m    �� ���  ,��  � n     ��� 1   
 ��
�� 
txdl� 1   	 
��
�� 
ascr� ��� r    ��� n    � � 2   ��
�� 
citm  o    ���� 0 
inputrange 
inputRange� o      ���� 0 splittedrange splittedRange�  l    r     o    ���� 0 olddelimiters oldDelimiters n     	 1    ��
�� 
txdl	 1    ��
�� 
ascr ) # always restore original delimiters    �

 F   a l w a y s   r e s t o r e   o r i g i n a l   d e l i m i t e r s �� L     o    ���� 0 splittedrange splittedRange��  �  l     ��������  ��  ��    l     ����   z t �������������������������������������������������������������������������������������������������������������������    � �   " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " "  l     �������  ��  �    i   1 4 I      �~�}�~ ,0 splittedrangecleaner splittedRangeCleaner �| o      �{�{ 0 splittedrange splittedRange�|  �}   l     �z�y�x�z  �y  �x    l     �w�v�u�w  �v  �u    l     �t !�t    z t �������������������������������������������������������������������������������������������������������������������   ! �"" �   " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " #$# l     �s�r�q�s  �r  �q  $ %&% i   5 8'(' I      �p�o�n�p $0 textoverflowgoer textOverflowGoer�o  �n  ( k     2)) *+* O     0,-, k    /.. /0/ l   �m�l�k�m  �l  �k  0 1�j1 Z    /23�i42 >   565 l   7�h�g7 I   �f8�e
�f .corecnte****       ****8 o    	�d�d 0 textoverflows textOverflows�e  �h  �g  6 m    �c�c  3 k    '99 :;: r    <=< n    >?> 1    �b
�b 
pnam? n    @A@ 1    �a
�a 
PaPaA n    BCB 4   �`D
�` 
cobjD m    �_�_ C o    �^�^ 0 textoverflows textOverflows= o      �]�] 0 
activepage 
activePage; E�\E r    'FGF n    #HIH 4     #�[J
�[ 
pageJ o   ! "�Z�Z 0 
activepage 
activePageI n     KLK 1     �Y
�Y 
pareL o    �X�X 0 activewindow activeWindowG n      MNM 1   $ &�W
�W 
pacpN o   # $�V�V 0 activewindow activeWindow�\  �i  4 I  * /�UO�T
�U .sysobeepnull��� ��� longO l  * +P�S�RP m   * +�Q�Q �S  �R  �T  �j  - 5     �PQ�O
�P 
cappQ m    RR �SS $ c o m . a d o b e . I n D e s i g n
�O kfrmID  + T�NT l  1 1�M�L�K�M  �L  �K  �N  & UVU l     �J�I�H�J  �I  �H  V WXW l     �GYZ�G  Y z t �������������������������������������������������������������������������������������������������������������������   Z �[[ �   " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " "X \]\ l     �F�E�D�F  �E  �D  ] ^_^ i   9 <`a` I      �Cb�B�C 0 zoomthepages zoomThePagesb c�Ac o      �@�@ 0 	thewindow 	theWindow�A  �B  a O     4ded k    3ff ghg l   �?�>�=�?  �>  �=  h iji O    1klk k    0mm non I   �<p�;
�< .K2  seltnull���     ****p m    �:
�: senmnada�;  o qrq l   stus I   �9�8v
�9 .K2  zmtonull���     Lwin�8  v �7w�6
�7 
givnw m    �5
�5 zopezftp�6  t  spread   u �xx  s p r e a dr y�4y Z    0z{�3�2z >   !|}| l   ~�1�0~ I   �/�.
�/ .corecnte****       **** o    �-�- 0 textoverflows textOverflows�.  �1  �0  } m     �,�,  { r   $ ,��� n   $ (��� 4  % (�+�
�+ 
cobj� m   & '�*�* � o   $ %�)�) 0 textoverflows textOverflows� n      ��� 1   ) +�(
�( 
sele� o   ( )�'�' 0 activewindow activeWindow�3  �2  �4  l o    	�&�& 0 	thewindow 	theWindowj ��%� l  2 2�$�#�"�$  �#  �"  �%  e 5     �!�� 
�! 
capp� m    �� ��� $ c o m . a d o b e . I n D e s i g n
�  kfrmID  _ ��� l     ����  �  �  � ��� l     ����  � z t �������������������������������������������������������������������������������������������������������������������   � ��� �   " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " "� ��� l     ����  �  �  � ��� i   = @��� I      ���� 0 displaytheend displayTheEnd�  �  � I    ���
� .sysodlogaskr        TEXT� m     �� ��� ^ D e r   E x p o r t   w i r d   j e t z t   i m   H i n t e r g r u n d   a u s g e f � h r t� ���
� 
btns� m    �� ���  O K� ���
� 
dflt� m    �� ���  O K� ���
� 
givu� m    �� �  � ��� l     ����  �  �  � ��� l     ����  � z t �������������������������������������������������������������������������������������������������������������������   � ��� �   " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " "� ��� l     ��
�	�  �
  �	  � ��� l     ����  � L Fmy displayNotificationLong("Title text", "Subtitle text", "Body text")   � ��� � m y   d i s p l a y N o t i f i c a t i o n L o n g ( " T i t l e   t e x t " ,   " S u b t i t l e   t e x t " ,   " B o d y   t e x t " )� ��� i   A D��� I      ���� 20 displaynotificationlong displayNotificationLong� ��� o      �� 0 	titletext 	titleText� ��� o      �� 0 subtitletext subtitleText� ��� o      �� 0 bodytext bodyText�  �  � k     �� ��� l    	���� I    	���
� .sysonotfnull��� ��� TEXT� o     � �  0 bodytext bodyText� ����
�� 
appr� o    ���� 0 	titletext 	titleText� �����
�� 
subt� o    ���� 0 subtitletext subtitleText��  �  sound name "default"   � ��� ( s o u n d   n a m e   " d e f a u l t "� ���� l  
 
������  �  	delay 0.5   � ���  d e l a y   0 . 5��  � ��� l     ��������  ��  ��  � ��� l     ������  � z t �������������������������������������������������������������������������������������������������������������������   � ��� �   " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " "� ��� l     ��������  ��  ��  � ��� l     ������  � < 6my displayNotificationShort("Title text", "Body text")   � ��� l m y   d i s p l a y N o t i f i c a t i o n S h o r t ( " T i t l e   t e x t " ,   " B o d y   t e x t " )� ���� i   E H��� I      ������� 40 displaynotificationshort displayNotificationShort� ��� o      ���� 0 	titletext 	titleText� ���� o      ���� 0 bodytext bodyText��  ��  � k     	�� ��� l    ���� I    ����
�� .sysonotfnull��� ��� TEXT� o     ���� 0 bodytext bodyText� �����
�� 
appr� o    ���� 0 	titletext 	titleText��  �  sound name "default"   � ��� ( s o u n d   n a m e   " d e f a u l t "� ���� l   ������  �  	delay 0.5   � ���  d e l a y   0 . 5��  ��       ����� �������������� ��  � ����������������������������������������  0 functionchoice functionChoice�� 0 chosenpreset chosenPreset�� 0 	pagerange 	pageRange�� "0 functionchooser functionChooser�� .0 pdfexportersinglepage pdfExporterSinglepage�� ,0 pdfexportermultipage pdfExporterMultipage�� 0 idmlexporter idmlExporter�� ,0 fileextensionremover fileExtensionRemover�� 0 
pageranger 
pageRanger�� 0 	linkcheck 	linkCheck�� &0 textoverflowcheck textOverflowCheck�� (0 inputrangesplitter inputRangeSplitter�� ,0 splittedrangecleaner splittedRangeCleaner�� $0 textoverflowgoer textOverflowGoer�� 0 zoomthepages zoomThePages�� 0 displaytheend displayTheEnd�� 20 displaynotificationlong displayNotificationLong�� 40 displaynotificationshort displayNotificationShort
�� .aevtoappnull  �   � ****� ����    �� ����    �� ���������� "0 functionchooser functionChooser��  ��     ���� ��#����1��>��M��
�� 
inSL
�� 
prmp
�� 
okbt�� 
�� .gtqpchltns    @   @ ns  �� .0 pdfexportersinglepage pdfExporterSinglepage�� ,0 pdfexportermultipage pdfExporterMultipage�� 0 idmlexporter idmlExporter�� i���mv�b   ����� 	Ec   Ob   �kv  )b   k+ Y 5b   �kv  )b   k+ Y b   �kv  )b   k+ Y hOP� ��a�������� .0 pdfexportersinglepage pdfExporterSinglepage�� ��	�� 	  ����  0 functionchoice functionChoice��   ������������������  0 functionchoice functionChoice�� 0 
buttonname 
buttonName�� 0 
inputrange 
inputRange�� 0 x  �� 0 docname docName�� 0 
newdocname 
newdocName�� 0 filepath filePath�� 0 exportpreset exportPreset .m��������y����������������������"�������������������������������������������.AO��
�� 
ctxt�� ,0 pdfpresetsoncomputer pdfPresetsOnComputer
�� 
inSL
�� 
prmp
�� 
okbt�� 
�� .gtqpchltns    @   @ ns  
�� 
ret 
�� 
dtxt
�� .sysodlogaskr        TEXT
�� 
rslt
�� 
ttxt�� (0 inputrangesplitter inputRangeSplitter
�� 
capp
�� kfrmID  �� 0 splittedrange splittedRange
�� .corecnte****       ****
�� 
cobj�� 0 
pageranger 
pageRanger��  0 activedocument activeDocument
�� 
pnam�� ,0 fileextensionremover fileExtensionRemover
�� 
path
�� 
TEXT
�� 
PFst
�� 
exft
�� eXftt_PD
�� 
kfil
�� 
usng
�� 
imot�� 
�� .K2  exAscBKT        docu
�� 
DFpf�� (0 preservedpagerange preservedPageRange
�� 
pcty�� 20 displaynotificationlong displayNotificationLong��+��%�&E�O��b  ���� Ec  Ob  f��%�%�b  l O��,E�O�Ec  O*�k+ O)a a a 0 � �k_ j kh )_ a �/k+ O_ a ,E�O)�k+ E�O_ a ,a &E�O*a b  a &/E�O_ a a a  ��%a !%_ a �/%a "%a #�a $fa % &OP[OY��O*a ', _ (*a ),FUOPUOb  a *kv  )a +b  a k/a &a ,�%m+ -Y hOPY h� ��^����
���� ,0 pdfexportermultipage pdfExporterMultipage�� ����   ����  0 functionchoice functionChoice��  
 ����������������  0 functionchoice functionChoice�� 0 
buttonname 
buttonName�� 0 x  �� 0 docname docName�� 0 
newdocname 
newdocName�� 0 filepath filePath�� 0 exportpreset exportPreset 6j�������v�~�}�|��{��z�y���x��w�v�u��t���s�rR�q�p�o�n�m�l�k�j�i�h�g�f �e�d�c�b3�a�`�_^q��^
�� 
ctxt�� ,0 pdfpresetsoncomputer pdfPresetsOnComputer
�� 
inSL
� 
prmp
�~ 
okbt�} 
�| .gtqpchltns    @   @ ns  
�{ 
ret 
�z 
dtxt
�y 
btns
�x 
dflt
�w .sysodlogaskr        TEXT
�v 
rslt
�u 
bhit
�t 
ttxt�s 0 
pageranger 
pageRanger
�r 
capp
�q kfrmID  �p 0 opendocuments openDocuments
�o .corecnte****       ****
�n 
cobj
�m 
pnam�l ,0 fileextensionremover fileExtensionRemover
�k 
path
�j 
TEXT
�i 
PFst
�h 
exft
�g eXftt_PD
�f 
kfil
�e 
usng
�d 
imot�c 
�b .K2  exAscBKT        docu
�a 
DFpf�` (0 preservedpagerange preservedPageRange
�_ 
pcty�^ 20 displaynotificationlong displayNotificationLong�����%�&E�O��b  ���� Ec  Ob  f G��%�%�b  ���lva a � O_ a ,a   _ a ,Ec  Y a Ec  Y a Ec  O)b  k+ O)a a a 0 � �k_ j kh _ a �/a  ,E�O)�k+ !E�O_ a �/a ",a #&E�O*a $b  a #&/E�Ob  a %kv  +_ a �/a &a 'a (��%a )%a *�a +fa , -Y (_ a �/a &a 'a (��%a .%a *�a +fa , -OP[OY�_O*a /, _ 0*a 1,FUOPUOb  a 2kv *)a 3b  a k/a #&_ j a #&a 4%m+ 5Y hOP� �]��\�[�Z�] 0 idmlexporter idmlExporter�\ �Y�Y   �X�X  0 functionchoice functionChoice�[   �W�V�U�T�S�W  0 functionchoice functionChoice�V 0 x  �U 0 docname docName�T 0 
newdocname 
newdocName�S 0 filepath filePath �R��Q�P�O�N�M�L�K�J�I�H�G��F�E����D
�R 
capp
�Q kfrmID  �P 0 opendocuments openDocuments
�O .corecnte****       ****
�N 
cobj
�M 
pnam�L ,0 fileextensionremover fileExtensionRemover
�K 
path
�J 
TEXT
�I 
exft
�H eXftidml
�G 
kfil�F 
�E .K2  exAscBKT        docu�D 20 displaynotificationlong displayNotificationLong�Z c)���0 D Ak�j kh ��/�,E�O)�k+ E�O��/�,�&E�O��/��줣%�%� OP[OY��UO)a a �j �&a %m+ � �C�B�A�@�C ,0 fileextensionremover fileExtensionRemover�B �?�?   �>�> 0 docname docName�A   �=�<�;�:�= 0 docname docName�< 0 olddelimiters oldDelimiters�; 0 	pathitems 	pathItems�: 0 
newdocname 
newdocName 
�9�8�7�6�55�4�3�2
�9 
ascr
�8 
txdl
�7 
ctxt
�6 
citm
�5 .corecnte****       ****
�4 
cobj�3��
�2 
TEXT�@ F��,E�O�kv��,FO��&�-E�O�j � �[�\[Zk\Z�2E�Y ��k/E�O��&E�O���,FO�� �1`�0�/�.�1 0 
pageranger 
pageRanger�0 �-�-   �,�, 0 	pagerange 	pageRange�/   �+�+ 0 	pagerange 	pageRange �*x�)�(�'�&
�* 
capp
�) kfrmID  
�( 
DFpf
�' 
pcty�& (0 preservedpagerange preservedPageRange�. #)���0 *�, *�,E�UO*�, �*�,FUU� �%��$�#�"�% 0 	linkcheck 	linkCheck�$  �#   �!� ����! 0 linkcheckbool linkCheckBool�  0 x  � 0 missinglinks missingLinks� 0 modifiedlinks modifiedLinks� 0 failedlinks failedLinks ������������������������
�	
� 
capp
� kfrmID  � 0 stopbool stopBool� 0 opendocuments openDocuments
� .corecnte****       ****
� 
cobj
� 
clnk  
� 
stts
� sttelmis
� sttelood
� 
ret 
� 
pnam
� 
btns
� 
dflt� 
� .sysodlogaskr        TEXT
� 
rslt
� 
bhit�
  �	  �" �)���0 �eE�OeE�O �k�j kh ��/�-�[�,\Z�@1E�O��/�-�[�,\Z�@1E�O��%E�O�j j fE�Y hO�f  6��%�%�%��/�,%�%a %�%a %a a a lva a a  Y hO _ a ,a   fE�Y hW X  h[OY�aOPU� �%���� &0 textoverflowcheck textOverflowCheck�  �   ��� 0 textcheckbool textCheckBool� 0 x   $���� ����������������������������������������������������
� 
capp
� kfrmID  �  0 stopbool stopBool�� 0 opendocuments openDocuments
�� .corecnte****       ****
�� 
cobj
�� 
txtf
�� 
OVRF
�� 
pilr
�� 
pvis�� 0 textoverflows textOverflows
�� 
ret 
�� 
pnam
�� 
btns
�� 
dflt�� 
�� .sysodlogaskr        TEXT
�� 
rslt
�� 
bhit�� $0 textoverflowgoer textOverflowGoer�� 0 activewindow activeWindow�� 0 zoomthepages zoomThePages��  ��  � �)���0 �eE�OeE�O �k�j kh ��/�-�[[�,\Ze8\[�,�,\Ze8A1E�O�j j fE�Y hO�f  ;��%�%�%��/a ,%�%a %�%a %a a a a mva a a  Y hO =_ a ,a   fE�Y &_ a ,a   )j+ O)_  k+ !OfE�Y hW X " #h[OY�EOPU� ����������� (0 inputrangesplitter inputRangeSplitter�� ����   ���� 0 
inputrange 
inputRange��   ������ 0 
inputrange 
inputRange�� 0 olddelimiters oldDelimiters ���������
�� 
ascr
�� 
txdl
�� 
citm�� 0 splittedrange splittedRange�� ��,E�O�kv��,FO��-E�O���,FO�� ���������� ,0 splittedrangecleaner splittedRangeCleaner�� �� ��    ���� 0 splittedrange splittedRange��   ���� 0 splittedrange splittedRange  �� h� ��(����!"���� $0 textoverflowgoer textOverflowGoer��  ��  ! ���� 0 
activepage 
activePage" ��R����������������������
�� 
capp
�� kfrmID  �� 0 textoverflows textOverflows
�� .corecnte****       ****
�� 
cobj
�� 
PaPa
�� 
pnam�� 0 activewindow activeWindow
�� 
pare
�� 
page
�� 
pacp
�� .sysobeepnull��� ��� long�� 3)���0 )�j j ��k/�,�,E�O��,�/��,FY mj UOP� ��a����#$���� 0 zoomthepages zoomThePages�� ��%�� %  ���� 0 	thewindow 	theWindow��  # ���� 0 	thewindow 	theWindow$ �������������������������
�� 
capp
�� kfrmID  
�� senmnada
�� .K2  seltnull���     ****
�� 
givn
�� zopezftp
�� .K2  zmtonull���     Lwin�� 0 textoverflows textOverflows
�� .corecnte****       ****
�� 
cobj�� 0 activewindow activeWindow
�� 
sele�� 5)���0 -� &�j O*��l O�j 	j ��k/��,FY hUOPU� �������&'���� 0 displaytheend displayTheEnd��  ��  &  ' �������������
�� 
btns
�� 
dflt
�� 
givu�� 
�� .sysodlogaskr        TEXT�� ������k�   �������()���� 20 displaynotificationlong displayNotificationLong�� ��*�� *  �������� 0 	titletext 	titleText�� 0 subtitletext subtitleText�� 0 bodytext bodyText��  ( �������� 0 	titletext 	titleText�� 0 subtitletext subtitleText�� 0 bodytext bodyText) ��������
�� 
appr
�� 
subt�� 
�� .sysonotfnull��� ��� TEXT�� ���� OP �������+,���� 40 displaynotificationshort displayNotificationShort�� ��-�� -  ������ 0 	titletext 	titleText�� 0 bodytext bodyText��  + ������ 0 	titletext 	titleText�� 0 bodytext bodyText, ����
�� 
appr
�� .sysonotfnull��� ��� TEXT�� 
��l OP ��.����/0��
�� .aevtoappnull  �   � ****. k     U11  �����  ��  ��  /  0 �� ��������������������� �����~�}�|
�� 
capp
�� kfrmID  
�� 
pacd��  0 activedocument activeDocument
�� 
pacw�� 0 activewindow activeWindow
�� 
docu
�� 
pvis�� 0 opendocuments openDocuments
�� 
PFst
�� 
pnam�� ,0 pdfpresetsoncomputer pdfPresetsOnComputer� 0 	linkcheck 	linkCheck�~ &0 textoverflowcheck textOverflowCheck�} 0 stopbool stopBool�| "0 functionchooser functionChooser�� V)���0 N*�,E�O*�,E�O*�-�[�,\Ze81E�O*�-�,�[�,\Z�@C1E�O)j+ O)j+ O_ e  
)j+ Y hOPUascr  ��ޭ