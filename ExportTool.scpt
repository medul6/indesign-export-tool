FasdUAS 1.101.10   ��   ��    k             l     ��  ��      ExportTool for InDesign     � 	 	 0   E x p o r t T o o l   f o r   I n D e s i g n   
  
 l     ��  ��      version 1.9.2.8     �       v e r s i o n   1 . 9 . 2 . 8      l     ��������  ��  ��        l     ��  ��    , & created by medul6, Michael Heck, 2012     �   L   c r e a t e d   b y   m e d u l 6 ,   M i c h a e l   H e c k ,   2 0 1 2      l     ��  ��    �  open sourced on September 7th, 2012 on Github > check the LICENSE.txt and README.md in the repository for detailed information     �   �   o p e n   s o u r c e d   o n   S e p t e m b e r   7 t h ,   2 0 1 2   o n   G i t h u b   >   c h e c k   t h e   L I C E N S E . t x t   a n d   R E A D M E . m d   i n   t h e   r e p o s i t o r y   f o r   d e t a i l e d   i n f o r m a t i o n      l     ��  ��    5 / https://github.com/medul6/indesign-export-tool     �   ^   h t t p s : / / g i t h u b . c o m / m e d u l 6 / i n d e s i g n - e x p o r t - t o o l     !   l     ��������  ��  ��   !  " # " l     �� $ %��   $ z t �������������������������������������������������������������������������������������������������������������������    % � & & �   " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " #  ' ( ' l     ��������  ��  ��   (  ) * ) l     �� + ,��   +   global variables    , � - - "   g l o b a l   v a r i a b l e s *  . / . p       0 0 ������  0 activedocument activeDocument��   /  1 2 1 p       3 3 ������ 0 opendocuments openDocuments��   2  4 5 4 p       6 6 ������ 0 activewindow activeWindow��   5  7 8 7 p       9 9 ������ ,0 pdfpresetsoncomputer pdfPresetsOnComputer��   8  : ; : p       < < ������ (0 preservedpagerange preservedPageRange��   ;  = > = p       ? ? ������ 0 stopbool stopBool��   >  @ A @ p       B B ������ 0 splittedrange splittedRange��   A  C D C l     ��������  ��  ��   D  E F E p       G G ������ 0 textoverflows textOverflows��   F  H I H l     ��������  ��  ��   I  J K J l     �� L M��   L  test variables!!!    M � N N " t e s t   v a r i a b l e s ! ! ! K  O P O l     �� Q R��   Q  global filePath    R � S S  g l o b a l   f i l e P a t h P  T U T l     �� V W��   V  global chosenPresetText    W � X X . g l o b a l   c h o s e n P r e s e t T e x t U  Y Z Y l     �� [ \��   [  global docName    \ � ] ]  g l o b a l   d o c N a m e Z  ^ _ ^ l     �� ` a��   `  global newFilePath    a � b b $ g l o b a l   n e w F i l e P a t h _  c d c l     �� e f��   e  global pathItems    f � g g   g l o b a l   p a t h I t e m s d  h i h l     �� j k��   j  global pageRange    k � l l   g l o b a l   p a g e R a n g e i  m n m l     �� o p��   o  global newdocName    p � q q " g l o b a l   n e w d o c N a m e n  r s r l     �� t u��   t  global failedLinks    u � v v $ g l o b a l   f a i l e d L i n k s s  w x w l     �� y z��   y  global textOverflows    z � { { ( g l o b a l   t e x t O v e r f l o w s x  | } | l     �� ~ ��   ~  global modifiedLinks     � � � ( g l o b a l   m o d i f i e d L i n k s }  � � � l     �� � ���   �  global missingLinks    � � � � & g l o b a l   m i s s i n g L i n k s �  � � � l     �� � ���   �  global exportPreset    � � � � & g l o b a l   e x p o r t P r e s e t �  � � � l     ��������  ��  ��   �  � � � l     �� � ���   �  properties!    � � � �  p r o p e r t i e s ! �  � � � j     �� ���  0 functionchoice functionChoice � J      � �  ��� � m      � � � � �  P D F - E x p o r t��   �  � � � j    	�� ��� 0 chosenpreset chosenPreset � J     � �  ��� � m     � � � � �  s k - S c r e e n��   �  � � � j   
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
okbt" m    ## �$$  W e i t e r !�{   o      �z�z  0 functionchoice functionChoice %&% l   �y�x�w�y  �x  �w  & '(' Z    f)*+�v) =    #,-, l   .�u�t. o    �s�s  0 functionchoice functionChoice�u  �t  - J    "// 0�r0 m     11 �22 2 P D F - E x p o r t   ( E i n z e l s e i t e n )�r  * n   & 0343 I   ' 0�q5�p�q .0 pdfexportersinglepage pdfExporterSinglepage5 6�o6 o   ' ,�n�n  0 functionchoice functionChoice�o  �p  4  f   & '+ 787 =   3 <9:9 l  3 8;�m�l; o   3 8�k�k  0 functionchoice functionChoice�m  �l  : J   8 ;<< =�j= m   8 9>> �?? . P D F - E x p o r t   ( M e h r s e i t i g )�j  8 @A@ n   ? IBCB I   @ I�iD�h�i ,0 pdfexportermultipage pdfExporterMultipageD E�gE o   @ E�f�f  0 functionchoice functionChoice�g  �h  C  f   ? @A FGF =   L UHIH l  L QJ�e�dJ o   L Q�c�c  0 functionchoice functionChoice�e  �d  I J   Q TKK L�bL m   Q RMM �NN  I D M L - E x p o r t�b  G O�aO n   X bPQP I   Y b�`R�_�` 0 idmlexporter idmlExporterR S�^S o   Y ^�]�]  0 functionchoice functionChoice�^  �_  Q  f   X Y�a  �v  ( T�\T l  g g�[�Z�Y�[  �Z  �Y  �\   UVU l     �X�W�V�X  �W  �V  V WXW l     �UYZ�U  Y z t �������������������������������������������������������������������������������������������������������������������   Z �[[ �   " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " "X \]\ l     �T�S�R�T  �S  �R  ] ^_^ i    `a` I      �Qb�P�Q .0 pdfexportersinglepage pdfExporterSinglepageb c�Oc o      �N�N  0 functionchoice functionChoice�O  �P  a k    "dd efe r     ghg c     iji b     klk o     �M�M  0 functionchoice functionChoicel m    mm �nn  !j m    �L
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
buttonName�D  r o      �B�B 0 chosenpreset chosenPresetp |�A| Z   "}~�@�?} >   %� o    #�>�> 0 chosenpreset chosenPreset� m   # $�=
�= boovfals~ k   (�� ��� I  ( 7�<��
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
inputRange� ��� l  > >�2�1�0�2  �1  �0  � ��� I   > D�/��.�/ (0 inputrangesplitter inputRangeSplitter� ��-� o   ? @�,�, 0 
inputrange 
inputRange�-  �.  � ��� l  E E�+�*�)�+  �*  �)  � ��� l  E E�(���(  � 9 3hier sollte die splittedRange noch gecleaned werden   � ��� f h i e r   s o l l t e   d i e   s p l i t t e d R a n g e   n o c h   g e c l e a n e d   w e r d e n� ��� l  E E�'���'  � , &my splittedRangeCleaner(splittedRange)   � ��� L m y   s p l i t t e d R a n g e C l e a n e r ( s p l i t t e d R a n g e )� ��� l  E E�&�%�$�&  �%  �$  � ��� O   E ���� k   S ��� ��� l  S S�#�"�!�#  �"  �!  � ��� Y   S ��� ���� l  c ����� k   c ��� ��� l  c c����  �  �  � ��� n  c p��� I   d p���� 0 
pageranger 
pageRanger� ��� n  d l��� 4   g l��
� 
cobj� o   j k�� 0 x  � o   d g�� 0 splittedrange splittedRange�  �  �  f   c d� ��� l  q q����  �  �  � ��� r   q z��� n   q x��� 1   t x�
� 
pnam� o   q t��  0 activedocument activeDocument� o      �� 0 docname docName� ��� r   { ���� n  { ���� I   | ����� ,0 fileextensionremover fileExtensionRemover� ��� o   | }�� 0 docname docName�  �  �  f   { |� o      �� 0 
newdocname 
newdocName� ��� r   � ���� l  � ���
�	� c   � ���� n   � ���� 1   � ��
� 
path� o   � ���  0 activedocument activeDocument� m   � ��
� 
TEXT�
  �	  � o      �� 0 filepath filePath� ��� r   � ���� 4   � ���
� 
PFst� l  � ����� c   � ���� o   � ��� 0 chosenpreset chosenPreset� m   � �� 
�  
TEXT�  �  � o      ���� 0 exportpreset exportPreset� ��� l  � ���������  ��  ��  � ��� I  � �����
�� .K2  exAscBKT        docu� o   � �����  0 activedocument activeDocument� ����
�� 
exft� m   � ���
�� eXftt_PD� ����
�� 
kfil� l  � ������� b   � ���� b   � ���� b   � ���� b   � ���� o   � ����� 0 filepath filePath� o   � ����� 0 
newdocname 
newdocName� m   � ��� ���    s� l  � ������� n  � ���� 4   � ����
�� 
cobj� o   � ����� 0 x  � o   � ����� 0 splittedrange splittedRange��  ��  � m   � ��� �    . p d f��  ��  � ��
�� 
usng o   � ����� 0 exportpreset exportPreset ����
�� 
imot m   � ���
�� boovfals��  � �� l  � ���������  ��  ��  ��  � &   this iterates through all pages   � � @   t h i s   i t e r a t e s   t h r o u g h   a l l   p a g e s�  0 x  � m   V W���� � I  W ^����
�� .corecnte****       **** o   W Z���� 0 splittedrange splittedRange��  �  �  l  � ���������  ��  ��   	
	 l  � ���������  ��  ��  
  O   � � l  � � r   � � o   � ����� (0 preservedpagerange preservedPageRange 1   � ���
�� 
pcty * $ always restore original preferences    � H   a l w a y s   r e s t o r e   o r i g i n a l   p r e f e r e n c e s 1   � ���
�� 
DFpf  l  � ���������  ��  ��    l  � �����    wait for all tasks    � $ w a i t   f o r   a l l   t a s k s �� l  � ���������  ��  ��  ��  � 5   E P����
�� 
capp m   I L � $ c o m . a d o b e . I n D e s i g n
�� kfrmID  �  !  l  � ���������  ��  ��  ! "#" Z   �$%����$ >  � �&'& o   � ����� 0 chosenpreset chosenPreset' J   � �(( )��) m   � �** �++  s k - T e m p o r � r��  % k   �,, -.- l  � ���/0��  /  my displayTheEnd()   0 �11 $ m y   d i s p l a y T h e E n d ( ). 232 l  � ���45��  4 T Nmy displayNotificationShort("PDF Export gestartet", "Dokument: " & newdocName)   5 �66 � m y   d i s p l a y N o t i f i c a t i o n S h o r t ( " P D F   E x p o r t   g e s t a r t e t " ,   " D o k u m e n t :   "   &   n e w d o c N a m e )3 7��7 n  �898 I   ���:���� 20 displaynotificationlong displayNotificationLong: ;<; m   �== �>> ( P D F   E x p o r t   g e s t a r t e t< ?@? l A����A c  BCB l D����D n  EFE 4  ��G
�� 
cobjG m  	
���� F o  ���� 0 chosenpreset chosenPreset��  ��  C m  ��
�� 
TEXT��  ��  @ H��H b  IJI m  KK �LL  D o k u m e n t :  J o  ���� 0 
newdocname 
newdocName��  ��  9  f   � ���  ��  ��  # M��M l ��������  ��  ��  ��  �@  �?  �A  _ NON l     ��������  ��  ��  O PQP l     ��RS��  R z t �������������������������������������������������������������������������������������������������������������������   S �TT �   " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " "Q UVU l     ��������  ��  ��  V WXW i    YZY I      ��[���� ,0 pdfexportermultipage pdfExporterMultipage[ \��\ o      ����  0 functionchoice functionChoice��  ��  Z k    �]] ^_^ r     `a` c     bcb b     ded o     ����  0 functionchoice functionChoicee m    ff �gg  !c m    ��
�� 
ctxta o      ���� 0 
buttonname 
buttonName_ hih r    jkj I   ��lm
�� .gtqpchltns    @   @ ns  l o    	���� ,0 pdfpresetsoncomputer pdfPresetsOnComputerm ��no
�� 
inSLn o   
 ���� 0 chosenpreset chosenPreseto ��pq
�� 
prmpp m    rr �ss $ P D F - P r e s e t   w � h l e n :q ��t��
�� 
okbtt o    ���� 0 
buttonname 
buttonName��  k o      ���� 0 chosenpreset chosenPreseti uvu Z    vwx��yw >   %z{z o    #���� 0 chosenpreset chosenPreset{ m   # $��
�� boovfalsx k   ( j|| }~} l  ( (�����   1 +if chosenPreset is not {"sk-Tempor�r"} then   � ��� V i f   c h o s e n P r e s e t   i s   n o t   { " s k - T e m p o r � r " }   t h e n~ ��� I  ( B����
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
rslt��  ��  � o      ���� 0 	pagerange 	pageRange��  � r   a j��� m   a d�� ���  a l l   p a g e s� o      ���� 0 	pagerange 	pageRange��  ��  y r   m v��� m   m p�� ���  a l l   p a g e s� o      ���� 0 	pagerange 	pageRangev ��� l  w w��������  ��  ��  � ��� n  w ���� I   x �������� 0 
pageranger 
pageRanger� ���� o   x }�� 0 	pagerange 	pageRange��  ��  �  f   w x� ��� l  � ��~�}�|�~  �}  �|  � ��� O   �V��� k   �U�� ��� l  � ��{�z�y�{  �z  �y  � ��� Y   �@��x���w� l  �;���� k   �;�� ��� l  � ��v�u�t�v  �u  �t  � ��� r   � ���� n   � ���� 1   � ��s
�s 
pnam� n  � ���� 4   � ��r�
�r 
cobj� o   � ��q�q 0 x  � o   � ��p�p 0 opendocuments openDocuments� o      �o�o 0 docname docName� ��� r   � ���� n  � ���� I   � ��n��m�n ,0 fileextensionremover fileExtensionRemover� ��l� o   � ��k�k 0 docname docName�l  �m  �  f   � �� o      �j�j 0 
newdocname 
newdocName� ��� r   � ���� l  � ���i�h� c   � ���� n   � ���� 1   � ��g
�g 
path� n  � ���� 4   � ��f�
�f 
cobj� o   � ��e�e 0 x  � o   � ��d�d 0 opendocuments openDocuments� m   � ��c
�c 
TEXT�i  �h  � o      �b�b 0 filepath filePath� ��� r   � ���� 4   � ��a�
�a 
PFst� l  � ���`�_� c   � ���� o   � ��^�^ 0 chosenpreset chosenPreset� m   � ��]
�] 
TEXT�`  �_  � o      �\�\ 0 exportpreset exportPreset� ��� l  � ��[�Z�Y�[  �Z  �Y  � ��� Z   �9���X�� =  � ���� o   � ��W�W 0 chosenpreset chosenPreset� J   � ��� ��V� m   � �   �  s k - T e m p o r � r�V  � k   �  l  � ��U�U   M G this is temporarily disabled, because it just doesn't work that way :)    � �   t h i s   i s   t e m p o r a r i l y   d i s a b l e d ,   b e c a u s e   i t   j u s t   d o e s n ' t   w o r k   t h a t   w a y   : ) 	 l  � ��T
�T  
 � �asynchronous export file openDocuments's item x format PDF type to (filePath & newdocName & ".pdf") using exportPreset showing options yes    � a s y n c h r o n o u s   e x p o r t   f i l e   o p e n D o c u m e n t s ' s   i t e m   x   f o r m a t   P D F   t y p e   t o   ( f i l e P a t h   &   n e w d o c N a m e   &   " . p d f " )   u s i n g   e x p o r t P r e s e t   s h o w i n g   o p t i o n s   y e s	 �S I  ��R
�R .K2  exAscBKT        docu n  � � 4   � ��Q
�Q 
cobj o   � ��P�P 0 x   o   � ��O�O 0 opendocuments openDocuments �N
�N 
exft m   � ��M
�M eXftt_PD �L
�L 
kfil l  ��K�J b   � b   � � o   � ��I�I 0 filepath filePath o   � ��H�H 0 
newdocname 
newdocName m   � �  . p d f�K  �J   �G
�G 
usng o  �F�F 0 exportpreset exportPreset �E �D
�E 
imot  m  	
�C
�C boovfals�D  �S  �X  � I 9�B!"
�B .K2  exAscBKT        docu! n #$# 4  �A%
�A 
cobj% o  �@�@ 0 x  $ o  �?�? 0 opendocuments openDocuments" �>&'
�> 
exft& m  !�=
�= eXftt_PD' �<()
�< 
kfil( l $+*�;�:* b  $++,+ b  $'-.- o  $%�9�9 0 filepath filePath. o  %&�8�8 0 
newdocname 
newdocName, m  '*// �00  . p d f�;  �:  ) �712
�7 
usng1 o  ./�6�6 0 exportpreset exportPreset2 �53�4
�5 
imot3 m  23�3
�3 boovfals�4  � 4�24 l ::�1�0�/�1  �0  �/  �2  � / ) this iterates through all open documents   � �55 R   t h i s   i t e r a t e s   t h r o u g h   a l l   o p e n   d o c u m e n t s�x 0 x  � m   � ��.�. � I  � ��-6�,
�- .corecnte****       ****6 o   � ��+�+ 0 opendocuments openDocuments�,  �w  � 787 l AA�*�)�(�*  �)  �(  8 9:9 l AA�'�&�%�'  �&  �%  : ;<; O  AS=>= l IR?@A? r  IRBCB o  IL�$�$ (0 preservedpagerange preservedPageRangeC 1  LQ�#
�# 
pcty@ * $ always restore original preferences   A �DD H   a l w a y s   r e s t o r e   o r i g i n a l   p r e f e r e n c e s> 1  AF�"
�" 
DFpf< EFE l TT�!� ��!  �   �  F GHG l TT�IJ�  I  wait for all tasks   J �KK $ w a i t   f o r   a l l   t a s k sH L�L l TT����  �  �  �  � 5   � ��M�
� 
cappM m   � �NN �OO $ c o m . a d o b e . I n D e s i g n
� kfrmID  � PQP l WW����  �  �  Q RSR Z  W�TU��T > WbVWV o  W\�� 0 chosenpreset chosenPresetW J  \aXX Y�Y m  \_ZZ �[[  s k - T e m p o r � r�  U k  e�\\ ]^] l ee�_`�  _  my displayTheEnd()   ` �aa $ m y   d i s p l a y T h e E n d ( )^ bcb l ee�de�  d x rmy displayNotificationShort("PDF Export gestartet", ((count openDocuments) as string) & " Dokument(e) exportiert")   e �ff � m y   d i s p l a y N o t i f i c a t i o n S h o r t ( " P D F   E x p o r t   g e s t a r t e t " ,   ( ( c o u n t   o p e n D o c u m e n t s )   a s   s t r i n g )   &   "   D o k u m e n t ( e )   e x p o r t i e r t " )c g�g n e�hih I  f��j�� 20 displaynotificationlong displayNotificationLongj klk m  fimm �nn ( P D F   E x p o r t   g e s t a r t e tl opo l iwq��
q c  iwrsr l ist�	�t n  isuvu 4  ns�w
� 
cobjw m  qr�� v o  in�� 0 chosenpreset chosenPreset�	  �  s m  sv�
� 
TEXT�  �
  p x�x b  w�yzy l w�{��{ c  w�|}| l w~~� ��~ I w~����
�� .corecnte****       **** o  wz���� 0 opendocuments openDocuments��  �   ��  } m  ~���
�� 
TEXT�  �  z m  ���� ��� .   D o k u m e n t ( e )   e x p o r t i e r t�  �  i  f  ef�  �  �  S ��� l ����������  ��  ��  � ���� l ��������  �  end if   � ���  e n d   i f��  X ��� l     ��������  ��  ��  � ��� l     ������  � z t �������������������������������������������������������������������������������������������������������������������   � ��� �   " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " "� ��� l     ��������  ��  ��  � ��� i    ��� I      ������� 0 idmlexporter idmlExporter� ���� o      ����  0 functionchoice functionChoice��  ��  � k     b�� ��� O     K��� Y    J�������� l   E���� k    E�� ��� l   ��������  ��  ��  � ��� r    ��� n    ��� 1    ��
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
TEXT��  ��  � m   Z ]�� ��� .   D o k u m e n t ( e )   e x p o r t i e r t��  ��  �  f   L M��  � ��� l     ��������  ��  ��  � ��� l     ��� ��  � z t �������������������������������������������������������������������������������������������������������������������     � �   " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " "�  l     ��������  ��  ��    i      I      ������ ,0 fileextensionremover fileExtensionRemover 	��	 o      ���� 0 docname docName��  ��   k     E

  l     r      n     1    ��
�� 
txdl 1     ��
�� 
ascr o      ���� 0 olddelimiters oldDelimiters * $ always preserve original delimiters    � H   a l w a y s   p r e s e r v e   o r i g i n a l   d e l i m i t e r s  r     J    	 �� m     �  .��   n      1   
 ��
�� 
txdl 1   	 
��
�� 
ascr   r    !"! n    #$# 2   ��
�� 
citm$ l   %����% c    &'& o    ���� 0 docname docName' m    ��
�� 
ctxt��  ��  " o      ���� 0 	pathitems 	pathItems  ()( Z    6*+��,* ?    -.- l   /����/ I   ��0��
�� .corecnte****       ****0 o    ���� 0 	pathitems 	pathItems��  ��  ��  . m    11 �22  2+ r     -343 n     +565 7  ! +��78
�� 
cobj7 m   % '���� 8 m   ( *������6 o     !���� 0 	pathitems 	pathItems4 o      ���� 0 	pathitems 	pathItems��  , r   0 69:9 n   0 4;<; 4   1 4��=
�� 
cobj= m   2 3���� < o   0 1���� 0 	pathitems 	pathItems: o      ���� 0 	pathitems 	pathItems) >?> r   7 <@A@ c   7 :BCB o   7 8���� 0 	pathitems 	pathItemsC m   8 9��
�� 
TEXTA o      ���� 0 
newdocname 
newdocName? DED l  = BFGHF r   = BIJI o   = >���� 0 olddelimiters oldDelimitersJ n     KLK 1   ? A��
�� 
txdlL 1   > ?��
�� 
ascrG ) # always restore original delimiters   H �MM F   a l w a y s   r e s t o r e   o r i g i n a l   d e l i m i t e r sE N��N L   C EOO o   C D�� 0 
newdocname 
newdocName��   PQP l     �~�}�|�~  �}  �|  Q RSR l     �{TU�{  T z t �������������������������������������������������������������������������������������������������������������������   U �VV �   " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " "S WXW l     �z�y�x�z  �y  �x  X YZY i   ! $[\[ I      �w]�v�w 0 
pageranger 
pageRanger] ^�u^ o      �t�t 0 	pagerange 	pageRange�u  �v  \ O     "_`_ k    !aa bcb O    ded l   fghf r    iji 1    �s
�s 
pctyj o      �r�r (0 preservedpagerange preservedPageRangeg , & always preserve original preferences    h �kk L   a l w a y s   p r e s e r v e   o r i g i n a l   p r e f e r e n c e s  e 1    �q
�q 
DFpfc lml l   �p�o�n�p  �o  �n  m n�mn O    !opo r     qrq o    �l�l 0 	pagerange 	pageRanger 1    �k
�k 
pctyp 1    �j
�j 
DFpf�m  ` 5     �is�h
�i 
capps m    tt �uu $ c o m . a d o b e . I n D e s i g n
�h kfrmID  Z vwv l     �g�f�e�g  �f  �e  w xyx l     �dz{�d  z z t �������������������������������������������������������������������������������������������������������������������   { �|| �   " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " "y }~} l     �c�b�a�c  �b  �a  ~ � l     �`���`  � z t �������������������������������������������������������������������������������������������������������������������   � ��� �   " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " "� ��� l     �_�^�]�_  �^  �]  � ��� i   % (��� I      �\�[�Z�\ 0 	linkcheck 	linkCheck�[  �Z  � O     ���� k    ��� ��� l   �Y�X�W�Y  �X  �W  � ��� r    ��� m    	�V
�V boovtrue� o      �U�U 0 stopbool stopBool� ��� r    ��� m    �T
�T boovtrue� o      �S�S 0 linkcheckbool linkCheckBool� ��� l   �R�Q�P�R  �Q  �P  � ��� Y    ���O���N� k    ��� ��� l   �M���M  � $ out of date/missing link check   � ��� < o u t   o f   d a t e / m i s s i n g   l i n k   c h e c k� ��� r    /��� l   -��L�K� 6   -��� n    $��� 2   " $�J
�J 
clnk� n   "��� 4    "�I�
�I 
cobj� o     !�H�H 0 x  � o    �G�G 0 opendocuments openDocuments� E   % ,��� 1   & (�F
�F 
stts� m   ) +�E
�E sttelmis�L  �K  � o      �D�D 0 missinglinks missingLinks� ��� r   0 A��� l  0 ?��C�B� 6  0 ?��� n   0 6��� 2   4 6�A
�A 
clnk� n  0 4��� 4   1 4�@�
�@ 
cobj� o   2 3�?�? 0 x  � o   0 1�>�> 0 opendocuments openDocuments� E   7 >��� 1   8 :�=
�= 
stts� m   ; =�<
�< sttelood�C  �B  � o      �;�; 0 modifiedlinks modifiedLinks� ��� r   B G��� b   B E��� o   B C�:�: 0 missinglinks missingLinks� o   C D�9�9 0 modifiedlinks modifiedLinks� o      �8�8 0 failedlinks failedLinks� ��� Z   H Y���7�6� >  H O��� l  H M��5�4� I  H M�3��2
�3 .corecnte****       ****� o   H I�1�1 0 failedlinks failedLinks�2  �5  �4  � m   M N�0�0  � r   R U��� m   R S�/
�/ boovfals� o      �.�. 0 linkcheckbool linkCheckBool�7  �6  � ��� Z   Z ����-�,� =  Z ]��� o   Z [�+�+ 0 linkcheckbool linkCheckBool� m   [ \�*
�* boovfals� I  ` ��)��
�) .sysodlogaskr        TEXT� b   ` z��� b   ` v��� b   ` t��� b   ` p��� b   ` n��� b   ` g��� b   ` e��� b   ` c��� m   ` a�� ��� ^ D o k u m e n t   h a t   m o d i f i z i e r t e   o d e r   f e h l e n d e   L i n k s !  � o   a b�(
�( 
ret � m   c d�� ��� R - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -� o   e f�'
�' 
ret � l  g m��&�%� n   g m��� 1   k m�$
�$ 
pnam� n  g k��� 4   h k�#�
�# 
cobj� o   i j�"�" 0 x  � o   g h�!�! 0 opendocuments openDocuments�&  �%  � o   n o� 
�  
ret � m   p s�� ��� R - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -� o   t u�
� 
ret � m   v y�� ��� J h a t   m o d i f i z i e r t e   o d e r   f e h l e n d e   L i n k s !� ���
� 
btns� J   } ��� ��� m   } ��� ��� 
 S t o p !� ��� m   � ��� ���  W e i t e r !�  � � �
� 
dflt  m   � � �  W e i t e r !�  �-  �,  � � Q   � �� Z   � ��� =  � �	 n   � �

 1   � ��
� 
bhit 1   � ��
� 
rslt	 m   � � � 
 S t o p ! r   � � m   � ��
� boovfals o      �� 0 stopbool stopBool�  �   R      ���
� .ascrerr ****      � ****�  �  �  �  �O 0 x  � m    �� � I   ��
� .corecnte****       **** o    �� 0 opendocuments openDocuments�  �N  � � l  � ��
�	��
  �	  �  �  � 5     ��
� 
capp m     � $ c o m . a d o b e . I n D e s i g n
� kfrmID  �  l     ����  �  �    l     ��   z t �������������������������������������������������������������������������������������������������������������������    � �   " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " "  l     �� ���  �   ��    i   ) , !  I      �������� &0 textoverflowcheck textOverflowCheck��  ��  ! O     �"#" k    �$$ %&% l   ��������  ��  ��  & '(' r    )*) m    	��
�� boovtrue* o      ���� 0 stopbool stopBool( +,+ r    -.- m    ��
�� boovtrue. o      ���� 0 textcheckbool textCheckBool, /0/ l   ��������  ��  ��  0 121 Y    �3��45��3 k    �66 787 l   ��9:��  9  text overflow check   : �;; & t e x t   o v e r f l o w   c h e c k8 <=< l   ��>?��  > � �set textOverflows to (every text frame of openDocuments's item x whose overflows is true) --this checks all layers, visible or not   ? �@@ s e t   t e x t O v e r f l o w s   t o   ( e v e r y   t e x t   f r a m e   o f   o p e n D o c u m e n t s ' s   i t e m   x   w h o s e   o v e r f l o w s   i s   t r u e )   - - t h i s   c h e c k s   a l l   l a y e r s ,   v i s i b l e   o r   n o t= ABA l   ;CDEC r    ;FGF l   9H����H 6   9IJI n    $KLK 2   " $��
�� 
txtfL n   "MNM 4    "��O
�� 
cobjO o     !���� 0 x  N o    ���� 0 opendocuments openDocumentsJ F   % 8PQP =  & -RSR 1   ' )��
�� 
OVRFS m   * ,��
�� boovtrueQ =  . 7TUT n  / 3VWV 1   1 3��
�� 
pvisW 1   / 1��
�� 
pilrU m   4 6��
�� boovtrue��  ��  G o      ���� 0 textoverflows textOverflowsD % this just checks visible layers   E �XX > t h i s   j u s t   c h e c k s   v i s i b l e   l a y e r sB YZY l  < <��[\��  [ c ]set missingLinks to (every link of openDocuments's item x whose status contains link missing)   \ �]] � s e t   m i s s i n g L i n k s   t o   ( e v e r y   l i n k   o f   o p e n D o c u m e n t s ' s   i t e m   x   w h o s e   s t a t u s   c o n t a i n s   l i n k   m i s s i n g )Z ^_^ l  < <��`a��  ` h bset modifiedLinks to (every link of openDocuments's item x whose status contains link out of date)   a �bb � s e t   m o d i f i e d L i n k s   t o   ( e v e r y   l i n k   o f   o p e n D o c u m e n t s ' s   i t e m   x   w h o s e   s t a t u s   c o n t a i n s   l i n k   o u t   o f   d a t e )_ cdc l  < <��ef��  e 5 /set failedLinks to missingLinks & modifiedLinks   f �gg ^ s e t   f a i l e d L i n k s   t o   m i s s i n g L i n k s   &   m o d i f i e d L i n k sd hih Z   < Mjk����j >  < Clml l  < An����n I  < A��o��
�� .corecnte****       ****o o   < =���� 0 textoverflows textOverflows��  ��  ��  m m   A B����  k r   F Ipqp m   F G��
�� boovfalsq o      ���� 0 textcheckbool textCheckBool��  ��  i rsr Z   N �tu����t =  N Qvwv o   N O���� 0 textcheckbool textCheckBoolw m   O P��
�� boovfalsu I  T ���xy
�� .sysodlogaskr        TEXTx b   T pz{z b   T l|}| b   T j~~ b   T f��� b   T d��� b   T [��� b   T Y��� b   T W��� m   T U�� ��� 6 D o k u m e n t   h a t   T e x t � b e r h a n g !  � o   U V��
�� 
ret � m   W X�� ��� R - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -� o   Y Z��
�� 
ret � l  [ c������ n   [ c��� 1   _ c��
�� 
pnam� n  [ _��� 4   \ _���
�� 
cobj� o   ] ^���� 0 x  � o   [ \���� 0 opendocuments openDocuments��  ��  � o   d e��
�� 
ret  m   f i�� ��� R - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -} o   j k��
�� 
ret { m   l o�� ��� � h a t   T e x t � b e r h a n g .   D a s   s k - I n D e s i g n - S k r i p t   � g o T o F i r s t T e x t O v e r f l o w �   f i n d e t   � b e r h � n g e !y ����
�� 
btns� J   s ~�� ��� m   s v�� ��� 
 S t o p !� ��� m   v y�� ��� , G e h e   z u   e r s t e r   S t e l l e !� ���� m   y |�� ���  W e i t e r !��  � �����
�� 
dflt� m   � ��� ���  W e i t e r !��  ��  ��  s ���� Q   � ������ Z   � ������� =  � ���� n   � ���� 1   � ���
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
�� .ascrerr ****      � ****��  ��  ��  ��  �� 0 x  4 m    ���� 5 I   �����
�� .corecnte****       ****� o    ���� 0 opendocuments openDocuments��  ��  2 ���� l  � ���������  ��  ��  ��  # 5     �����
�� 
capp� m    �� ��� $ c o m . a d o b e . I n D e s i g n
�� kfrmID   ��� l     ��������  ��  ��  � ��� l     ������  � z t �������������������������������������������������������������������������������������������������������������������   � ��� �   " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " "� ��� l     ��������  ��  ��  � ��� i   - 0��� I      ������� (0 inputrangesplitter inputRangeSplitter� ���� o      ���� 0 
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
ascr� ��� r    ��� n    ��� 2   ��
�� 
citm� o    ���� 0 
inputrange 
inputRange� o      ���� 0 splittedrange splittedRange� ��� l   � � r     o    ���� 0 olddelimiters oldDelimiters n      1    ��
�� 
txdl 1    ��
�� 
ascr  ) # always restore original delimiters    � F   a l w a y s   r e s t o r e   o r i g i n a l   d e l i m i t e r s� �� L     o    ���� 0 splittedrange splittedRange��  � 	
	 l     ��������  ��  ��  
  l     ����   z t �������������������������������������������������������������������������������������������������������������������    � �   " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " "  l     ��������  ��  ��    i   1 4 I      ����� ,0 splittedrangecleaner splittedRangeCleaner �~ o      �}�} 0 splittedrange splittedRange�~  �   l     �|�{�z�|  �{  �z    l     �y�x�w�y  �x  �w    l     �v�v   z t �������������������������������������������������������������������������������������������������������������������    � �   " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " "   l     �u�t�s�u  �t  �s    !"! i   5 8#$# I      �r�q�p�r $0 textoverflowgoer textOverflowGoer�q  �p  $ k     2%% &'& O     0()( k    /** +,+ l   �o�n�m�o  �n  �m  , -�l- Z    /./�k0. >   121 l   3�j�i3 I   �h4�g
�h .corecnte****       ****4 o    	�f�f 0 textoverflows textOverflows�g  �j  �i  2 m    �e�e  / k    '55 676 r    898 n    :;: 1    �d
�d 
pnam; n    <=< 1    �c
�c 
PaPa= n    >?> 4   �b@
�b 
cobj@ m    �a�a ? o    �`�` 0 textoverflows textOverflows9 o      �_�_ 0 
activepage 
activePage7 A�^A r    'BCB n    #DED 4     #�]F
�] 
pageF o   ! "�\�\ 0 
activepage 
activePageE n     GHG 1     �[
�[ 
pareH o    �Z�Z 0 activewindow activeWindowC n      IJI 1   $ &�Y
�Y 
pacpJ o   # $�X�X 0 activewindow activeWindow�^  �k  0 I  * /�WK�V
�W .sysobeepnull��� ��� longK l  * +L�U�TL m   * +�S�S �U  �T  �V  �l  ) 5     �RM�Q
�R 
cappM m    NN �OO $ c o m . a d o b e . I n D e s i g n
�Q kfrmID  ' P�PP l  1 1�O�N�M�O  �N  �M  �P  " QRQ l     �L�K�J�L  �K  �J  R STS l     �IUV�I  U z t �������������������������������������������������������������������������������������������������������������������   V �WW �   " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " "T XYX l     �H�G�F�H  �G  �F  Y Z[Z i   9 <\]\ I      �E^�D�E 0 zoomthepages zoomThePages^ _�C_ o      �B�B 0 	thewindow 	theWindow�C  �D  ] O     4`a` k    3bb cdc l   �A�@�?�A  �@  �?  d efe O    1ghg k    0ii jkj I   �>l�=
�> .K2  seltnull���     ****l m    �<
�< senmnada�=  k mnm l   opqo I   �;�:r
�; .K2  zmtonull���     Lwin�:  r �9s�8
�9 
givns m    �7
�7 zopezftp�8  p  spread   q �tt  s p r e a dn u�6u Z    0vw�5�4v >   !xyx l   z�3�2z I   �1{�0
�1 .corecnte****       ****{ o    �/�/ 0 textoverflows textOverflows�0  �3  �2  y m     �.�.  w r   $ ,|}| n   $ (~~ 4  % (�-�
�- 
cobj� m   & '�,�,  o   $ %�+�+ 0 textoverflows textOverflows} n      ��� 1   ) +�*
�* 
sele� o   ( )�)�) 0 activewindow activeWindow�5  �4  �6  h o    	�(�( 0 	thewindow 	theWindowf ��'� l  2 2�&�%�$�&  �%  �$  �'  a 5     �#��"
�# 
capp� m    �� ��� $ c o m . a d o b e . I n D e s i g n
�" kfrmID  [ ��� l     �!� ��!  �   �  � ��� l     ����  � z t �������������������������������������������������������������������������������������������������������������������   � ��� �   " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " "� ��� l     ����  �  �  � ��� i   = @��� I      ���� 0 displaytheend displayTheEnd�  �  � I    ���
� .sysodlogaskr        TEXT� m     �� ��� ^ D e r   E x p o r t   w i r d   j e t z t   i m   H i n t e r g r u n d   a u s g e f � h r t� ���
� 
btns� m    �� ���  O K� ���
� 
dflt� m    �� ���  O K� ���
� 
givu� m    �� �  � ��� l     ����  �  �  � ��� l     ����  � z t �������������������������������������������������������������������������������������������������������������������   � ��� �   " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " "� ��� l     ����  �  �  � ��� l     �
���
  � L Fmy displayNotificationLong("Title text", "Subtitle text", "Body text")   � ��� � m y   d i s p l a y N o t i f i c a t i o n L o n g ( " T i t l e   t e x t " ,   " S u b t i t l e   t e x t " ,   " B o d y   t e x t " )� ��� i   A D��� I      �	���	 20 displaynotificationlong displayNotificationLong� ��� o      �� 0 	titletext 	titleText� ��� o      �� 0 subtitletext subtitleText� ��� o      �� 0 bodytext bodyText�  �  � k     �� ��� l    	���� I    	���
� .sysonotfnull��� ��� TEXT� o     �� 0 bodytext bodyText� ���
� 
appr� o    � �  0 	titletext 	titleText� �����
�� 
subt� o    ���� 0 subtitletext subtitleText��  �  sound name "default"   � ��� ( s o u n d   n a m e   " d e f a u l t "� ���� l  
 
������  �  	delay 0.5   � ���  d e l a y   0 . 5��  � ��� l     ��������  ��  ��  � ��� l     ������  � z t �������������������������������������������������������������������������������������������������������������������   � ��� �   " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " "� ��� l     ��������  ��  ��  � ��� l     ������  � < 6my displayNotificationShort("Title text", "Body text")   � ��� l m y   d i s p l a y N o t i f i c a t i o n S h o r t ( " T i t l e   t e x t " ,   " B o d y   t e x t " )� ���� i   E H��� I      ������� 40 displaynotificationshort displayNotificationShort� ��� o      ���� 0 	titletext 	titleText� ���� o      ���� 0 bodytext bodyText��  ��  � k     	�� ��� l    ���� I    ����
�� .sysonotfnull��� ��� TEXT� o     ���� 0 bodytext bodyText� �����
�� 
appr� o    ���� 0 	titletext 	titleText��  �  sound name "default"   � ��� ( s o u n d   n a m e   " d e f a u l t "� ���� l   ������  �  	delay 0.5   � ���  d e l a y   0 . 5��  ��       (���������������������� ������������������������������  � &������������������������������������������������������������������������������  0 functionchoice functionChoice�� 0 chosenpreset chosenPreset�� 0 	pagerange 	pageRange�� "0 functionchooser functionChooser�� .0 pdfexportersinglepage pdfExporterSinglepage�� ,0 pdfexportermultipage pdfExporterMultipage�� 0 idmlexporter idmlExporter�� ,0 fileextensionremover fileExtensionRemover�� 0 
pageranger 
pageRanger�� 0 	linkcheck 	linkCheck�� &0 textoverflowcheck textOverflowCheck�� (0 inputrangesplitter inputRangeSplitter�� ,0 splittedrangecleaner splittedRangeCleaner�� $0 textoverflowgoer textOverflowGoer�� 0 zoomthepages zoomThePages�� 0 displaytheend displayTheEnd�� 20 displaynotificationlong displayNotificationLong�� 40 displaynotificationshort displayNotificationShort
�� .aevtoappnull  �   � ****��  0 activedocument activeDocument�� 0 activewindow activeWindow�� 0 opendocuments openDocuments�� ,0 pdfpresetsoncomputer pdfPresetsOnComputer�� 0 stopbool stopBool�� 0 textoverflows textOverflows�� (0 preservedpagerange preservedPageRange��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  � ����    � . P D F - E x p o r t   ( M e h r s e i t i g )� ����   		 �

  s k - S c r e e n� �  a l l   p a g e s� ���������� "0 functionchooser functionChooser��  ��     ���� ��#����1��>��M��
�� 
inSL
�� 
prmp
�� 
okbt�� 
�� .gtqpchltns    @   @ ns  �� .0 pdfexportersinglepage pdfExporterSinglepage�� ,0 pdfexportermultipage pdfExporterMultipage�� 0 idmlexporter idmlExporter�� i���mv�b   ����� 	Ec   Ob   �kv  )b   k+ Y 5b   �kv  )b   k+ Y b   �kv  )b   k+ Y hOP� ��a�������� .0 pdfexportersinglepage pdfExporterSinglepage�� ����   ����  0 functionchoice functionChoice��   ������������������  0 functionchoice functionChoice�� 0 
buttonname 
buttonName�� 0 
inputrange 
inputRange�� 0 x  �� 0 docname docName�� 0 
newdocname 
newdocName�� 0 filepath filePath�� 0 exportpreset exportPreset .m��������y��������������������������������������~�}�|�{�z�y���x�w�v�u�t�s�r*=K�q
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
pnam� ,0 fileextensionremover fileExtensionRemover
�~ 
path
�} 
TEXT
�| 
PFst
�{ 
exft
�z eXftt_PD
�y 
kfil
�x 
usng
�w 
imot�v 
�u .K2  exAscBKT        docu
�t 
DFpf�s (0 preservedpagerange preservedPageRange
�r 
pcty�q 20 displaynotificationlong displayNotificationLong��#��%�&E�O��b  ���� Ec  Ob  f ���%�%�b  l O��,E�O*�k+ O)a a a 0 � �k_ j kh )_ a �/k+ O_ a ,E�O)�k+ E�O_ a ,a &E�O*a b  a &/E�O_ a a a  ��%a !%_ a �/%a "%a #�a $fa % &OP[OY��O*a ', _ (*a ),FUOPUOb  a *kv  )a +b  a k/a &a ,�%m+ -Y hOPY h� �pZ�o�n�m�p ,0 pdfexportermultipage pdfExporterMultipage�o �l�l   �k�k  0 functionchoice functionChoice�n   �j�i�h�g�f�e�d�j  0 functionchoice functionChoice�i 0 
buttonname 
buttonName�h 0 x  �g 0 docname docName�f 0 
newdocname 
newdocName�e 0 filepath filePath�d 0 exportpreset exportPreset 6f�c�b�a�`r�_�^�]��\��[�Z���Y��X�W�V��U���T�SN�R�Q�P�O�N�M�L�K�J �I�H�G�F�E�D�C/�B�A�@Zm��?
�c 
ctxt�b ,0 pdfpresetsoncomputer pdfPresetsOnComputer
�a 
inSL
�` 
prmp
�_ 
okbt�^ 
�] .gtqpchltns    @   @ ns  
�\ 
ret 
�[ 
dtxt
�Z 
btns
�Y 
dflt
�X .sysodlogaskr        TEXT
�W 
rslt
�V 
bhit
�U 
ttxt�T 0 
pageranger 
pageRanger
�S 
capp
�R kfrmID  �Q 0 opendocuments openDocuments
�P .corecnte****       ****
�O 
cobj
�N 
pnam�M ,0 fileextensionremover fileExtensionRemover
�L 
path
�K 
TEXT
�J 
PFst
�I 
exft
�H eXftt_PD
�G 
kfil
�F 
usng
�E 
imot�D 
�C .K2  exAscBKT        docu
�B 
DFpf�A (0 preservedpagerange preservedPageRange
�@ 
pcty�? 20 displaynotificationlong displayNotificationLong�m���%�&E�O��b  ���� Ec  Ob  f G��%�%�b  ���lva a � O_ a ,a   _ a ,Ec  Y a Ec  Y a Ec  O)b  k+ O)a a a 0 � �k_ j kh _ a �/a  ,E�O)�k+ !E�O_ a �/a ",a #&E�O*a $b  a #&/E�Ob  a %kv  +_ a �/a &a 'a (��%a )%a *�a +fa , -Y (_ a �/a &a 'a (��%a .%a *�a +fa , -OP[OY�_O*a /, _ 0*a 1,FUOPUOb  a 2kv *)a 3b  a k/a #&_ j a #&a 4%m+ 5Y hOP� �>��=�<�;�> 0 idmlexporter idmlExporter�= �:�:   �9�9  0 functionchoice functionChoice�<   �8�7�6�5�4�8  0 functionchoice functionChoice�7 0 x  �6 0 docname docName�5 0 
newdocname 
newdocName�4 0 filepath filePath �3��2�1�0�/�.�-�,�+�*�)�(��'�&����%
�3 
capp
�2 kfrmID  �1 0 opendocuments openDocuments
�0 .corecnte****       ****
�/ 
cobj
�. 
pnam�- ,0 fileextensionremover fileExtensionRemover
�, 
path
�+ 
TEXT
�* 
exft
�) eXftidml
�( 
kfil�' 
�& .K2  exAscBKT        docu�% 20 displaynotificationlong displayNotificationLong�; c)���0 D Ak�j kh ��/�,E�O)�k+ E�O��/�,�&E�O��/��줣%�%� OP[OY��UO)a a �j �&a %m+ � �$�#�"�!�$ ,0 fileextensionremover fileExtensionRemover�# � �    �� 0 docname docName�"   ����� 0 docname docName� 0 olddelimiters oldDelimiters� 0 	pathitems 	pathItems� 0 
newdocname 
newdocName 
�����1���
� 
ascr
� 
txdl
� 
ctxt
� 
citm
� .corecnte****       ****
� 
cobj���
� 
TEXT�! F��,E�O�kv��,FO��&�-E�O�j � �[�\[Zk\Z�2E�Y ��k/E�O��&E�O���,FO�� �\���� 0 
pageranger 
pageRanger� ��   �� 0 	pagerange 	pageRange�   �� 0 	pagerange 	pageRange �t�
�	��
� 
capp
�
 kfrmID  
�	 
DFpf
� 
pcty� (0 preservedpagerange preservedPageRange� #)���0 *�, *�,E�UO*�, �*�,FUU� ������ 0 	linkcheck 	linkCheck�  �   ��� ����� 0 linkcheckbool linkCheckBool� 0 x  �  0 missinglinks missingLinks�� 0 modifiedlinks modifiedLinks�� 0 failedlinks failedLinks ����������������������������������������������
�� 
capp
�� kfrmID  �� 0 stopbool stopBool�� 0 opendocuments openDocuments
�� .corecnte****       ****
�� 
cobj
�� 
clnk  
�� 
stts
�� sttelmis
�� sttelood
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
bhit��  ��  � �)���0 �eE�OeE�O �k�j kh ��/�-�[�,\Z�@1E�O��/�-�[�,\Z�@1E�O��%E�O�j j fE�Y hO�f  6��%�%�%��/�,%�%a %�%a %a a a lva a a  Y hO _ a ,a   fE�Y hW X  h[OY�aOPU� ��!���� !���� &0 textoverflowcheck textOverflowCheck��  ��    ������ 0 textcheckbool textCheckBool�� 0 x  ! $�����������������������������������������������������������
�� 
capp
�� kfrmID  �� 0 stopbool stopBool�� 0 opendocuments openDocuments
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
bhit�� $0 textoverflowgoer textOverflowGoer�� 0 activewindow activeWindow�� 0 zoomthepages zoomThePages��  ��  �� �)���0 �eE�OeE�O �k�j kh ��/�-�[[�,\Ze8\[�,�,\Ze8A1E�O�j j fE�Y hO�f  ;��%�%�%��/a ,%�%a %�%a %a a a a mva a a  Y hO =_ a ,a   fE�Y &_ a ,a   )j+ O)_  k+ !OfE�Y hW X " #h[OY�EOPU� �������"#���� (0 inputrangesplitter inputRangeSplitter�� ��$�� $  ���� 0 
inputrange 
inputRange��  " ������ 0 
inputrange 
inputRange�� 0 olddelimiters oldDelimiters# ���������
�� 
ascr
�� 
txdl
�� 
citm�� 0 splittedrange splittedRange�� ��,E�O�kv��,FO��-E�O���,FO�� ������%&���� ,0 splittedrangecleaner splittedRangeCleaner�� ��'�� '  ���� 0 splittedrange splittedRange��  % ���� 0 splittedrange splittedRange&  �� h� ��$����()���� $0 textoverflowgoer textOverflowGoer��  ��  ( ���� 0 
activepage 
activePage) ��N����������������������
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
�� .sysobeepnull��� ��� long�� 3)���0 )�j j ��k/�,�,E�O��,�/��,FY mj UOP� ��]����*+���� 0 zoomthepages zoomThePages�� ��,�� ,  ���� 0 	thewindow 	theWindow��  * ���� 0 	thewindow 	theWindow+ �������������������������
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
sele�� 5)���0 -� &�j O*��l O�j 	j ��k/��,FY hUOPU� �������-.���� 0 displaytheend displayTheEnd��  ��  -  . �������������
�� 
btns
�� 
dflt
�� 
givu�� 
�� .sysodlogaskr        TEXT�� ������k� � �������/0���� 20 displaynotificationlong displayNotificationLong�� ��1�� 1  �������� 0 	titletext 	titleText�� 0 subtitletext subtitleText�� 0 bodytext bodyText��  / �������� 0 	titletext 	titleText�� 0 subtitletext subtitleText�� 0 bodytext bodyText0 ����~�}
�� 
appr
� 
subt�~ 
�} .sysonotfnull��� ��� TEXT�� ���� OP� �|��{�z23�y�| 40 displaynotificationshort displayNotificationShort�{ �x4�x 4  �w�v�w 0 	titletext 	titleText�v 0 bodytext bodyText�z  2 �u�t�u 0 	titletext 	titleText�t 0 bodytext bodyText3 �s�r
�s 
appr
�r .sysonotfnull��� ��� TEXT�y 
��l OP� �q5�p�o67�n
�q .aevtoappnull  �   � ****5 k     U88  ��m�m  �p  �o  6  7 �l ��k�j�i�h�g�f�e�d�c�b ��a�`�_�^�]
�l 
capp
�k kfrmID  
�j 
pacd�i  0 activedocument activeDocument
�h 
pacw�g 0 activewindow activeWindow
�f 
docu
�e 
pvis�d 0 opendocuments openDocuments
�c 
PFst
�b 
pnam�a ,0 pdfpresetsoncomputer pdfPresetsOnComputer�` 0 	linkcheck 	linkCheck�_ &0 textoverflowcheck textOverflowCheck�^ 0 stopbool stopBool�] "0 functionchooser functionChooser�n V)���0 N*�,E�O*�,E�O*�-�[�,\Ze81E�O*�-�,�[�,\Z�@C1E�O)j+ O)j+ O_ e  
)j+ Y hOPU  99 :�\�[�Z:(                                                                                  InDn  alis    �  Macintosh HD               ϓ�[H+  �OAdobe InDesign CC 2014.app                                     ����        ����  	                Adobe InDesign CC 2014    ϓ�;      �p    �O ��Y  MMacintosh HD:Applications: Adobe InDesign CC 2014: Adobe InDesign CC 2014.app   6  A d o b e   I n D e s i g n   C C   2 0 1 4 . a p p    M a c i n t o s h   H D  >Applications/Adobe InDesign CC 2014/Adobe InDesign CC 2014.app  / ��  
�\ 
docu�[  
�Z kfrmID   ;; <�Y�X�W< :�V�U�T
�V 
docu�U  
�T kfrmID  
�Y 
Lwin�X  "�
�W kfrmID   �S=�S =  >?> @@ :�R�Q�P
�R 
docu�Q  
�P kfrmID  ? AA :�O�N�M
�O 
docu�N 
�M kfrmID   �LB�L B  CDEFGHIJKLMNOC �PP J l i b r e k a _ D i s t i l l e r _ K o n f i g u r a t i o n s d a t e iD �QQ : s k - D r u c k d a t e n   ( w i e   D i s t i l l e r )E �RR > s k - D r u c k d a t e n   X - 3   ( D r u c k b o g e n )F �SS @ s k - D r u c k d a t e n   X - 3   ( P S O   U n c o a t e d )G �TT " s k - D r u c k d a t e n   X - 3H �UU 8 s k - H a n s g r o h e   B l a t t e r k a t a l o gI �VV ( s k - I n D e s i g n - F a r b s a t zJ �WW   s k - M e d i e n n e u t r a lK �XX   s k - S c r e e n   ( H i F i )L �YY  s k - S c r e e nM �ZZ  s k - T e m p o r a rN �[[   s k - A m a z o n   I n s i d eO �\\ , s k - S c r e e n   ( D r u c k b � g e n )
�� boovtrue �K]�K  ]   
�� ****prna��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��   ascr  ��ޭ