FasdUAS 1.101.10   ��   ��    k             l     ��  ��      ExportTool for InDesign     � 	 	 0   E x p o r t T o o l   f o r   I n D e s i g n   
  
 l     ��  ��      version 1.9.2.13     �   "   v e r s i o n   1 . 9 . 2 . 1 3      l     ��������  ��  ��        l     ��  ��    , & created by medul6, Michael Heck, 2012     �   L   c r e a t e d   b y   m e d u l 6 ,   M i c h a e l   H e c k ,   2 0 1 2      l     ��  ��    �  open sourced on September 7th, 2012 on Github > check the LICENSE.txt and README.md in the repository for detailed information     �   �   o p e n   s o u r c e d   o n   S e p t e m b e r   7 t h ,   2 0 1 2   o n   G i t h u b   >   c h e c k   t h e   L I C E N S E . t x t   a n d   R E A D M E . m d   i n   t h e   r e p o s i t o r y   f o r   d e t a i l e d   i n f o r m a t i o n      l     ��  ��    5 / https://github.com/medul6/indesign-export-tool     �   ^   h t t p s : / / g i t h u b . c o m / m e d u l 6 / i n d e s i g n - e x p o r t - t o o l     !   l     ��������  ��  ��   !  " # " l     �� $ %��   $ z t �������������������������������������������������������������������������������������������������������������������    % � & & �   " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " #  ' ( ' l     ��������  ��  ��   (  ) * ) l     �� + ,��   +   global variables    , � - - "   g l o b a l   v a r i a b l e s *  . / . p       0 0 ������  0 activedocument activeDocument��   /  1 2 1 p       3 3 ������ 0 opendocuments openDocuments��   2  4 5 4 p       6 6 ������ 0 activewindow activeWindow��   5  7 8 7 p       9 9 ������ ,0 pdfpresetsoncomputer pdfPresetsOnComputer��   8  : ; : p       < < ������ (0 preservedpagerange preservedPageRange��   ;  = > = p       ? ? ������ 0 stopbool stopBool��   >  @ A @ p       B B ������ 0 splittedrange splittedRange��   A  C D C p       E E ������ (0 splittedrangemagic splittedRangeMagic��   D  F G F p       H H ������ 0 splittedmagic splittedMagic��   G  I J I l     ��������  ��  ��   J  K L K p       M M ������ 0 textoverflows textOverflows��   L  N O N l     ��������  ��  ��   O  P Q P l     �� R S��   R  test variables!!!    S � T T " t e s t   v a r i a b l e s ! ! ! Q  U V U l     �� W X��   W  global filePath    X � Y Y  g l o b a l   f i l e P a t h V  Z [ Z l     �� \ ]��   \  global chosenPresetText    ] � ^ ^ . g l o b a l   c h o s e n P r e s e t T e x t [  _ ` _ l     �� a b��   a  global docName    b � c c  g l o b a l   d o c N a m e `  d e d l     �� f g��   f  global newFilePath    g � h h $ g l o b a l   n e w F i l e P a t h e  i j i l     �� k l��   k  global pathItems    l � m m   g l o b a l   p a t h I t e m s j  n o n l     �� p q��   p  global pageRange    q � r r   g l o b a l   p a g e R a n g e o  s t s l     �� u v��   u  global newdocName    v � w w " g l o b a l   n e w d o c N a m e t  x y x l     �� z {��   z  global failedLinks    { � | | $ g l o b a l   f a i l e d L i n k s y  } ~ } l     ��  ���     global textOverflows    � � � � ( g l o b a l   t e x t O v e r f l o w s ~  � � � l     �� � ���   �  global modifiedLinks    � � � � ( g l o b a l   m o d i f i e d L i n k s �  � � � l     �� � ���   �  global missingLinks    � � � � & g l o b a l   m i s s i n g L i n k s �  � � � l     �� � ���   �  global exportPreset    � � � � & g l o b a l   e x p o r t P r e s e t �  � � � l     ��������  ��  ��   �  � � � l     �� � ���   �  properties!    � � � �  p r o p e r t i e s ! �  � � � j     �� ���  0 functionchoice functionChoice � J      � �  ��� � m      � � � � �  P D F - E x p o r t��   �  � � � j    	�� ��� 0 chosenpreset chosenPreset � J     � �  ��� � m     � � � � �  s k - S c r e e n��   �  � � � j   
 �� ��� 0 	pagerange 	pageRange � m   
  � � � � �  a l l   p a g e s �  � � � j    �� ��� 0 linkcheckbool linkCheckBool � m    ��
�� boovfals �  � � � j    �� ��� 0 textcheckbool textCheckBool � m    ��
�� boovfals �  � � � l     ��������  ��  ��   �  � � � l     �� � ���   � z t �������������������������������������������������������������������������������������������������������������������    � � � � �   " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " �  � � � l     ��������  ��  ��   �  � � � l    N ����� � O     N � � � k    M � �  � � � l   ��������  ��  ��   �  � � � l   �� � ���   � C = set up some informations from the current state as variables    � � � � z   s e t   u p   s o m e   i n f o r m a t i o n s   f r o m   t h e   c u r r e n t   s t a t e   a s   v a r i a b l e s �  � � � r     � � � 1    ��
�� 
pacd � o      ����  0 activedocument activeDocument �  � � � r     � � � 1    ��
�� 
pacw � o      ���� 0 activewindow activeWindow �  � � � l   ��������  ��  ��   �  � � � O      � � � l    � � � � r     � � � 1    ��
�� 
pcty � o      ���� (0 preservedpagerange preservedPageRange � , & always preserve original preferences     � � � � L   a l w a y s   p r e s e r v e   o r i g i n a l   p r e f e r e n c e s   � 1    ��
�� 
DFpf �  � � � l  ! !��������  ��  ��   �  � � � l  ! !�� � ���   � ) #set openDocuments to every document    � � � � F s e t   o p e n D o c u m e n t s   t o   e v e r y   d o c u m e n t �  � � � r   ! / � � � 6  ! - � � � 2   ! $��
�� 
docu � =  % , � � � 1   & (��
�� 
pvis � m   ) +��
�� boovtrue � o      ���� 0 opendocuments openDocuments �  � � � l  0 0��������  ��  ��   �  � � � l  0 0�� � ���   � � � only pdf presets are captured that are not build in. we have our own! remove the whose clause to show all of them, or modify the whose clause to show only them.    � � � �B   o n l y   p d f   p r e s e t s   a r e   c a p t u r e d   t h a t   a r e   n o t   b u i l d   i n .   w e   h a v e   o u r   o w n !   r e m o v e   t h e   w h o s e   c l a u s e   t o   s h o w   a l l   o f   t h e m ,   o r   m o d i f y   t h e   w h o s e   c l a u s e   t o   s h o w   o n l y   t h e m . �  � � � r   0 E � � � 6  0 A � � � n   0 5 � � � 1   3 5��
�� 
pnam � 2   0 3��
�� 
PFst � H   6 @ � � E   6 ? � � � 1   7 9��
�� 
pnam � m   : > � � � � �  [ � o      ���� ,0 pdfpresetsoncomputer pdfPresetsOnComputer �  � � � l  F F��������  ��  ��   �    n  F K I   G K�������� "0 functionchooser functionChooser��  ��    f   F G �� l  L L��������  ��  ��  ��   � 5     ����
�� 
capp m     � $ c o m . a d o b e . I n D e s i g n
�� kfrmID  ��  ��   � 	 l     ��������  ��  ��  	 

 l     ����   z t �������������������������������������������������������������������������������������������������������������������    � �   " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " "  l     ��������  ��  ��    i     I      ����~�� "0 functionchooser functionChooser�  �~   k     h  r      I    �}
�} .gtqpchltns    @   @ ns   J       m      �   2 P D F - E x p o r t   ( E i n z e l s e i t e n ) !"! m    ## �$$ . P D F - E x p o r t   ( M e h r s e i t i g )" %�|% m    && �''  I D M L - E x p o r t�|   �{()
�{ 
inSL( o    �z�z  0 functionchoice functionChoice) �y*+
�y 
prmp* m    ,, �--   F u n k t i o n   w � h l e n :+ �x.�w
�x 
okbt. m    // �00  W e i t e r !�w   o      �v�v  0 functionchoice functionChoice 121 l   �u�t�s�u  �t  �s  2 343 Z    f567�r5 =    #898 l   :�q�p: o    �o�o  0 functionchoice functionChoice�q  �p  9 J    ";; <�n< m     == �>> 2 P D F - E x p o r t   ( E i n z e l s e i t e n )�n  6 n   & 0?@? I   ' 0�mA�l�m .0 pdfexportersinglepage pdfExporterSinglepageA B�kB o   ' ,�j�j  0 functionchoice functionChoice�k  �l  @  f   & '7 CDC =   3 <EFE l  3 8G�i�hG o   3 8�g�g  0 functionchoice functionChoice�i  �h  F J   8 ;HH I�fI m   8 9JJ �KK . P D F - E x p o r t   ( M e h r s e i t i g )�f  D LML n   ? INON I   @ I�eP�d�e ,0 pdfexportermultipage pdfExporterMultipageP Q�cQ o   @ E�b�b  0 functionchoice functionChoice�c  �d  O  f   ? @M RSR =   L UTUT l  L QV�a�`V o   L Q�_�_  0 functionchoice functionChoice�a  �`  U J   Q TWW X�^X m   Q RYY �ZZ  I D M L - E x p o r t�^  S [�][ n   X b\]\ I   Y b�\^�[�\ 0 idmlexporter idmlExporter^ _�Z_ o   Y ^�Y�Y  0 functionchoice functionChoice�Z  �[  ]  f   X Y�]  �r  4 `�X` l  g g�W�V�U�W  �V  �U  �X   aba l     �T�S�R�T  �S  �R  b cdc l     �Qef�Q  e z t �������������������������������������������������������������������������������������������������������������������   f �gg �   " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " "d hih l     �P�O�N�P  �O  �N  i jkj i    lml I      �Mn�L�M .0 pdfexportersinglepage pdfExporterSinglepagen o�Ko o      �J�J  0 functionchoice functionChoice�K  �L  m k    7pp qrq l     �I�H�G�I  �H  �G  r sts O     uvu r    wxw 1    �F
�F 
pacdx o      �E�E 0 opendocuments openDocumentsv 5     �Dy�C
�D 
cappy m    zz �{{ $ c o m . a d o b e . I n D e s i g n
�C kfrmID  t |}| l   �B�A�@�B  �A  �@  } ~~ n   ��� I    �?�>�=�? 0 	linkcheck 	linkCheck�>  �=  �  f     ��� n   ��� I    �<�;�:�< &0 textoverflowcheck textOverflowCheck�;  �:  �  f    � ��9� Z   7���8�� F    .��� =   "��� o     �7�7 0 linkcheckbool linkCheckBool� m     !�6
�6 boovtrue� =  % ,��� o   % *�5�5 0 textcheckbool textCheckBool� m   * +�4
�4 boovtrue� k   12�� ��� r   1 8��� c   1 6��� b   1 4��� o   1 2�3�3  0 functionchoice functionChoice� m   2 3�� ���  !� m   4 5�2
�2 
ctxt� o      �1�1 0 
buttonname 
buttonName� ��� r   9 N��� I  9 H�0��
�0 .gtqpchltns    @   @ ns  � o   9 :�/�/ ,0 pdfpresetsoncomputer pdfPresetsOnComputer� �.��
�. 
inSL� o   ; @�-�- 0 chosenpreset chosenPreset� �,��
�, 
prmp� m   A B�� ��� $ P D F - P r e s e t   w � h l e n :� �+��*
�+ 
okbt� o   C D�)�) 0 
buttonname 
buttonName�*  � o      �(�( 0 chosenpreset chosenPreset� ��'� Z   O2���&�� >  O V��� o   O T�%�% 0 chosenpreset chosenPreset� m   T U�$
�$ boovfals� k   Y-�� ��� I  Y ��#��
�# .sysodlogaskr        TEXT� b   Y d��� b   Y `��� m   Y \�� ��� N W e l c h e   S e i t e n   s o l l e n   e x p o r t i e r t   w e r d e n ?� o   \ _�"
�" 
ret � m   ` c�� ��� f S e i t e n   m � s s e n   n i c h t   z u s a m m e n h � n g e n ,   z . B .   ' 2 - 3 , 8 - 1 9 '� �!��
�! 
dtxt� o   g l� �  0 	pagerange 	pageRange� ���
� 
btns� J   o z�� ��� m   o r�� ���  A b b r e c h e n !� ��� m   r u�� ���  A l l   P a g e s� ��� m   u x�� ���  W e i t e r !�  � ���
� 
dflt� m   } ��� ���  W e i t e r !�  � ��� l  � �����  �  �  � ��� Z   � ������ =  � ���� n   � ���� 1   � ��
� 
bhit� 1   � ��
� 
rslt� m   � ��� ���  W e i t e r !� r   � ���� l  � ����� n   � ���� 1   � ��
� 
ttxt� 1   � ��
� 
rslt�  �  � o      �� 0 
inputrange 
inputRange� ��� =  � ���� n   � ���� 1   � ��
� 
bhit� 1   � ��
� 
rslt� m   � ��� ���  A b b r e c h e n !� ��� L   � ���  � ��� =  � ���� n   � ���� 1   � ��
� 
bhit� 1   � ��
� 
rslt� m   � ��� ���  A l l   P a g e s� ��� O   � ���� r   � ���� m   � ��� ���  a l l   p a g e s� o      �
�
 0 
inputrange 
inputRange� 5   � ��	��
�	 
capp� m   � ��� ��� $ c o m . a d o b e . I n D e s i g n
� kfrmID  �  �  � ��� l  � �����  �  �  � ��� r   � �   o   � ��� 0 
inputrange 
inputRange o      �� 0 	pagerange 	pageRange�  l  � ���� �  �  �     Z   ����� =  � �	 o   � ����� 0 
inputrange 
inputRange	 m   � �

 �  a l l   p a g e s O   � � r   � � n   � � 1   � ���
�� 
pnam n   � � 2   � ���
�� 
page 1   � ���
�� 
pacd o      ���� 0 
inputrange 
inputRange 5   � �����
�� 
capp m   � � � $ c o m . a d o b e . I n D e s i g n
�� kfrmID  ��  ��    l ��������  ��  ��    n  I  ������ (0 inputrangesplitter inputRangeSplitter �� o  ���� 0 
inputrange 
inputRange��  ��    f     n 	!"! I  
��#���� 0 magicsplitter MagicSplitter# $��$ o  
���� 0 splittedrange splittedRange��  ��  "  f  	
  %&% l ��������  ��  ��  & '(' O  �)*) k  �++ ,-, l ��������  ��  ��  - ./. Y  �0��12��0 l ,�3453 k  ,�66 787 l ,,��������  ��  ��  8 9:9 n ,9;<; I  -9��=���� 0 
pageranger 
pageRanger= >��> n -5?@? 4  05��A
�� 
cobjA o  34���� 0 x  @ o  -0���� 0 splittedmagic splittedMagic��  ��  <  f  ,-: BCB l ::��������  ��  ��  C DED r  :CFGF n  :AHIH 1  =A��
�� 
pnamI o  :=����  0 activedocument activeDocumentG o      ���� 0 docname docNameE JKJ r  DLLML n DJNON I  EJ��P���� ,0 fileextensionremover fileExtensionRemoverP Q��Q o  EF���� 0 docname docName��  ��  O  f  DEM o      ���� 0 
newdocname 
newdocNameK RSR r  MZTUT l MXV����V c  MXWXW n  MTYZY 1  PT��
�� 
pathZ o  MP����  0 activedocument activeDocumentX m  TW��
�� 
TEXT��  ��  U o      ���� 0 filepath filePathS [\[ r  [k]^] 4  [i��_
�� 
PFst_ l _h`����` c  _haba o  _d���� 0 chosenpreset chosenPresetb m  dg��
�� 
TEXT��  ��  ^ o      ���� 0 exportpreset exportPreset\ cdc l ll��������  ��  ��  d efe I l���gh
�� .K2  exAscBKT        docug o  lo����  0 activedocument activeDocumenth ��ij
�� 
exfti m  ru��
�� eXftt_PDj ��kl
�� 
kfilk l x�m����m b  x�non b  x�pqp b  xrsr b  x{tut o  xy���� 0 filepath filePathu o  yz���� 0 
newdocname 
newdocNames m  {~vv �ww    sq l �x����x n �yzy 4  ����{
�� 
cobj{ o  ������ 0 x  z o  ����� 0 splittedmagic splittedMagic��  ��  o m  ��|| �}}  . p d f��  ��  l ��~
�� 
usng~ o  ������ 0 exportpreset exportPreset �����
�� 
imot� m  ����
�� boovfals��  f ���� l ����������  ��  ��  ��  4 5 / this iterates through magically splitted pages   5 ��� ^   t h i s   i t e r a t e s   t h r o u g h   m a g i c a l l y   s p l i t t e d   p a g e s�� 0 x  1 m   ���� 2 I  '�����
�� .corecnte****       ****� o   #���� 0 splittedmagic splittedMagic��  ��  / ��� l ����������  ��  ��  � ��� l ����������  ��  ��  � ��� O  ����� l ������ r  ����� o  ������ (0 preservedpagerange preservedPageRange� 1  ����
�� 
pcty� * $ always restore original preferences   � ��� H   a l w a y s   r e s t o r e   o r i g i n a l   p r e f e r e n c e s� 1  ����
�� 
DFpf� ��� l ����������  ��  ��  � ��� l ��������  �  wait for all tasks   � ��� $ w a i t   f o r   a l l   t a s k s� ���� l ����������  ��  ��  ��  * 5  �����
�� 
capp� m  �� ��� $ c o m . a d o b e . I n D e s i g n
�� kfrmID  ( ��� l ����������  ��  ��  � ���� Z  �-������� > ����� o  ������ 0 chosenpreset chosenPreset� J  ���� ���� m  ���� ���  s k - T e m p o r � r��  � k  �)�� ��� l ��������  �  my displayTheEnd()   � ��� $ m y   d i s p l a y T h e E n d ( )� ��� l ��������  � T Nmy displayNotificationShort("PDF Export gestartet", "Dokument: " & newdocName)   � ��� � m y   d i s p l a y N o t i f i c a t i o n S h o r t ( " P D F   E x p o r t   g e s t a r t e t " ,   " D o k u m e n t :   "   &   n e w d o c N a m e )� ��� n ����� I  ��������� 20 displaynotificationlong displayNotificationLong� ��� m  ���� ��� ( P D F   E x p o r t   g e s t a r t e t� ��� l �������� c  ����� l �������� n  ����� 4  �����
�� 
cobj� m  ������ � o  ������ 0 chosenpreset chosenPreset��  ��  � m  ���
� 
TEXT��  ��  � ��~� b  ����� m  ���� ���  D o k u m e n t :  � o  ���}�} 0 
newdocname 
newdocName�~  ��  �  f  ��� ��|� O  �)��� Z  �(���{�z� H  ��� l ���y�x� I ��w��v
�w .CoRedoexbool        obj � l � ��u�t� 6 � ��� 2  ���s
�s 
EvLi� = ����� 1  ���r
�r 
pEvT� m  ���� ���  a f t e r E x p o r t�u  �t  �v  �y  �x  � I $�q��
�q .corecrel****      � null� m  �p
�p 
EvLi� �o��n
�o 
prdt� K   �� �m��
�m 
pEvT� m  �� ���  a f t e r E x p o r t� �l��k
�l 
pHnd� n ��� o  �j�j D0  myafterexportnotificationhandler  myAfterExportNotificationHandler�  f  �k  �n  �{  �z  � 5  ���i��h
�i 
capp� m  ���� ��� $ c o m . a d o b e . I n D e s i g n
�h kfrmID  �|  ��  ��  ��  �&  � L  02�g�g  �'  �8  � L  57�f�f  �9  k ��� l     �e�d�c�e  �d  �c  � ��� l     �b���b  � z t �������������������������������������������������������������������������������������������������������������������   � ��� �   " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " "� ��� l     �a�`�_�a  �`  �_  � ��� i    ��� I      �^��]�^ ,0 pdfexportermultipage pdfExporterMultipage� ��\� o      �[�[  0 functionchoice functionChoice�\  �]  � k    *�� ��� n    ��� I    �Z�Y�X�Z 0 	linkcheck 	linkCheck�Y  �X  �  f     � ��� n   ��� I    �W�V�U�W &0 textoverflowcheck textOverflowCheck�V  �U  �  f    � ��T� Z   * �S  F     =    o    �R�R 0 linkcheckbool linkCheckBool m    �Q
�Q boovtrue =    o    �P�P 0 textcheckbool textCheckBool m    �O
�O boovtrue k   "%		 

 r   " ) c   " ' b   " % o   " #�N�N  0 functionchoice functionChoice m   # $ �  ! m   % &�M
�M 
ctxt o      �L�L 0 
buttonname 
buttonName  r   * ? I  * 9�K
�K .gtqpchltns    @   @ ns   o   * +�J�J ,0 pdfpresetsoncomputer pdfPresetsOnComputer �I
�I 
inSL o   , 1�H�H 0 chosenpreset chosenPreset �G
�G 
prmp m   2 3 � $ P D F - P r e s e t   w � h l e n : �F �E
�F 
okbt  o   4 5�D�D 0 
buttonname 
buttonName�E   o      �C�C 0 chosenpreset chosenPreset !"! Z   @ �#$�B%# >  @ G&'& o   @ E�A�A 0 chosenpreset chosenPreset' m   E F�@
�@ boovfals$ k   J �(( )*) l  J J�?+,�?  + 1 +if chosenPreset is not {"sk-Tempor�r"} then   , �-- V i f   c h o s e n P r e s e t   i s   n o t   { " s k - T e m p o r � r " }   t h e n* ./. I  J m�>01
�> .sysodlogaskr        TEXT0 b   J O232 b   J M454 m   J K66 �77 N W e l c h e   S e i t e n   s o l l e n   e x p o r t i e r t   w e r d e n ?5 o   K L�=
�= 
ret 3 m   M N88 �99 : ( W e n n   a l l e ,   d a n n   ' a l l   p a g e s ' )1 �<:;
�< 
dtxt: o   P U�;�; 0 	pagerange 	pageRange; �:<=
�: 
btns< J   X c>> ?@? m   X [AA �BB  A b b r e c h e n !@ CDC m   [ ^EE �FF  A l l   P a g e sD G�9G m   ^ aHH �II  W e i t e r !�9  = �8J�7
�8 
dfltJ m   f iKK �LL  W e i t e r !�7  / M�6M Z   n �NOP�5N =  n yQRQ n   n uSTS 1   q u�4
�4 
bhitT 1   n q�3
�3 
rsltR m   u xUU �VV  W e i t e r !O r   | �WXW l  | �Y�2�1Y n   | �Z[Z 1    ��0
�0 
ttxt[ 1   | �/
�/ 
rslt�2  �1  X o      �.�. 0 	pagerange 	pageRangeP \]\ =  � �^_^ n   � �`a` 1   � ��-
�- 
bhita 1   � ��,
�, 
rslt_ m   � �bb �cc  A b b r e c h e n !] ded L   � ��+�+  e fgf =  � �hih n   � �jkj 1   � ��*
�* 
bhitk 1   � ��)
�) 
rslti m   � �ll �mm  A l l   P a g e sg n�(n r   � �opo m   � �qq �rr  a l l   p a g e sp o      �'�' 0 	pagerange 	pageRange�(  �5  �6  �B  % L   � ��&�&  " sts l  � ��%�$�#�%  �$  �#  t uvu n  � �wxw I   � ��"y�!�" 0 
pageranger 
pageRangery z� z o   � ��� 0 	pagerange 	pageRange�   �!  x  f   � �v {|{ l  � �����  �  �  | }~} O   ��� k   ���� ��� l  � �����  �  �  � ��� Y   �������� l  ������ k   ���� ��� l  � �����  �  �  � ��� r   � ���� n   � ���� 1   � ��
� 
pnam� n  � ���� 4   � ���
� 
cobj� o   � ��� 0 x  � o   � ��� 0 opendocuments openDocuments� o      �� 0 docname docName� ��� r   � ��� n  � ���� I   � ����� ,0 fileextensionremover fileExtensionRemover� ��� o   � ��� 0 docname docName�  �  �  f   � �� o      �
�
 0 
newdocname 
newdocName� ��� r  ��� l ��	�� c  ��� n  ��� 1  	�
� 
path� n 	��� 4  	��
� 
cobj� o  �� 0 x  � o  �� 0 opendocuments openDocuments� m  �
� 
TEXT�	  �  � o      �� 0 filepath filePath� ��� r  $��� 4  "��
� 
PFst� l !�� ��� c  !��� o  ���� 0 chosenpreset chosenPreset� m   ��
�� 
TEXT�   ��  � o      ���� 0 exportpreset exportPreset� ��� l %%��������  ��  ��  � ��� Z  %������� = %0��� o  %*���� 0 chosenpreset chosenPreset� J  */�� ���� m  *-�� ���  s k - T e m p o r � r��  � k  3Y�� ��� l 33������  � M G this is temporarily disabled, because it just doesn't work that way :)   � ��� �   t h i s   i s   t e m p o r a r i l y   d i s a b l e d ,   b e c a u s e   i t   j u s t   d o e s n ' t   w o r k   t h a t   w a y   : )� ��� l 33������  � � �asynchronous export file openDocuments's item x format PDF type to (filePath & newdocName & ".pdf") using exportPreset showing options yes   � ��� a s y n c h r o n o u s   e x p o r t   f i l e   o p e n D o c u m e n t s ' s   i t e m   x   f o r m a t   P D F   t y p e   t o   ( f i l e P a t h   &   n e w d o c N a m e   &   " . p d f " )   u s i n g   e x p o r t P r e s e t   s h o w i n g   o p t i o n s   y e s� ���� I 3Y����
�� .K2  exAscBKT        docu� n 3;��� 4  6;���
�� 
cobj� o  9:���� 0 x  � o  36���� 0 opendocuments openDocuments� ����
�� 
exft� m  >A��
�� eXftt_PD� ����
�� 
kfil� l DK������ b  DK��� b  DG��� o  DE���� 0 filepath filePath� o  EF���� 0 
newdocname 
newdocName� m  GJ�� ���  . p d f��  ��  � ����
�� 
usng� o  NO���� 0 exportpreset exportPreset� �����
�� 
imot� m  RS��
�� boovfals��  ��  ��  � I \�����
�� .K2  exAscBKT        docu� n \d��� 4  _d���
�� 
cobj� o  bc���� 0 x  � o  \_���� 0 opendocuments openDocuments� ����
�� 
exft� m  gj��
�� eXftt_PD� ����
�� 
kfil� l mt������ b  mt��� b  mp��� o  mn���� 0 filepath filePath� o  no���� 0 
newdocname 
newdocName� m  ps�� ���  . p d f��  ��  � ����
�� 
usng� o  wx���� 0 exportpreset exportPreset� �����
�� 
imot� m  {|��
�� boovfals��  � ���� l ����������  ��  ��  ��  � / ) this iterates through all open documents   � ��� R   t h i s   i t e r a t e s   t h r o u g h   a l l   o p e n   d o c u m e n t s� 0 x  � m   � ����� � I  � ������
�� .corecnte****       ****� o   � ����� 0 opendocuments openDocuments��  �  � ��� l ����������  ��  ��  � ��� l ����������  ��  ��  � ��� O  ����� l ���� � r  �� o  ������ (0 preservedpagerange preservedPageRange 1  ����
�� 
pcty� * $ always restore original preferences     � H   a l w a y s   r e s t o r e   o r i g i n a l   p r e f e r e n c e s� 1  ����
�� 
DFpf�  l ����������  ��  ��    l ����	��    wait for all tasks   	 �

 $ w a i t   f o r   a l l   t a s k s �� l ����������  ��  ��  ��  � 5   � �����
�� 
capp m   � � � $ c o m . a d o b e . I n D e s i g n
�� kfrmID  ~  l ����������  ��  ��    Z  �#���� > �� o  ������ 0 chosenpreset chosenPreset J  �� �� m  �� �  s k - T e m p o r � r��   k  �  l ������    my displayTheEnd()    �   $ m y   d i s p l a y T h e E n d ( ) !"! l ����#$��  # x rmy displayNotificationShort("PDF Export gestartet", ((count openDocuments) as string) & " Dokument(e) exportiert")   $ �%% � m y   d i s p l a y N o t i f i c a t i o n S h o r t ( " P D F   E x p o r t   g e s t a r t e t " ,   ( ( c o u n t   o p e n D o c u m e n t s )   a s   s t r i n g )   &   "   D o k u m e n t ( e )   e x p o r t i e r t " )" &'& n ��()( I  ����*���� 20 displaynotificationlong displayNotificationLong* +,+ m  ��-- �.. ( P D F   E x p o r t   g e s t a r t e t, /0/ l ��1����1 c  ��232 l ��4����4 n  ��565 4  ����7
�� 
cobj7 m  ������ 6 o  ������ 0 chosenpreset chosenPreset��  ��  3 m  ����
�� 
TEXT��  ��  0 8��8 b  ��9:9 l ��;����; c  ��<=< l ��>����> I ����?��
�� .corecnte****       ****? o  ������ 0 opendocuments openDocuments��  ��  ��  = m  ����
�� 
TEXT��  ��  : m  ��@@ �AA <   D o k u m e n t ( e )   w e r d e n   e x p o r t i e r t��  ��  )  f  ��' B��B O  �CDC Z  �EF����E H  ��GG l ��H����H I ����I��
�� .CoRedoexbool        obj I l ��J����J 6 ��KLK 2  ����
�� 
EvLiL = ��MNM 1  ����
�� 
pEvTN m  ��OO �PP  a f t e r E x p o r t��  ��  ��  ��  ��  F I ���QR
�� .corecrel****      � nullQ m  ���
�� 
EvLiR ��S��
�� 
prdtS K  TT ��UV
�� 
pEvTU m  
WW �XX  a f t e r E x p o r tV ��Y��
�� 
pHndY n Z[Z o  ���� D0  myafterexportnotificationhandler  myAfterExportNotificationHandler[  f  ��  ��  ��  ��  D 5  ����\��
�� 
capp\ m  ��]] �^^ $ c o m . a d o b e . I n D e s i g n
�� kfrmID  ��  ��  ��   _`_ l $$��������  ��  ��  ` a��a l $$��bc��  b  end if   c �dd  e n d   i f��  �S   L  (*����  �T  � efe l     ����~��  �  �~  f ghg l     �}ij�}  i z t �������������������������������������������������������������������������������������������������������������������   j �kk �   " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " "h lml l     �|�{�z�|  �{  �z  m non i    "pqp I      �yr�x�y 0 idmlexporter idmlExporterr s�ws o      �v�v  0 functionchoice functionChoice�w  �x  q k     �tt uvu n    wxw I    �u�t�s�u 0 	linkcheck 	linkCheck�t  �s  x  f     v yzy n   {|{ I    �r�q�p�r &0 textoverflowcheck textOverflowCheck�q  �p  |  f    z }�o} Z    �~�n�~ F    ��� =   ��� o    �m�m 0 linkcheckbool linkCheckBool� m    �l
�l boovtrue� =   ��� o    �k�k 0 textcheckbool textCheckBool� m    �j
�j boovtrue k   " ��� ��� O   " q��� Y   * p��i���h� l  8 k���� k   8 k�� ��� l  8 8�g�f�e�g  �f  �e  � ��� r   8 @��� n   8 >��� 1   < >�d
�d 
pnam� n  8 <��� 4   9 <�c�
�c 
cobj� o   : ;�b�b 0 x  � o   8 9�a�a 0 opendocuments openDocuments� o      �`�` 0 docname docName� ��� r   A I��� n  A G��� I   B G�_��^�_ ,0 fileextensionremover fileExtensionRemover� ��]� o   B C�\�\ 0 docname docName�]  �^  �  f   A B� o      �[�[ 0 
newdocname 
newdocName� ��� r   J T��� l  J R��Z�Y� c   J R��� n   J P��� 1   N P�X
�X 
path� n  J N��� 4   K N�W�
�W 
cobj� o   L M�V�V 0 x  � o   J K�U�U 0 opendocuments openDocuments� m   P Q�T
�T 
TEXT�Z  �Y  � o      �S�S 0 filepath filePath� ��� l  U U�R�Q�P�R  �Q  �P  � ��� I  U i�O��
�O .K2  exAscBKT        docu� n  U Y��� 4   V Y�N�
�N 
cobj� o   W X�M�M 0 x  � o   U V�L�L 0 opendocuments openDocuments� �K��
�K 
exft� m   Z [�J
�J eXftidml� �I��H
�I 
kfil� l  \ c��G�F� b   \ c��� b   \ _��� o   \ ]�E�E 0 filepath filePath� o   ] ^�D�D 0 
newdocname 
newdocName� m   _ b�� ��� 
 . i d m l�G  �F  �H  � ��C� l  j j�B�A�@�B  �A  �@  �C  � / ) this iterates through all open documents   � ��� R   t h i s   i t e r a t e s   t h r o u g h   a l l   o p e n   d o c u m e n t s�i 0 x  � m   - .�?�? � I  . 3�>��=
�> .corecnte****       ****� o   . /�<�< 0 opendocuments openDocuments�=  �h  � 5   " '�;��:
�; 
capp� m   $ %�� ��� $ c o m . a d o b e . I n D e s i g n
�: kfrmID  � ��� l  r r�9���9  �  my displayTheEnd()   � ��� $ m y   d i s p l a y T h e E n d ( )� ��� l  r r�8���8  � y smy displayNotificationShort("IDML Export gestartet", ((count openDocuments) as string) & " Dokument(e) exportiert")   � ��� � m y   d i s p l a y N o t i f i c a t i o n S h o r t ( " I D M L   E x p o r t   g e s t a r t e t " ,   ( ( c o u n t   o p e n D o c u m e n t s )   a s   s t r i n g )   &   "   D o k u m e n t ( e )   e x p o r t i e r t " )� ��� n  r ���� I   s ��7��6�7 20 displaynotificationlong displayNotificationLong� ��� m   s v�� ��� * I D M L   E x p o r t   g e s t a r t e t� ��� m   v y�� ���  S u b t i t l e   t e x t� ��5� b   y ���� l  y ���4�3� c   y ���� l  y ~��2�1� I  y ~�0��/
�0 .corecnte****       ****� o   y z�.�. 0 opendocuments openDocuments�/  �2  �1  � m   ~ �-
�- 
TEXT�4  �3  � m   � ��� ��� <   D o k u m e n t ( e )   w e r d e n   e x p o r t i e r t�5  �6  �  f   r s� ��,� O   � ���� Z   � ����+�*� H   � ��� l  � ���)�(� I  � ��'��&
�' .CoRedoexbool        obj � l  � ���%�$� 6  � ���� 2   � ��#
�# 
EvLi� =  � ���� 1   � ��"
�" 
pEvT� m   � ��� ���  a f t e r E x p o r t�%  �$  �&  �)  �(  � I  � ��!��
�! .corecrel****      � null� m   � �� 
�  
EvLi� ���
� 
prdt� K   � ��� �� 
� 
pEvT� m   � � �  a f t e r E x p o r t  ��
� 
pHnd n  � � o   � ��� D0  myafterexportnotificationhandler  myAfterExportNotificationHandler  f   � ��  �  �+  �*  � 5   � ���
� 
capp m   � � � $ c o m . a d o b e . I n D e s i g n
� kfrmID  �,  �n  � L   � ���  �o  o 	
	 l     ����  �  �  
  l     ��   z t �������������������������������������������������������������������������������������������������������������������    � �   " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " "  l     ����  �  �    i   # & I      ��� ,0 fileextensionremover fileExtensionRemover � o      �� 0 docname docName�  �   k     E  l     r      n     !  1    �
� 
txdl! 1     �

�
 
ascr o      �	�	 0 olddelimiters oldDelimiters * $ always preserve original delimiters    �"" H   a l w a y s   p r e s e r v e   o r i g i n a l   d e l i m i t e r s #$# r    %&% J    	'' (�( m    )) �**  .�  & n     +,+ 1   
 �
� 
txdl, 1   	 
�
� 
ascr$ -.- r    /0/ n    121 2   �
� 
citm2 l   3��3 c    454 o    �� 0 docname docName5 m    �
� 
ctxt�  �  0 o      � �  0 	pathitems 	pathItems. 676 Z    689��:8 ?    ;<; l   =����= I   ��>��
�� .corecnte****       ****> o    ���� 0 	pathitems 	pathItems��  ��  ��  < m    ?? �@@  29 r     -ABA n     +CDC 7  ! +��EF
�� 
cobjE m   % '���� F m   ( *������D o     !���� 0 	pathitems 	pathItemsB o      ���� 0 	pathitems 	pathItems��  : r   0 6GHG n   0 4IJI 4   1 4��K
�� 
cobjK m   2 3���� J o   0 1���� 0 	pathitems 	pathItemsH o      ���� 0 	pathitems 	pathItems7 LML r   7 <NON c   7 :PQP o   7 8���� 0 	pathitems 	pathItemsQ m   8 9��
�� 
TEXTO o      ���� 0 
newdocname 
newdocNameM RSR l  = BTUVT r   = BWXW o   = >���� 0 olddelimiters oldDelimitersX n     YZY 1   ? A��
�� 
txdlZ 1   > ?��
�� 
ascrU ) # always restore original delimiters   V �[[ F   a l w a y s   r e s t o r e   o r i g i n a l   d e l i m i t e r sS \��\ L   C E]] o   C D���� 0 
newdocname 
newdocName��   ^_^ l     ��������  ��  ��  _ `a` l     ��bc��  b z t �������������������������������������������������������������������������������������������������������������������   c �dd �   " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " "a efe l     ��������  ��  ��  f ghg i   ' *iji I      ��k���� 0 
pageranger 
pageRangerk l��l o      ���� 0 	pagerange 	pageRange��  ��  j O     mnm k    oo pqp l    ��rs��  r � {
		tell PDF export preferences
			set preservedPageRange to page range -- always preserve original preferences 
		end tell
   s �tt � 
 	 	 t e l l   P D F   e x p o r t   p r e f e r e n c e s 
 	 	 	 s e t   p r e s e r v e d P a g e R a n g e   t o   p a g e   r a n g e   - -   a l w a y s   p r e s e r v e   o r i g i n a l   p r e f e r e n c e s   
 	 	 e n d   t e l l 
q uvu l   ��������  ��  ��  v w��w O    xyx r    z{z c    |}| o    ���� 0 	pagerange 	pageRange} m    ��
�� 
TEXT{ 1    ��
�� 
pctyy 1    ��
�� 
DFpf��  n 5     ��~��
�� 
capp~ m     ��� $ c o m . a d o b e . I n D e s i g n
�� kfrmID  h ��� l     ��������  ��  ��  � ��� l     ������  � z t �������������������������������������������������������������������������������������������������������������������   � ��� �   " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " "� ��� l     ��������  ��  ��  � ��� l     ������  � z t �������������������������������������������������������������������������������������������������������������������   � ��� �   " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " "� ��� l     ��������  ��  ��  � ��� i   + .��� I      �������� 0 	linkcheck 	linkCheck��  ��  � O     ���� k    ��� ��� l   ��������  ��  ��  � ��� r    ��� m    	��
�� boovtrue� o      ���� 0 stopbool stopBool� ��� r    ��� m    ��
�� boovtrue� o      ���� 0 linkcheckbool linkCheckBool� ��� l   ��������  ��  ��  � ��� Y    ��������� k   " ��� ��� l  " "������  � $ out of date/missing link check   � ��� < o u t   o f   d a t e / m i s s i n g   l i n k   c h e c k� ��� r   " 3��� l  " 1������ 6  " 1��� n   " (��� 2   & (��
�� 
clnk� n  " &��� 4   # &���
�� 
cobj� o   $ %���� 0 x  � o   " #���� 0 opendocuments openDocuments� E   ) 0��� 1   * ,��
�� 
stts� m   - /��
�� sttelmis��  ��  � o      ���� 0 missinglinks missingLinks� ��� r   4 E��� l  4 C������ 6  4 C��� n   4 :��� 2   8 :��
�� 
clnk� n  4 8��� 4   5 8���
�� 
cobj� o   6 7���� 0 x  � o   4 5���� 0 opendocuments openDocuments� E   ; B��� 1   < >��
�� 
stts� m   ? A��
�� sttelood��  ��  � o      ���� 0 modifiedlinks modifiedLinks� ��� r   F K��� b   F I��� o   F G���� 0 missinglinks missingLinks� o   G H���� 0 modifiedlinks modifiedLinks� o      ���� 0 failedlinks failedLinks� ��� Z   L a������� >  L S��� l  L Q������ I  L Q�����
�� .corecnte****       ****� o   L M���� 0 failedlinks failedLinks��  ��  ��  � m   Q R����  � r   V ]��� m   V W��
�� boovfals� o      ���� 0 linkcheckbool linkCheckBool��  ��  � ��� Z   b �������� =  b i��� o   b g���� 0 linkcheckbool linkCheckBool� m   g h��
�� boovfals� I  l �����
�� .sysodlogaskr        TEXT� b   l ���� b   l ���� b   l ���� b   l |��� b   l z��� b   l s��� b   l q��� b   l o��� m   l m�� ��� ^ D o k u m e n t   h a t   m o d i f i z i e r t e   o d e r   f e h l e n d e   L i n k s !  � o   m n��
�� 
ret � m   o p�� ��� R - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -� o   q r��
�� 
ret � l  s y������ n   s y��� 1   w y��
�� 
pnam� n  s w��� 4   t w���
�� 
cobj� o   u v���� 0 x  � o   s t���� 0 opendocuments openDocuments��  ��  � o   z {��
�� 
ret � m   | �� ��� R - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -� o   � ���
�� 
ret � m   � ��� �   J h a t   m o d i f i z i e r t e   o d e r   f e h l e n d e   L i n k s !� ��
�� 
btns J   � �  m   � � � 
 S t o p ! �� m   � �		 �

  W e i t e r !��   ����
�� 
dflt m   � � �  W e i t e r !��  ��  ��  � �� Q   � ��� Z   � ��� =  � � n   � � 1   � ���
�� 
bhit 1   � ���
�� 
rslt m   � � � 
 S t o p ! r   � � m   � ���
�� boovfals o      �� 0 stopbool stopBool  =  � � n   � � !  1   � ��~
�~ 
bhit! 1   � ��}
�} 
rslt m   � �"" �##  W e i t e r ! $�|$ k   � �%% &'& r   � �()( m   � ��{
�{ boovtrue) o      �z�z 0 stopbool stopBool' *�y* r   � �+,+ m   � ��x
�x boovtrue, o      �w�w 0 linkcheckbool linkCheckBool�y  �|  ��   R      �v�u�t
�v .ascrerr ****      � ****�u  �t  ��  ��  �� 0 x  � m    �s�s � I   �r-�q
�r .corecnte****       ****- o    �p�p 0 opendocuments openDocuments�q  ��  � .�o. l  � ��n�m�l�n  �m  �l  �o  � 5     �k/�j
�k 
capp/ m    00 �11 $ c o m . a d o b e . I n D e s i g n
�j kfrmID  � 232 l     �i�h�g�i  �h  �g  3 454 l     �f67�f  6 z t �������������������������������������������������������������������������������������������������������������������   7 �88 �   " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " "5 9:9 l     �e�d�c�e  �d  �c  : ;<; i   / 2=>= I      �b�a�`�b &0 textoverflowcheck textOverflowCheck�a  �`  > O    ?@? k   AA BCB l   �_�^�]�_  �^  �]  C DED r    FGF m    	�\
�\ boovtrueG o      �[�[ 0 stopbool stopBoolE HIH r    JKJ m    �Z
�Z boovtrueK o      �Y�Y 0 textcheckbool textCheckBoolI LML l   �X�W�V�X  �W  �V  M NON Y    P�UQR�TP k   " �SS TUT l  " "�SVW�S  V  text overflow check   W �XX & t e x t   o v e r f l o w   c h e c kU YZY l  " "�R[\�R  [ � �set textOverflows to (every text frame of openDocuments's item x whose overflows is true) --this checks all layers, visible or not   \ �]] s e t   t e x t O v e r f l o w s   t o   ( e v e r y   t e x t   f r a m e   o f   o p e n D o c u m e n t s ' s   i t e m   x   w h o s e   o v e r f l o w s   i s   t r u e )   - - t h i s   c h e c k s   a l l   l a y e r s ,   v i s i b l e   o r   n o tZ ^_^ l  " ?`ab` r   " ?cdc l  " =e�Q�Pe 6  " =fgf n   " (hih 2   & (�O
�O 
txtfi n  " &jkj 4   # &�Nl
�N 
cobjl o   $ %�M�M 0 x  k o   " #�L�L 0 opendocuments openDocumentsg F   ) <mnm =  * 1opo 1   + -�K
�K 
OVRFp m   . 0�J
�J boovtruen =  2 ;qrq n  3 7sts 1   5 7�I
�I 
pvist 1   3 5�H
�H 
pilrr m   8 :�G
�G boovtrue�Q  �P  d o      �F�F 0 textoverflows textOverflowsa % this just checks visible layers   b �uu > t h i s   j u s t   c h e c k s   v i s i b l e   l a y e r s_ vwv l  @ @�Exy�E  x c ]set missingLinks to (every link of openDocuments's item x whose status contains link missing)   y �zz � s e t   m i s s i n g L i n k s   t o   ( e v e r y   l i n k   o f   o p e n D o c u m e n t s ' s   i t e m   x   w h o s e   s t a t u s   c o n t a i n s   l i n k   m i s s i n g )w {|{ l  @ @�D}~�D  } h bset modifiedLinks to (every link of openDocuments's item x whose status contains link out of date)   ~ � � s e t   m o d i f i e d L i n k s   t o   ( e v e r y   l i n k   o f   o p e n D o c u m e n t s ' s   i t e m   x   w h o s e   s t a t u s   c o n t a i n s   l i n k   o u t   o f   d a t e )| ��� l  @ @�C���C  � 5 /set failedLinks to missingLinks & modifiedLinks   � ��� ^ s e t   f a i l e d L i n k s   t o   m i s s i n g L i n k s   &   m o d i f i e d L i n k s� ��� Z   @ U���B�A� >  @ G��� l  @ E��@�?� I  @ E�>��=
�> .corecnte****       ****� o   @ A�<�< 0 textoverflows textOverflows�=  �@  �?  � m   E F�;�;  � r   J Q��� m   J K�:
�: boovfals� o      �9�9 0 textcheckbool textCheckBool�B  �A  � ��� Z   V ����8�7� =  V ]��� o   V [�6�6 0 textcheckbool textCheckBool� m   [ \�5
�5 boovfals� I  ` ��4��
�4 .sysodlogaskr        TEXT� b   ` |��� b   ` x��� b   ` v��� b   ` r��� b   ` p��� b   ` g��� b   ` e��� b   ` c��� m   ` a�� ��� 6 D o k u m e n t   h a t   T e x t � b e r h a n g !  � o   a b�3
�3 
ret � m   c d�� ��� R - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -� o   e f�2
�2 
ret � l  g o��1�0� n   g o��� 1   k o�/
�/ 
pnam� n  g k��� 4   h k�.�
�. 
cobj� o   i j�-�- 0 x  � o   g h�,�, 0 opendocuments openDocuments�1  �0  � o   p q�+
�+ 
ret � m   r u�� ��� R - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -� o   v w�*
�* 
ret � m   x {�� ��� " h a t   T e x t � b e r h a n g .� �)��
�) 
btns� J    ��� ��� m    ��� ��� , G e h e   z u   e r s t e r   S t e l l e !� ��� m   � ��� ��� 
 S t o p !� ��(� m   � ��� ���  W e i t e r !�(  � �'��&
�' 
dflt� m   � ��� ���  W e i t e r !�&  �8  �7  � ��%� Q   � ����$� Z   � �����#� =  � ���� n   � ���� 1   � ��"
�" 
bhit� 1   � ��!
�! 
rslt� m   � ��� ��� 
 S t o p !� r   � ���� m   � �� 
�  boovfals� o      �� 0 stopbool stopBool� ��� =  � ���� n   � ���� 1   � ��
� 
bhit� 1   � ��
� 
rslt� m   � ��� ��� , G e h e   z u   e r s t e r   S t e l l e !� ��� k   � ��� ��� n  � ���� I   � ����� $0 textoverflowgoer textOverflowGoer�  �  �  f   � �� ��� n  � ���� I   � ����� 0 zoomthepages zoomThePages� ��� o   � ��� 0 activewindow activeWindow�  �  �  f   � �� ��� r   � ���� m   � ��
� boovfals� o      �� 0 stopbool stopBool�  � ��� =  � ���� n   � ���� 1   � ��
� 
bhit� 1   � ��
� 
rslt� m   � ��� ���  W e i t e r !� ��� k   � ��� ��� r   � ���� m   � ��
� boovfals� o      �� 0 stopbool stopBool� ��� r   � ���� m   � ��
� boovtrue� o      �� 0 textcheckbool textCheckBool�  �  �#  � R      �
�	�
�
 .ascrerr ****      � ****�	  �  �$  �%  �U 0 x  Q m    �� R I   ���
� .corecnte****       ****� o    �� 0 opendocuments openDocuments�  �T  O ��� l ��� �  �  �   �  @ 5     �����
�� 
capp� m       � $ c o m . a d o b e . I n D e s i g n
�� kfrmID  <  l     ��������  ��  ��    l     ����   z t �������������������������������������������������������������������������������������������������������������������    � �   " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " 	
	 l     ��������  ��  ��  
  i   3 6 I      ������ (0 inputrangesplitter inputRangeSplitter �� o      ���� 0 
inputrange 
inputRange��  ��   k       l     r      n     1    ��
�� 
txdl 1     ��
�� 
ascr o      ���� 0 olddelimiters oldDelimiters * $ always preserve original delimiters    � H   a l w a y s   p r e s e r v e   o r i g i n a l   d e l i m i t e r s  r     J    	   !��! m    "" �##  ,��   n     $%$ 1   
 ��
�� 
txdl% 1   	 
��
�� 
ascr &'& r    ()( n    *+* 2   ��
�� 
citm+ o    ���� 0 
inputrange 
inputRange) o      ���� 0 splittedrange splittedRange' ,-, l   ./0. r    121 o    ���� 0 olddelimiters oldDelimiters2 n     343 1    ��
�� 
txdl4 1    ��
�� 
ascr/ ) # always restore original delimiters   0 �55 F   a l w a y s   r e s t o r e   o r i g i n a l   d e l i m i t e r s- 6��6 L    77 o    ���� 0 splittedrange splittedRange��   898 l     ��������  ��  ��  9 :;: l     ��<=��  < z t �������������������������������������������������������������������������������������������������������������������   = �>> �   " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " "; ?@? l     ��������  ��  ��  @ ABA i   7 :CDC I      ��E���� >0 inputrangesplitterfromtomagic inputRangeSplitterFromToMagicE F��F o      ���� 0 
inputrange 
inputRange��  ��  D k     tGG HIH l    JKLJ r     MNM n    OPO 1    ��
�� 
txdlP 1     ��
�� 
ascrN o      ���� 0 olddelimiters oldDelimitersK * $ always preserve original delimiters   L �QQ H   a l w a y s   p r e s e r v e   o r i g i n a l   d e l i m i t e r sI RSR r    TUT J    	VV W��W m    XX �YY  -��  U n     Z[Z 1   
 ��
�� 
txdl[ 1   	 
��
�� 
ascrS \]\ l   ��������  ��  ��  ] ^_^ r    `a` n    bcb 2   ��
�� 
citmc o    ���� 0 
inputrange 
inputRangea o      ���� (0 splittedrangemagic splittedRangeMagic_ ded l   ��������  ��  ��  e fgf Z    khi����h >   #jkj l   l����l c    mnm n   opo 4    ��q
�� 
cobjq m    ���� p o    ���� (0 splittedrangemagic splittedRangeMagicn m    ��
�� 
long��  ��  k l   "r����r [    "sts l    u����u c     vwv n   xyx 4    ��z
�� 
cobjz m    ���� y o    ���� (0 splittedrangemagic splittedRangeMagicw m    ��
�� 
long��  ��  t m     !���� ��  ��  i k   & g{{ |}| r   & 0~~ [   & .��� l  & ,������ c   & ,��� n  & *��� 4   ' *���
�� 
cobj� m   ( )���� � o   & '���� (0 splittedrangemagic splittedRangeMagic� m   * +��
�� 
long��  ��  � m   , -����  o      ����  0 incrementvalue incrementValue} ��� r   1 ;��� J   1 9�� ���� l  1 7������ c   1 7��� n  1 5��� 4   2 5���
�� 
cobj� m   3 4���� � o   1 2���� (0 splittedrangemagic splittedRangeMagic� m   5 6��
�� 
long��  ��  ��  � o      ���� 00 splittedrangemagicloop splittedRangeMagicLoop� ��� l  < <��������  ��  ��  � ��� l  < <������  � � �repeat with x from (splittedRangeMagic's item 1 as integer) to (splittedRangeMagic's item 2 as integer) -- this iterates through   � ���  r e p e a t   w i t h   x   f r o m   ( s p l i t t e d R a n g e M a g i c ' s   i t e m   1   a s   i n t e g e r )   t o   ( s p l i t t e d R a n g e M a g i c ' s   i t e m   2   a s   i n t e g e r )   - -   t h i s   i t e r a t e s   t h r o u g h� ��� l  < <������  � R L	set splittedRangeMagicLoop to splittedRangeMagicLoop & (incrementValue + 1)   � ��� � 	 s e t   s p l i t t e d R a n g e M a g i c L o o p   t o   s p l i t t e d R a n g e M a g i c L o o p   &   ( i n c r e m e n t V a l u e   +   1 )� ��� l  < <������  �  
end repeat   � ���  e n d   r e p e a t� ��� l  < <��������  ��  ��  � ��� r   < K��� \   < I��� l  < B������ c   < B��� n  < @��� 4   = @���
�� 
cobj� m   > ?���� � o   < =���� (0 splittedrangemagic splittedRangeMagic� m   @ A��
�� 
long��  ��  � l  B H������ c   B H��� n  B F��� 4   C F���
�� 
cobj� m   D E���� � o   B C���� (0 splittedrangemagic splittedRangeMagic� m   F G��
�� 
long��  ��  � o      ���� 0 repeatnumber repeatNumber� ��� U   L c��� l  S ^���� k   S ^�� ��� r   S X��� b   S V��� o   S T���� 00 splittedrangemagicloop splittedRangeMagicLoop� o   T U����  0 incrementvalue incrementValue� o      ���� 00 splittedrangemagicloop splittedRangeMagicLoop� ���� r   Y ^��� [   Y \��� o   Y Z����  0 incrementvalue incrementValue� m   Z [���� � o      ����  0 incrementvalue incrementValue��  �   this iterates through   � ��� ,   t h i s   i t e r a t e s   t h r o u g h� o   O P���� 0 repeatnumber repeatNumber� ��� l  d d��������  ��  ��  � ��� l  d d��������  ��  ��  � ���� r   d g��� o   d e���� 00 splittedrangemagicloop splittedRangeMagicLoop� o      ���� (0 splittedrangemagic splittedRangeMagic��  ��  ��  g ��� l  l l��������  ��  ��  � ��� l  l q���� r   l q��� o   l m�� 0 olddelimiters oldDelimiters� n     ��� 1   n p�~
�~ 
txdl� 1   m n�}
�} 
ascr� ) # always restore original delimiters   � ��� F   a l w a y s   r e s t o r e   o r i g i n a l   d e l i m i t e r s� ��|� L   r t�� o   r s�{�{ (0 splittedrangemagic splittedRangeMagic�|  B ��� l     �z�y�x�z  �y  �x  � ��� l     �w���w  � z t �������������������������������������������������������������������������������������������������������������������   � ��� �   " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " "� ��� l     �v�u�t�v  �u  �t  � ��� i   ; >��� I      �s��r�s 40 inputrangesplitterfromto inputRangeSplitterFromTo� ��q� o      �p�p 0 
inputrange 
inputRange�q  �r  � k     �� ��� l    ���� r     ��� n    ��� 1    �o
�o 
txdl� 1     �n
�n 
ascr� o      �m�m 0 olddelimiters oldDelimiters� * $ always preserve original delimiters   � ��� H   a l w a y s   p r e s e r v e   o r i g i n a l   d e l i m i t e r s� ��� r    ��� J    	   �l m     �  -�l  � n      1   
 �k
�k 
txdl 1   	 
�j
�j 
ascr�  r    	 n    

 2   �i
�i 
citm o    �h�h 0 
inputrange 
inputRange	 o      �g�g 0 splittedrange splittedRange  l    r     o    �f�f 0 olddelimiters oldDelimiters n      1    �e
�e 
txdl 1    �d
�d 
ascr ) # always restore original delimiters    � F   a l w a y s   r e s t o r e   o r i g i n a l   d e l i m i t e r s �c L     o    �b�b 0 splittedrange splittedRange�c  �  l     �a�`�_�a  �`  �_    l     �^�^   z t �������������������������������������������������������������������������������������������������������������������    � �   " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " "   l     �]�\�[�]  �\  �[    !"! i   ? B#$# I      �Z%�Y�Z 0 magicsplitter MagicSplitter% &�X& o      �W�W 0 splittedrange splittedRange�X  �Y  $ k     h'' ()( l    *+,* r     -.- n    /0/ 1    �V
�V 
txdl0 1     �U
�U 
ascr. o      �T�T 0 olddelimiters oldDelimiters+ * $ always preserve original delimiters   , �11 H   a l w a y s   p r e s e r v e   o r i g i n a l   d e l i m i t e r s) 232 l   �S�R�Q�S  �R  �Q  3 454 r    676 J    	88 9�P9 m    :: �;;  -�P  7 n     <=< 1   
 �O
�O 
txdl= 1   	 
�N
�N 
ascr5 >?> r    @A@ J    �M�M  A o      �L�L 0 splittedmagic splittedMagic? BCB l   �K�J�I�K  �J  �I  C DED l   �HFG�H  F 6 0set splittedMagic to text items of splittedRange   G �HH ` s e t   s p l i t t e d M a g i c   t o   t e x t   i t e m s   o f   s p l i t t e d R a n g eE IJI l   �G�F�E�G  �F  �E  J KLK Y    _M�DNO�CM l  ! ZPQRP k   ! ZSS TUT Z   ! XVWX�BV H   ! (YY E   ! 'Z[Z n  ! %\]\ 4   " %�A^
�A 
cobj^ o   # $�@�@ 0 x  ] o   ! "�?�? 0 splittedrange splittedRange[ m   % &__ �``  -W k   + 5aa bcb r   + 3ded b   + 1fgf o   + ,�>�> 0 splittedmagic splittedMagicg n  , 0hih 4   - 0�=j
�= 
cobjj o   . /�<�< 0 x  i o   , -�;�; 0 splittedrange splittedRangee o      �:�: 0 splittedmagic splittedMagicc k�9k l  4 4�8lm�8  l 8 2set splittedRange's item x to end of splittedMagic   m �nn d s e t   s p l i t t e d R a n g e ' s   i t e m   x   t o   e n d   o f   s p l i t t e d M a g i c�9  X opo E   8 >qrq n  8 <sts 4   9 <�7u
�7 
cobju o   : ;�6�6 0 x  t o   8 9�5�5 0 splittedrange splittedRanger m   < =vv �ww  -p x�4x k   A Tyy z{z I   A J�3|�2�3 >0 inputrangesplitterfromtomagic inputRangeSplitterFromToMagic| }�1} n  B F~~ 4   C F�0�
�0 
cobj� o   D E�/�/ 0 x   o   B C�.�. 0 splittedrange splittedRange�1  �2  { ��� l  K K�-���-  �  set xxx to splittedRange   � ��� 0 s e t   x x x   t o   s p l i t t e d R a n g e� ��� r   K R��� b   K P��� o   K L�,�, 0 splittedmagic splittedMagic� n  L O��� 2  M O�+
�+ 
cobj� o   L M�*�* (0 splittedrangemagic splittedRangeMagic� o      �)�) 0 splittedmagic splittedMagic� ��(� l  S S�'���'  � 7 1set splittedRange's items to end of splittedMagic   � ��� b s e t   s p l i t t e d R a n g e ' s   i t e m s   t o   e n d   o f   s p l i t t e d M a g i c�(  �4  �B  U ��&� l  Y Y�%�$�#�%  �$  �#  �&  Q   this iterates through   R ��� ,   t h i s   i t e r a t e s   t h r o u g h�D 0 x  N m    �"�" O I   �!�� 
�! .corecnte****       ****� o    �� 0 splittedrange splittedRange�   �C  L ��� l  ` `����  �  �  � ��� l  ` e���� r   ` e��� o   ` a�� 0 olddelimiters oldDelimiters� n     ��� 1   b d�
� 
txdl� 1   a b�
� 
ascr� ) # always restore original delimiters   � ��� F   a l w a y s   r e s t o r e   o r i g i n a l   d e l i m i t e r s� ��� L   f h�� o   f g�� 0 splittedmagic splittedMagic�  " ��� l     ����  �  �  � ��� l     ����  � z t �������������������������������������������������������������������������������������������������������������������   � ��� �   " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " "� ��� l     ����  �  �  � ��� i   C F��� I      ���� $0 textoverflowgoer textOverflowGoer�  �  � k     2�� ��� O     0��� k    /�� ��� l   ���
�  �  �
  � ��	� Z    /����� >   ��� l   ���� I   ���
� .corecnte****       ****� o    	�� 0 textoverflows textOverflows�  �  �  � m    ��  � k    '�� ��� r    ��� n    ��� 1    �
� 
pnam� n    ��� 1    � 
�  
PaPa� n    ��� 4   ���
�� 
cobj� m    ���� � o    ���� 0 textoverflows textOverflows� o      ���� 0 
activepage 
activePage� ���� r    '��� n    #��� 4     #���
�� 
page� o   ! "���� 0 
activepage 
activePage� n     ��� 1     ��
�� 
pare� o    ���� 0 activewindow activeWindow� n      ��� 1   $ &��
�� 
pacp� o   # $���� 0 activewindow activeWindow��  �  � I  * /�����
�� .sysobeepnull��� ��� long� l  * +������ m   * +���� ��  ��  ��  �	  � 5     �����
�� 
capp� m    �� ��� $ c o m . a d o b e . I n D e s i g n
�� kfrmID  � ���� l  1 1��������  ��  ��  ��  � ��� l     ��������  ��  ��  � ��� l     ������  � z t �������������������������������������������������������������������������������������������������������������������   � ��� �   " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " "� ��� l     ��������  ��  ��  � ��� i   G J��� I      ������� 0 zoomthepages zoomThePages� ���� o      ���� 0 	thewindow 	theWindow��  ��  � O     4��� k    3�� ��� l   ��������  ��  ��  � ��� O    1��� k    0�� ��� I   �����
�� .K2  seltnull���     ****� m    ��
�� senmnada��  � ��� l   ���� I   �����
�� .K2  zmtonull���     Lwin��  � �����
�� 
givn� m    ��
�� zopezftp��  �  spread   � ���  s p r e a d� 	 ��	  Z    0		����	 >   !			 l   	����	 I   ��	��
�� .corecnte****       ****	 o    ���� 0 textoverflows textOverflows��  ��  ��  	 m     ����  	 r   $ ,			 n   $ (			
		 4  % (��	
�� 
cobj	 m   & '���� 	
 o   $ %���� 0 textoverflows textOverflows	 n      			 1   ) +��
�� 
sele	 o   ( )���� 0 activewindow activeWindow��  ��  ��  � o    	���� 0 	thewindow 	theWindow� 	��	 l  2 2��������  ��  ��  ��  � 5     ��	��
�� 
capp	 m    		 �		 $ c o m . a d o b e . I n D e s i g n
�� kfrmID  � 			 l     ��������  ��  ��  	 			 l     ��		��  	 z t �������������������������������������������������������������������������������������������������������������������   	 �		 �   " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " "	 			 l     ��������  ��  ��  	 			 i   K N			 I      �������� 0 displaytheend displayTheEnd��  ��  	 I    ��		 
�� .sysodlogaskr        TEXT	 m     	!	! �	"	" ^ D e r   E x p o r t   w i r d   j e t z t   i m   H i n t e r g r u n d   a u s g e f � h r t	  ��	#	$
�� 
btns	# m    	%	% �	&	&  O K	$ ��	'	(
�� 
dflt	' m    	)	) �	*	*  O K	( ��	+��
�� 
givu	+ m    ���� ��  	 	,	-	, l     ��������  ��  ��  	- 	.	/	. l     ��	0	1��  	0 z t �������������������������������������������������������������������������������������������������������������������   	1 �	2	2 �   " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " "	/ 	3	4	3 l     ��������  ��  ��  	4 	5	6	5 l     ��	7	8��  	7 L Fmy displayNotificationLong("Title text", "Subtitle text", "Body text")   	8 �	9	9 � m y   d i s p l a y N o t i f i c a t i o n L o n g ( " T i t l e   t e x t " ,   " S u b t i t l e   t e x t " ,   " B o d y   t e x t " )	6 	:	;	: i   O R	<	=	< I      ��	>���� 20 displaynotificationlong displayNotificationLong	> 	?	@	? o      ���� 0 	titletext 	titleText	@ 	A	B	A o      ���� 0 subtitletext subtitleText	B 	C��	C o      ���� 0 bodytext bodyText��  ��  	= k     	D	D 	E	F	E l    		G	H	I	G I    	��	J	K
�� .sysonotfnull��� ��� TEXT	J o     ���� 0 bodytext bodyText	K ��	L	M
�� 
appr	L o    ���� 0 	titletext 	titleText	M ��	N��
�� 
subt	N o    ���� 0 subtitletext subtitleText��  	H  sound name "default"   	I �	O	O ( s o u n d   n a m e   " d e f a u l t "	F 	P��	P l  
 
��	Q	R��  	Q  	delay 0.5   	R �	S	S  d e l a y   0 . 5��  	; 	T	U	T l     ��������  ��  ��  	U 	V	W	V l     ��	X	Y��  	X z t �������������������������������������������������������������������������������������������������������������������   	Y �	Z	Z �   " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " "	W 	[	\	[ l     ��������  ��  ��  	\ 	]	^	] l     ��	_	`��  	_ < 6my displayNotificationShort("Title text", "Body text")   	` �	a	a l m y   d i s p l a y N o t i f i c a t i o n S h o r t ( " T i t l e   t e x t " ,   " B o d y   t e x t " )	^ 	b	c	b i   S V	d	e	d I      ��	f���� 40 displaynotificationshort displayNotificationShort	f 	g	h	g o      ���� 0 	titletext 	titleText	h 	i��	i o      ���� 0 bodytext bodyText��  ��  	e k     		j	j 	k	l	k l    	m	n	o	m I    ��	p	q
�� .sysonotfnull��� ��� TEXT	p o     ���� 0 bodytext bodyText	q ��	r��
�� 
appr	r o    ���� 0 	titletext 	titleText��  	n  sound name "default"   	o �	s	s ( s o u n d   n a m e   " d e f a u l t "	l 	t��	t l   ��	u	v��  	u  	delay 0.5   	v �	w	w  d e l a y   0 . 5��  	c 	x	y	x l     ��������  ��  ��  	y 	z	{	z l     ��	|	}��  	| z t �������������������������������������������������������������������������������������������������������������������   	} �	~	~ �   " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " "	{ 		�	 l     ��~�}�  �~  �}  	� 	��|	� i   W Z	�	�	� I      �{�z�y�{ D0  myafterexportnotificationhandler  myAfterExportNotificationHandler�z  �y  	� O     	�	�	� k    	�	� 	�	�	� l   �x	�	��x  	� E ?"evt" is the event passed to this script by the event listener.   	� �	�	� ~ " e v t "   i s   t h e   e v e n t   p a s s e d   t o   t h i s   s c r i p t   b y   t h e   e v e n t   l i s t e n e r .	� 	�	�	� r    	�	�	� o    	�w�w 0 evt  	� o      �v�v 0 myevent myEvent	� 	�	�	� l   �u	�	��u  	� O Idisplay dialog ("This event is the " & event type of myEvent & " event.")   	� �	�	� � d i s p l a y   d i a l o g   ( " T h i s   e v e n t   i s   t h e   "   &   e v e n t   t y p e   o f   m y E v e n t   &   "   e v e n t . " )	� 	�	�	� r    	�	�	� b    	�	�	� m    	�	� �	�	�   E x p o r t   b e e n d e t :  	� n    	�	�	� 1    �t
�t 
pnam	� n    	�	�	� 1    �s
�s 
Xtrg	� o    �r�r 0 myevent myEvent	� o      �q�q 0 mystring myString	� 	��p	� l   	�	�	�	� I   �o	��n
�o .sysonotfnull��� ��� TEXT	� o    �m�m 0 mystring myString�n  	�  with title "Body text"   	� �	�	� , w i t h   t i t l e   " B o d y   t e x t "�p  	� 5     �l	��k
�l 
capp	� m    	�	� �	�	� $ c o m . a d o b e . I n D e s i g n
�k kfrmID  �|       �j	�	�	� ��i�h	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	��j  	� �g�f�e�d�c�b�a�`�_�^�]�\�[�Z�Y�X�W�V�U�T�S�R�Q�P�g  0 functionchoice functionChoice�f 0 chosenpreset chosenPreset�e 0 	pagerange 	pageRange�d 0 linkcheckbool linkCheckBool�c 0 textcheckbool textCheckBool�b "0 functionchooser functionChooser�a .0 pdfexportersinglepage pdfExporterSinglepage�` ,0 pdfexportermultipage pdfExporterMultipage�_ 0 idmlexporter idmlExporter�^ ,0 fileextensionremover fileExtensionRemover�] 0 
pageranger 
pageRanger�\ 0 	linkcheck 	linkCheck�[ &0 textoverflowcheck textOverflowCheck�Z (0 inputrangesplitter inputRangeSplitter�Y >0 inputrangesplitterfromtomagic inputRangeSplitterFromToMagic�X 40 inputrangesplitterfromto inputRangeSplitterFromTo�W 0 magicsplitter MagicSplitter�V $0 textoverflowgoer textOverflowGoer�U 0 zoomthepages zoomThePages�T 0 displaytheend displayTheEnd�S 20 displaynotificationlong displayNotificationLong�R 40 displaynotificationshort displayNotificationShort�Q D0  myafterexportnotificationhandler  myAfterExportNotificationHandler
�P .aevtoappnull  �   � ****	� �O	��O 	�   �	� �N	��N 	�   �
�i boovfals
�h boovfals	� �M�L�K	�	��J�M "0 functionchooser functionChooser�L  �K  	�  	� #&�I�H,�G/�F�E=�DJ�CY�B
�I 
inSL
�H 
prmp
�G 
okbt�F 
�E .gtqpchltns    @   @ ns  �D .0 pdfexportersinglepage pdfExporterSinglepage�C ,0 pdfexportermultipage pdfExporterMultipage�B 0 idmlexporter idmlExporter�J i���mv�b   ����� 	Ec   Ob   �kv  )b   k+ Y 5b   �kv  )b   k+ Y b   �kv  )b   k+ Y hOP	� �Am�@�?	�	��>�A .0 pdfexportersinglepage pdfExporterSinglepage�@ �=	��= 	�  �<�<  0 functionchoice functionChoice�?  	� �;�:�9�8�7�6�5�4�;  0 functionchoice functionChoice�: 0 
buttonname 
buttonName�9 0 
inputrange 
inputRange�8 0 x  �7 0 docname docName�6 0 
newdocname 
newdocName�5 0 filepath filePath�4 0 exportpreset exportPreset	� Q�3z�2�1�0�/�.�-��,�+�*�)��(�'�&��%��$�#����"��!� �������
������������������v|���
�	���������	������� ������
�3 
capp
�2 kfrmID  
�1 
pacd�0 0 opendocuments openDocuments�/ 0 	linkcheck 	linkCheck�. &0 textoverflowcheck textOverflowCheck
�- 
bool
�, 
ctxt�+ ,0 pdfpresetsoncomputer pdfPresetsOnComputer
�* 
inSL
�) 
prmp
�( 
okbt�' 
�& .gtqpchltns    @   @ ns  
�% 
ret 
�$ 
dtxt
�# 
btns
�" 
dflt
�! .sysodlogaskr        TEXT
�  
rslt
� 
bhit
� 
ttxt
� 
page
� 
pnam� (0 inputrangesplitter inputRangeSplitter� 0 splittedrange splittedRange� 0 magicsplitter MagicSplitter� 0 splittedmagic splittedMagic
� .corecnte****       ****
� 
cobj� 0 
pageranger 
pageRanger�  0 activedocument activeDocument� ,0 fileextensionremover fileExtensionRemover
� 
path
� 
TEXT
� 
PFst
� 
exft
� eXftt_PD
� 
kfil
� 
usng
� 
imot�
 
�	 .K2  exAscBKT        docu
� 
DFpf� (0 preservedpagerange preservedPageRange
� 
pcty� 20 displaynotificationlong displayNotificationLong
� 
EvLi	�  
� 
pEvT
� .CoRedoexbool        obj 
� 
prdt
�  
pHnd�� D0  myafterexportnotificationhandler  myAfterExportNotificationHandler�� 
�� .corecrel****      � null�>8)���0 *�,E�UO)j+ O)j+ Ob  e 	 b  e �&��%�&E�O��b  ���� Ec  Ob  f�a _ %a %a b  a a a a mva a � O_ a ,a   _ a ,E�Y 7_ a ,a    hY $_ a ,a !  )�a "�0 a #E�UY hO�Ec  O�a $  )�a %�0 *�,a &-a ',E�UY hO)�k+ (O)_ )k+ *O)�a +�0 � �k_ ,j -kh )_ ,a .�/k+ /O_ 0a ',E�O)�k+ 1E�O_ 0a 2,a 3&E�O*a 4b  a 3&/E�O_ 0a 5a 6a 7��%a 8%_ ,a .�/%a 9%a :�a ;fa < =OP[OY��O*a >, _ ?*a @,FUOPUOb  a Akv h)a Bb  a .k/a 3&a C�%m+ DO)�a E�0 >*a F-a G[a H,\Za I81j J !a Fa Ka Ha La M)a N,a Ol PY hUY hY hY h	� �������	�	����� ,0 pdfexportermultipage pdfExporterMultipage�� ��	��� 	�  ����  0 functionchoice functionChoice��  	� ����������������  0 functionchoice functionChoice�� 0 
buttonname 
buttonName�� 0 x  �� 0 docname docName�� 0 
newdocname 
newdocName�� 0 filepath filePath�� 0 exportpreset exportPreset	� G��������������������6��8����AEH��K������U��blq���������������������������������������������-@��]��	���O����W���������� 0 	linkcheck 	linkCheck�� &0 textoverflowcheck textOverflowCheck
�� 
bool
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
�� 
btns
�� 
dflt
�� .sysodlogaskr        TEXT
�� 
rslt
�� 
bhit
�� 
ttxt�� 0 
pageranger 
pageRanger
�� 
capp
�� kfrmID  �� 0 opendocuments openDocuments
�� .corecnte****       ****
�� 
cobj
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
pcty�� 20 displaynotificationlong displayNotificationLong
�� 
EvLi
�� 
pEvT
�� .CoRedoexbool        obj 
�� 
prdt
�� 
pHnd�� D0  myafterexportnotificationhandler  myAfterExportNotificationHandler�� 
�� .corecrel****      � null��+)j+  O)j+ Ob  e 	 b  e �&��%�&E�O��b  ���� Ec  Ob  f u��%�%�b  a a a a mva a � O_ a ,a   _ a ,Ec  Y 0_ a ,a   hY _ a ,a   a Ec  Y hY hO)b  k+ O)a a  a !0 � �k_ "j #kh _ "a $�/a %,E�O)�k+ &E�O_ "a $�/a ',a (&E�O*a )b  a (&/E�Ob  a *kv  +_ "a $�/a +a ,a -��%a .%a /�a 0fa 1 2Y (_ "a $�/a +a ,a -��%a 3%a /�a 0fa 1 2OP[OY�_O*a 4, _ 5*a 6,FUOPUOb  a 7kv v)a 8b  a $k/a (&_ "j #a (&a 9%m+ :O)a a ;a !0 >*a <-a =[a >,\Za ?81j @ !a <a Aa >a Ba C)a D,a El FY hUY hOPY h	� ��q����	�	����� 0 idmlexporter idmlExporter�� ��	��� 	�  ����  0 functionchoice functionChoice��  	� ������������  0 functionchoice functionChoice�� 0 x  �� 0 docname docName�� 0 
newdocname 
newdocName�� 0 filepath filePath	� "�������������������������������������������	���������������� 0 	linkcheck 	linkCheck�� &0 textoverflowcheck textOverflowCheck
�� 
bool
�� 
capp
�� kfrmID  �� 0 opendocuments openDocuments
�� .corecnte****       ****
�� 
cobj
�� 
pnam�� ,0 fileextensionremover fileExtensionRemover
�� 
path
�� 
TEXT
�� 
exft
�� eXftidml
�� 
kfil�� 
�� .K2  exAscBKT        docu�� 20 displaynotificationlong displayNotificationLong
�� 
EvLi
�� 
pEvT
�� .CoRedoexbool        obj 
�� 
prdt
�� 
pHnd�� D0  myafterexportnotificationhandler  myAfterExportNotificationHandler
�� .corecrel****      � null�� �)j+  O)j+ Ob  e 	 b  e �& �)���0 H Ek�j kh ��/�,E�O)�k+ 
E�O��/�,�&E�O��/��藍%a %a  OP[OY��UO)a a �j �&a %m+ O)�a �0 >*a -a [a ,\Za 81j  !a a a a a )a  ,a l !Y hUY h	� ������	�	����� ,0 fileextensionremover fileExtensionRemover�� ��	��� 	�  ���� 0 docname docName��  	� ���������� 0 docname docName�� 0 olddelimiters oldDelimiters�� 0 	pathitems 	pathItems�� 0 
newdocname 
newdocName	� 
����)������?������
�� 
ascr
�� 
txdl
�� 
ctxt
�� 
citm
�� .corecnte****       ****
�� 
cobj����
�� 
TEXT�� F��,E�O�kv��,FO��&�-E�O�j � �[�\[Zk\Z�2E�Y ��k/E�O��&E�O���,FO�	� ��j����	�	����� 0 
pageranger 
pageRanger�� ��	��� 	�  ���� 0 	pagerange 	pageRange��  	� ���� 0 	pagerange 	pageRange	� ��������~
�� 
capp
�� kfrmID  
�� 
DFpf
� 
TEXT
�~ 
pcty�� )���0 *�, 	��&*�,FUU	� �}��|�{	�	��z�} 0 	linkcheck 	linkCheck�|  �{  	� �y�x�w�v�y 0 x  �x 0 missinglinks missingLinks�w 0 modifiedlinks modifiedLinks�v 0 failedlinks failedLinks	� �u0�t�s�r�q�p�o	��n�m�l��k��j���i	�h�g�f�e�d"�c�b
�u 
capp
�t kfrmID  �s 0 stopbool stopBool�r 0 opendocuments openDocuments
�q .corecnte****       ****
�p 
cobj
�o 
clnk
�n 
stts
�m sttelmis
�l sttelood
�k 
ret 
�j 
pnam
�i 
btns
�h 
dflt�g 
�f .sysodlogaskr        TEXT
�e 
rslt
�d 
bhit�c  �b  �z �)���0 �eE�OeEc  O �k�j kh  ��/�-�[�,\Z�@1E�O��/�-�[�,\Z�@1E�O��%E�O�j j fEc  Y hOb  f  6��%�%�%��/�,%�%a %�%a %a a a lva a a  Y hO 6_ a ,a   fE�Y _ a ,a   eE�OeEc  Y hW X  h[OY�=OPU	� �a>�`�_	�	��^�a &0 textoverflowcheck textOverflowCheck�`  �_  	� �]�] 0 x  	� %�\ �[�Z�Y�X�W�V	��U�T�S�R��Q��P���O����N��M�L�K�J���I�H�G��F�E
�\ 
capp
�[ kfrmID  �Z 0 stopbool stopBool�Y 0 opendocuments openDocuments
�X .corecnte****       ****
�W 
cobj
�V 
txtf
�U 
OVRF
�T 
pilr
�S 
pvis�R 0 textoverflows textOverflows
�Q 
ret 
�P 
pnam
�O 
btns
�N 
dflt�M 
�L .sysodlogaskr        TEXT
�K 
rslt
�J 
bhit�I $0 textoverflowgoer textOverflowGoer�H 0 activewindow activeWindow�G 0 zoomthepages zoomThePages�F  �E  �^)���0 �eE�OeEc  O �k�j kh  ��/�-�[[�,\Ze8\[�,�,\Ze8A1E�O�j j fEc  Y hOb  f  ;��%�%�%��/a ,%�%a %�%a %a a a a mva a a  Y hO Y_ a ,a   fE�Y B_ a ,a   )j+ O)_  k+ !OfE�Y _ a ,a "  fE�OeEc  Y hW X # $h[OY�!OPU	� �D�C�B	�	��A�D (0 inputrangesplitter inputRangeSplitter�C �@	��@ 	�  �?�? 0 
inputrange 
inputRange�B  	� �>�=�> 0 
inputrange 
inputRange�= 0 olddelimiters oldDelimiters	� �<�;"�:�9
�< 
ascr
�; 
txdl
�: 
citm�9 0 splittedrange splittedRange�A ��,E�O�kv��,FO��-E�O���,FO�	� �8D�7�6	�	��5�8 >0 inputrangesplitterfromtomagic inputRangeSplitterFromToMagic�7 �4	��4 	�  �3�3 0 
inputrange 
inputRange�6  	� �2�1�0�/�.�2 0 
inputrange 
inputRange�1 0 olddelimiters oldDelimiters�0  0 incrementvalue incrementValue�/ 00 splittedrangemagicloop splittedRangeMagicLoop�. 0 repeatnumber repeatNumber	� �-�,X�+�*�)�(
�- 
ascr
�, 
txdl
�+ 
citm�* (0 splittedrangemagic splittedRangeMagic
�) 
cobj
�( 
long�5 u��,E�O�kv��,FO��-E�O��l/�&��k/�&k F��k/�&kE�O��k/�&kvE�O��l/�&��k/�&E�O �kh��%E�O�kE�[OY��O�E�Y hO���,FO�	� �'��&�%	�	��$�' 40 inputrangesplitterfromto inputRangeSplitterFromTo�& �#	��# 	�  �"�" 0 
inputrange 
inputRange�%  	� �!� �! 0 
inputrange 
inputRange�  0 olddelimiters oldDelimiters	� ����
� 
ascr
� 
txdl
� 
citm� 0 splittedrange splittedRange�$ ��,E�O�kv��,FO��-E�O���,FO�	� �$��	�	��� 0 magicsplitter MagicSplitter� �	�� 	�  �� 0 splittedrange splittedRange�  	� ���� 0 splittedrange splittedRange� 0 olddelimiters oldDelimiters� 0 x  	� 
��:���_v��
� 
ascr
� 
txdl� 0 splittedmagic splittedMagic
� .corecnte****       ****
� 
cobj� >0 inputrangesplitterfromtomagic inputRangeSplitterFromToMagic� (0 splittedrangemagic splittedRangeMagic� i��,E�O�kv��,FOjvE�O Kk�j kh ��/� à�/%E�OPY "��/� *��/k+ O���-%E�OPY hOP[OY��O���,FO�	� ���
�		�	��� $0 textoverflowgoer textOverflowGoer�
  �	  	� �� 0 
activepage 
activePage	� �������� ����������
� 
capp
� kfrmID  � 0 textoverflows textOverflows
� .corecnte****       ****
� 
cobj
� 
PaPa
�  
pnam�� 0 activewindow activeWindow
�� 
pare
�� 
page
�� 
pacp
�� .sysobeepnull��� ��� long� 3)���0 )�j j ��k/�,�,E�O��,�/��,FY mj UOP	� �������	�	����� 0 zoomthepages zoomThePages�� ��	��� 	�  ���� 0 	thewindow 	theWindow��  	� ���� 0 	thewindow 	theWindow	� ��	����������������������
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
sele�� 5)���0 -� &�j O*��l O�j 	j ��k/��,FY hUOPU	� ��	����	�	����� 0 displaytheend displayTheEnd��  ��  	�  	� 	!��	%��	)������
�� 
btns
�� 
dflt
�� 
givu�� 
�� .sysodlogaskr        TEXT�� ������k� 	� ��	=����	�	����� 20 displaynotificationlong displayNotificationLong�� ��	��� 	�  �������� 0 	titletext 	titleText�� 0 subtitletext subtitleText�� 0 bodytext bodyText��  	� �������� 0 	titletext 	titleText�� 0 subtitletext subtitleText�� 0 bodytext bodyText	� ��������
�� 
appr
�� 
subt�� 
�� .sysonotfnull��� ��� TEXT�� ���� OP	� ��	e����	�	����� 40 displaynotificationshort displayNotificationShort�� ��	��� 	�  ������ 0 	titletext 	titleText�� 0 bodytext bodyText��  	� ������ 0 	titletext 	titleText�� 0 bodytext bodyText	� ����
�� 
appr
�� .sysonotfnull��� ��� TEXT�� 
��l OP	� ��	�����	�	����� D0  myafterexportnotificationhandler  myAfterExportNotificationHandler��  ��  	� �������� 0 evt  �� 0 myevent myEvent�� 0 mystring myString	� ��	���	�������
�� 
capp
�� kfrmID  
�� 
Xtrg
�� 
pnam
�� .sysonotfnull��� ��� TEXT�� )���0 �E�O��,�,%E�O�j U	� ��	�����	�	���
�� .aevtoappnull  �   � ****	� k     N	�	�  �����  ��  ��  	�  	� ��������������������	��������� �����
�� 
capp
�� kfrmID  
�� 
pacd��  0 activedocument activeDocument
�� 
pacw�� 0 activewindow activeWindow
�� 
DFpf
�� 
pcty�� (0 preservedpagerange preservedPageRange
�� 
docu
�� 
pvis�� 0 opendocuments openDocuments
�� 
PFst
�� 
pnam�� ,0 pdfpresetsoncomputer pdfPresetsOnComputer�� "0 functionchooser functionChooser�� O)���0 G*�,E�O*�,E�O*�, *�,E�UO*�-�[�,\Ze81E�O*�-�,�[�,\Za @C1E` O)j+ OPUascr  ��ޭ