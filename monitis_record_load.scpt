FasdUAS 1.101.10   ��   ��    k             l     ��  ��      monitis_record_load.scpt     � 	 	 2   m o n i t i s _ r e c o r d _ l o a d . s c p t   
  
 l     ��������  ��  ��        l     ��  ��    / ) Created by Jeremiah Shirk on 2011-07-10.     �   R   C r e a t e d   b y   J e r e m i a h   S h i r k   o n   2 0 1 1 - 0 7 - 1 0 .      l     ��  ��    7 1 Copyright (c) 2011 Monitis. All rights reserved.     �   b   C o p y r i g h t   ( c )   2 0 1 1   M o n i t i s .   A l l   r i g h t s   r e s e r v e d .      l     ��������  ��  ��        l     ��  ��      monitor configuration     �   ,   m o n i t o r   c o n f i g u r a t i o n      l     ����  r        !   m      " " � # #  y o u r   A P I   k e y ! o      ���� 
0 apikey  ��  ��     $ % $ l    &���� & r     ' ( ' m     ) ) � * *  y o u r   s e c r e t   k e y ( o      ���� 0 	secretkey  ��  ��   %  + , + l    -���� - r     . / . m    	 0 0 � 1 1 P h t t p s : / / w w w . m o n i t i s . c o m / c u s t o m M o n i t o r A p i / o      ���� 0 monitis_url  ��  ��   ,  2 3 2 l    4���� 4 r     5 6 5 m     7 7 � 8 8  x m l 6 o      ���� 
0 output  ��  ��   3  9 : 9 l    ;���� ; r     < = < m     > > � ? ?  8 4 5 = o      ���� 0 	monitorid 	monitorId��  ��   :  @ A @ l     ��������  ��  ��   A  B C B l     �� D E��   D 5 / get the load average, and submit it to Monitis    E � F F ^   g e t   t h e   l o a d   a v e r a g e ,   a n d   s u b m i t   i t   t o   M o n i t i s C  G H G l    I���� I r     J K J I    �������� &0 getloadavgsresult getLoadAvgsResult��  ��   K o      ����  0 loadavgsresult loadAvgsResult��  ��   H  L M L l   ) N���� N r    ) O P O I    '�� Q���� 0 
postresult 
postResult Q  R S R o    ���� 
0 apikey   S  T U T o    ���� 0 	secretkey   U  V W V o     ���� 0 monitis_url   W  X Y X o     !���� 
0 output   Y  Z [ Z o   ! "���� 0 	monitorid 	monitorId [  \�� \ o   " #����  0 loadavgsresult loadAvgsResult��  ��   P o      ���� 0 	apiresult  ��  ��   M  ] ^ ] l  * 9 _���� _ I  * 9�� ` a
�� .sysodlogaskr        TEXT ` b   * - b c b m   * + d d � e e ( M o n i t i s   A P I   R e s u l t :   c o   + ,���� 0 	apiresult   a �� f��
�� 
btns f J   0 5 g g  h�� h m   0 3 i i � j j  O K��  ��  ��  ��   ^  k l k l     ��������  ��  ��   l  m n m l     ��������  ��  ��   n  o p o l     �� q r��   q ( " handlers specific to this monitor    r � s s D   h a n d l e r s   s p e c i f i c   t o   t h i s   m o n i t o r p  t u t l     ��������  ��  ��   u  v w v l     ��������  ��  ��   w  x y x l     �� z {��   z H B get the 1,5,and 15 minutes load averages using the uptime command    { � | | �   g e t   t h e   1 , 5 , a n d   1 5   m i n u t e s   l o a d   a v e r a g e s   u s i n g   t h e   u p t i m e   c o m m a n d y  } ~ } i      �  I      �������� &0 getloadavgsresult getLoadAvgsResult��  ��   � L      � � I    �� ���
�� .sysoexecTEXT���     TEXT � m      � � � � � � u p t i m e   |   e g r e p   - o   " a v e r a g e s :   ( . * ) "   |   w h i l e   r e a d   a   b   c   d ;   d o   e c h o   1 m : $ b \ ; 5 m : $ c \ ; 1 5 m : $ d ;   d o n e��   ~  � � � l     ��������  ��  ��   �  � � � l     ��������  ��  ��   �  � � � l     �� � ���   � #  generic Monitis API handlers    � � � � :   g e n e r i c   M o n i t i s   A P I   h a n d l e r s �  � � � l     ��������  ��  ��   �  � � � l     ��������  ��  ��   �  � � � l     �� � ���   � A ; post a reviously calculated result to the Monitis REST API    � � � � v   p o s t   a   r e v i o u s l y   c a l c u l a t e d   r e s u l t   t o   t h e   M o n i t i s   R E S T   A P I �  � � � l     �� � ���   � A ; uses curl to make the actual connection to the Monitis URL    � � � � v   u s e s   c u r l   t o   m a k e   t h e   a c t u a l   c o n n e c t i o n   t o   t h e   M o n i t i s   U R L �  � � � i    � � � I      �� ����� 0 
postresult 
postResult �  � � � o      ���� 
0 apikey   �  � � � o      ���� 0 	secretkey   �  � � � o      ���� 0 monitis_url   �  � � � o      ���� 
0 output   �  � � � o      ���� 0 	monitorid 	monitorId �  ��� � 1      ��
�� 
rslt��  ��   � k     = � �  � � � r      � � � I     �������� 0 getchecktime getCheckTime��  ��   � o      ���� 0 	checktime   �  � � � r     � � � I    �������� 0 gettimestamp getTimeStamp��  ��   � o      ���� 0 	timestamp   �  � � � r     � � � I    �� ����� 0 calcchecksum calcChecksum �  � � � o    ���� 0 	secretkey   �  � � � m     � � � � �  a d d R e s u l t �  � � � o    ���� 
0 apikey   �  � � � o    ���� 0 	checktime   �  � � � o    ���� 0 	monitorid 	monitorId �  � � � 1    ��
�� 
rslt �  � � � o    ���� 0 	timestamp   �  ��� � m     � � � � �  2��  ��   � o      ���� 0 checksum   �  � � � r     / � � � I     -�� ����� "0 buildpoststring buildPostString �  � � � m   ! " � � � � �  a d d R e s u l t �  � � � o   " #���� 
0 apikey   �  � � � o   # $���� 0 	checktime   �  � � � o   $ %���� 0 	monitorid 	monitorId �  � � � 1   % &��
�� 
rslt �  � � � o   & '���� 0 	timestamp   �  � � � m   ' ( � � � � �  2 �  ��� � o   ( )���� 0 checksum  ��  ��   � o      ���� 0 postdata postData �  ��� � r   0 = � � � I  0 ;�� ��
�� .sysoexecTEXT���     TEXT � b   0 7 � � � b   0 5 � � � b   0 3 � � � m   0 1 � � � � � 
 c u r l   � o   1 2�~�~ 0 postdata postData � m   3 4 � � � � �    � o   5 6�}�} 0 monitis_url  �   � o      �|�| 0 returnvalue returnValue��   �  � � � l     �{�z�y�{  �z  �y   �  � � � l     �x � ��x   � $  helper handler for postResult    � � � � <   h e l p e r   h a n d l e r   f o r   p o s t R e s u l t �  � � � l     �w � ��w   � 9 3 builds the post string that will be passed to curl    � � � � f   b u i l d s   t h e   p o s t   s t r i n g   t h a t   w i l l   b e   p a s s e d   t o   c u r l �  �  � i    I      �v�u�v "0 buildpoststring buildPostString  o      �t�t 
0 action    o      �s�s 
0 apikey   	 o      �r�r 0 	checktime  	 

 o      �q�q 0 	monitorid 	monitorId  1      �p
�p 
rslt  o      �o�o 0 	timestamp    1      �n
�n 
vers �m o      �l�l 0 checksum  �m  �u   k     L  r      m      � H - - d a t a - u r l e n c o d e   ' a c t i o n = a d d R e s u l t '   o      �k�k 0 postdata postData  r     b     b    	 !  b    "#" o    �j�j 0 postdata postData# m    $$ �%% 2 - - d a t a - u r l e n c o d e   ' a p i k e y =! o    �i�i 
0 apikey   m   	 
&& �''  '   o      �h�h 0 postdata postData ()( r    *+* b    ,-, b    ./. b    010 o    �g�g 0 postdata postData1 m    22 �33 8 - - d a t a - u r l e n c o d e   ' c h e c k t i m e =/ o    �f�f 0 	checktime  - m    44 �55  '  + o      �e�e 0 postdata postData) 676 r    !898 b    :;: b    <=< b    >?> o    �d�d 0 postdata postData? m    @@ �AA 8 - - d a t a - u r l e n c o d e   ' m o n i t o r I d == o    �c�c 0 	monitorid 	monitorId; m    BB �CC  '  9 o      �b�b 0 postdata postData7 DED r   " +FGF b   " )HIH b   " 'JKJ b   " %LML o   " #�a�a 0 postdata postDataM m   # $NN �OO 4 - - d a t a - u r l e n c o d e   ' r e s u l t s =K 1   % &�`
�` 
rsltI m   ' (PP �QQ  '  G o      �_�_ 0 postdata postDataE RSR r   , 5TUT b   , 3VWV b   , 1XYX b   , /Z[Z o   , -�^�^ 0 postdata postData[ m   - .\\ �]] 8 - - d a t a - u r l e n c o d e   ' t i m e s t a m p =Y o   / 0�]�] 0 	timestamp  W m   1 2^^ �__  '  U o      �\�\ 0 postdata postDataS `a` r   6 ?bcb b   6 =ded b   6 ;fgf b   6 9hih o   6 7�[�[ 0 postdata postDatai m   7 8jj �kk 4 - - d a t a - u r l e n c o d e   ' v e r s i o n =g m   9 :ll �mm  2e m   ; <nn �oo  '  c o      �Z�Z 0 postdata postDataa pqp r   @ Irsr b   @ Gtut b   @ Evwv b   @ Cxyx o   @ A�Y�Y 0 postdata postDatay m   A Bzz �{{ 6 - - d a t a - u r l e n c o d e   ' c h e c k s u m =w o   C D�X�X 0 checksum  u m   E F|| �}}  '  s o      �W�W 0 postdata postDataq ~�V~ L   J L o   J K�U�U 0 postdata postData�V    ��� l     �T�S�R�T  �S  �R  � ��� l     �Q���Q  � K E generates a timestamp in the format required by the Monitis REST API   � ��� �   g e n e r a t e s   a   t i m e s t a m p   i n   t h e   f o r m a t   r e q u i r e d   b y   t h e   M o n i t i s   R E S T   A P I� ��� i   ��� I      �P�O�N�P 0 gettimestamp getTimeStamp�O  �N  � L     �� I    �M��L
�M .sysoexecTEXT���     TEXT� m     �� ���   d a t e   - u   + " % F   % T "�L  � ��� l     �K�J�I�K  �J  �I  � ��� l     �H���H  � O I calculates the check time in the format required by the Monitis REST API   � ��� �   c a l c u l a t e s   t h e   c h e c k   t i m e   i n   t h e   f o r m a t   r e q u i r e d   b y   t h e   M o n i t i s   R E S T   A P I� ��� i   ��� I      �G�F�E�G 0 getchecktime getCheckTime�F  �E  � L     �� I    �D��C
�D .sysoexecTEXT���     TEXT� m     �� ���   d a t e   - u   + " % s " 0 0 0�C  � ��� l     �B�A�@�B  �A  �@  � ��� l     �?���?  � 2 , calculates the checksum for the Monitis API   � ��� X   c a l c u l a t e s   t h e   c h e c k s u m   f o r   t h e   M o n i t i s   A P I� ��� l     �>���>  � X R note that the key-value parameters are (and must be) sorted alphabetically by key   � ��� �   n o t e   t h a t   t h e   k e y - v a l u e   p a r a m e t e r s   a r e   ( a n d   m u s t   b e )   s o r t e d   a l p h a b e t i c a l l y   b y   k e y� ��� l     �=���=  � 8 2 OpenSSL is used to do the actual HMAC calculation   � ��� d   O p e n S S L   i s   u s e d   t o   d o   t h e   a c t u a l   H M A C   c a l c u l a t i o n� ��<� i   ��� I      �;��:�; 0 calcchecksum calcChecksum� ��� o      �9�9 0 	secretkey  � ��� o      �8�8 
0 action  � ��� o      �7�7 
0 apikey  � ��� o      �6�6 0 	checktime  � ��� o      �5�5 0 	monitorid 	monitorId� ��� 1      �4
�4 
rslt� ��� o      �3�3 0 	timestamp  � ��2� 1      �1
�1 
vers�2  �:  � k     L�� ��� r     ��� b     ��� m     �� ���  a c t i o n� o    �0�0 
0 action  � o      �/�/  0 checksumstring checksumString� ��� r    ��� b    ��� b    	��� o    �.�.  0 checksumstring checksumString� m    �� ���  a p i k e y� o   	 
�-�- 
0 apikey  � o      �,�,  0 checksumstring checksumString� ��� r    ��� b    ��� b    ��� o    �+�+  0 checksumstring checksumString� m    �� ���  c h e c k t i m e� o    �*�* 0 	checktime  � o      �)�)  0 checksumstring checksumString� ��� r    ��� b    ��� b    ��� o    �(�(  0 checksumstring checksumString� m    �� ���  m o n i t o r I d� o    �'�' 0 	monitorid 	monitorId� o      �&�&  0 checksumstring checksumString� ��� r    %��� b    #��� b    !��� o    �%�%  0 checksumstring checksumString� m     �� ���  r e s u l t s� 1   ! "�$
�$ 
rslt� o      �#�#  0 checksumstring checksumString� ��� r   & -��� b   & +��� b   & )��� o   & '�"�"  0 checksumstring checksumString� m   ' (�� ���  t i m e s t a m p� o   ) *�!�! 0 	timestamp  � o      � �   0 checksumstring checksumString� ��� r   . 5� � b   . 3 b   . 1 o   . /��  0 checksumstring checksumString m   / 0 �  v e r s i o n 1   1 2�
� 
vers  o      ��  0 checksumstring checksumString�  r   6 A	
	 b   6 ? b   6 = b   6 ; b   6 9 m   6 7 �  p r i n t f   ' % s '   ' o   7 8��  0 checksumstring checksumString m   9 : � : '   |   o p e n s s l   d g s t   - s h a 1   - h m a c   o   ; <�� 0 	secretkey   m   = > � <   - b i n a r y   |   o p e n s s l   e n c   - b a s e 6 4
 o      ��  0 checksumscript checksumScript  r   B I I  B G��
� .sysoexecTEXT���     TEXT o   B C��  0 checksumscript checksumScript�   o      �� 0 checksum   � L   J L o   J K�� 0 checksum  �  �<       	� !"#$%&'�    �������� &0 getloadavgsresult getLoadAvgsResult� 0 
postresult 
postResult� "0 buildpoststring buildPostString� 0 gettimestamp getTimeStamp� 0 getchecktime getCheckTime� 0 calcchecksum calcChecksum
� .aevtoappnull  �   � ****! � ��
�	()�� &0 getloadavgsresult getLoadAvgsResult�
  �	  (  )  ��
� .sysoexecTEXT���     TEXT� �j " � ���*+�� 0 
postresult 
postResult� �,� ,  �� ��������� 
0 apikey  �  0 	secretkey  �� 0 monitis_url  �� 
0 output  �� 0 	monitorid 	monitorId
�� 
rslt�  * ������������������������ 
0 apikey  �� 0 	secretkey  �� 0 monitis_url  �� 
0 output  �� 0 	monitorid 	monitorId
�� 
rslt�� 0 	checktime  �� 0 	timestamp  �� 0 checksum  �� 0 postdata postData�� 0 returnvalue returnValue+ ���� � ����� � ��� � ����� 0 getchecktime getCheckTime�� 0 gettimestamp getTimeStamp�� �� 0 calcchecksum calcChecksum�� "0 buildpoststring buildPostString
�� .sysoexecTEXT���     TEXT� >*j+  E�O*j+ E�O*�⠦�����+ E�O*栦�����+ E�O�%�%�%j E�# ������-.���� "0 buildpoststring buildPostString�� ��/�� /  ������������������ 
0 action  �� 
0 apikey  �� 0 	checktime  �� 0 	monitorid 	monitorId
�� 
rslt�� 0 	timestamp  
�� 
vers�� 0 checksum  ��  - 	�������������������� 
0 action  �� 
0 apikey  �� 0 	checktime  �� 0 	monitorid 	monitorId
�� 
rslt�� 0 	timestamp  
�� 
vers�� 0 checksum  �� 0 postdata postData. $&24@BNP\^jlnz|�� M�E�O��%�%�%E�O��%�%�%E�O��%�%�%E�O��%�%�%E�O��%�%�%E�O��%�%�%E�O��%�%�%E�O�$ �������01���� 0 gettimestamp getTimeStamp��  ��  0  1 ���
�� .sysoexecTEXT���     TEXT�� �j % �������23���� 0 getchecktime getCheckTime��  ��  2  3 ���
�� .sysoexecTEXT���     TEXT�� �j & �������45���� 0 calcchecksum calcChecksum�� ��6�� 6  ������������������ 0 	secretkey  �� 
0 action  �� 
0 apikey  �� 0 	checktime  �� 0 	monitorid 	monitorId
�� 
rslt�� 0 	timestamp  
�� 
vers��  4 ������������������������ 0 	secretkey  �� 
0 action  �� 
0 apikey  �� 0 	checktime  �� 0 	monitorid 	monitorId
�� 
rslt�� 0 	timestamp  
�� 
vers��  0 checksumstring checksumString��  0 checksumscript checksumScript�� 0 checksum  5 ��������
�� .sysoexecTEXT���     TEXT�� M�%E�O��%�%E�O��%�%E�O��%�%E�O��%�%E�O��%�%E�O��%�%E�O�%�%�%�%E�O�j 
E�O�' ��7����89��
�� .aevtoappnull  �   � ****7 k     9::  ;;  $<<  +==  2>>  9??  G@@  LAA  ]����  ��  ��  8  9  "�� )�� 0�� 7�� >������������ d�� i���� 
0 apikey  �� 0 	secretkey  �� 0 monitis_url  �� 
0 output  �� 0 	monitorid 	monitorId�� &0 getloadavgsresult getLoadAvgsResult��  0 loadavgsresult loadAvgsResult�� �� 0 
postresult 
postResult�� 0 	apiresult  
�� 
btns
�� .sysodlogaskr        TEXT�� :�E�O�E�O�E�O�E�O�E�O*j+ 
E�O*�������+ E�O��%a a kvl  ascr  ��ޭ