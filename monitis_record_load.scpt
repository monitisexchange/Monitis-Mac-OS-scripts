FasdUAS 1.101.10   ��   ��    k             l     ��  ��      monitis_record_load.scpt     � 	 	 2   m o n i t i s _ r e c o r d _ l o a d . s c p t   
  
 l     ��������  ��  ��        l     ��  ��    / ) Created by Jeremiah Shirk on 2011-07-10.     �   R   C r e a t e d   b y   J e r e m i a h   S h i r k   o n   2 0 1 1 - 0 7 - 1 0 .      l     ��  ��    7 1 Copyright (c) 2011 Monitis. All rights reserved.     �   b   C o p y r i g h t   ( c )   2 0 1 1   M o n i t i s .   A l l   r i g h t s   r e s e r v e d .      l     ��������  ��  ��        l     ��  ��      monitor configuration     �   ,   m o n i t o r   c o n f i g u r a t i o n      l     ����  r        !   m      " " � # # 4 3 5 I T O 4 M S 7 L E O 7 Q 0 D F 8 2 1 M P T 1 N R ! o      ���� 
0 apikey  ��  ��     $ % $ l    &���� & r     ' ( ' m     ) ) � * * 4 3 Q N C C 6 E 5 V 9 I 2 V 4 C A J O P H V S P Q G V ( o      ���� 0 	secretkey  ��  ��   %  + , + l    -���� - r     . / . m    	 0 0 � 1 1 P h t t p s : / / w w w . m o n i t i s . c o m / c u s t o m M o n i t o r A p i / o      ���� 0 monitis_url  ��  ��   ,  2 3 2 l    4���� 4 r     5 6 5 m     7 7 � 8 8  x m l 6 o      ���� 
0 output  ��  ��   3  9 : 9 l    ;���� ; r     < = < m     > > � ? ?  8 4 5 = o      ���� 0 	monitorid 	monitorId��  ��   :  @ A @ l     ��������  ��  ��   A  B C B l     �� D E��   D 5 / get the load average, and submit it to Monitis    E � F F ^   g e t   t h e   l o a d   a v e r a g e ,   a n d   s u b m i t   i t   t o   M o n i t i s C  G H G l    I���� I r     J K J I    �������� &0 getloadavgsresult getLoadAvgsResult��  ��   K o      ����  0 loadavgsresult loadAvgsResult��  ��   H  L M L l   ' N���� N I    '�� O���� 0 
postresult 
postResult O  P Q P o    ���� 
0 apikey   Q  R S R o    ���� 0 	secretkey   S  T U T o     ���� 0 monitis_url   U  V W V o     !���� 
0 output   W  X Y X o   ! "���� 0 	monitorid 	monitorId Y  Z�� Z o   " #����  0 loadavgsresult loadAvgsResult��  ��  ��  ��   M  [ \ [ l     ��������  ��  ��   \  ] ^ ] l     ��������  ��  ��   ^  _ ` _ l     �� a b��   a ( " handlers specific to this monitor    b � c c D   h a n d l e r s   s p e c i f i c   t o   t h i s   m o n i t o r `  d e d l     ��������  ��  ��   e  f g f l     ��������  ��  ��   g  h i h l     �� j k��   j H B get the 1,5,and 15 minutes load averages using the uptime command    k � l l �   g e t   t h e   1 , 5 , a n d   1 5   m i n u t e s   l o a d   a v e r a g e s   u s i n g   t h e   u p t i m e   c o m m a n d i  m n m i     o p o I      �������� &0 getloadavgsresult getLoadAvgsResult��  ��   p L      q q I    �� r��
�� .sysoexecTEXT���     TEXT r m      s s � t t � u p t i m e   |   e g r e p   - o   " a v e r a g e s :   ( . * ) "   |   w h i l e   r e a d   a   b   c   d ;   d o   e c h o   1 m : $ b \ ; 5 m : $ c \ ; 1 5 m : $ d ;   d o n e��   n  u v u l     ��������  ��  ��   v  w x w l     ��������  ��  ��   x  y z y l     �� { |��   { #  generic Monitis API handlers    | � } } :   g e n e r i c   M o n i t i s   A P I   h a n d l e r s z  ~  ~ l     ��������  ��  ��     � � � l     ��������  ��  ��   �  � � � l     �� � ���   � A ; post a reviously calculated result to the Monitis REST API    � � � � v   p o s t   a   r e v i o u s l y   c a l c u l a t e d   r e s u l t   t o   t h e   M o n i t i s   R E S T   A P I �  � � � l     �� � ���   � A ; uses curl to make the actual connection to the Monitis URL    � � � � v   u s e s   c u r l   t o   m a k e   t h e   a c t u a l   c o n n e c t i o n   t o   t h e   M o n i t i s   U R L �  � � � i    � � � I      �� ����� 0 
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
rslt �  � � � o   & '���� 0 	timestamp   �  � � � m   ' ( � � � � �  2 �  ��� � o   ( )���� 0 checksum  ��  ��   � o      ���� 0 postdata postData �  ��� � r   0 = � � � I  0 ;�� ���
�� .sysoexecTEXT���     TEXT � b   0 7 � � � b   0 5 � � � b   0 3 � � � m   0 1 � � � � � 
 c u r l   � o   1 2���� 0 postdata postData � m   3 4 � � � � �    � o   5 6���� 0 monitis_url  ��   � o      ���� 0 returnvalue returnValue��   �  � � � l     ��������  ��  ��   �  � � � l     �� � ���   � $  helper handler for postResult    � � � � <   h e l p e r   h a n d l e r   f o r   p o s t R e s u l t �  � � � l     � � ��   � 9 3 builds the post string that will be passed to curl    � � � � f   b u i l d s   t h e   p o s t   s t r i n g   t h a t   w i l l   b e   p a s s e d   t o   c u r l �  � � � i    � � � I      �~ ��}�~ "0 buildpoststring buildPostString �  � � � o      �|�| 
0 action   �  � � � o      �{�{ 
0 apikey   �  � � � o      �z�z 0 	checktime   �  � � � o      �y�y 0 	monitorid 	monitorId �  � � � 1      �x
�x 
rslt �  � � � o      �w�w 0 	timestamp   �    1      �v
�v 
vers �u o      �t�t 0 checksum  �u  �}   � k     L  r      m      �		 H - - d a t a - u r l e n c o d e   ' a c t i o n = a d d R e s u l t '   o      �s�s 0 postdata postData 

 r     b     b    	 b     o    �r�r 0 postdata postData m     � 2 - - d a t a - u r l e n c o d e   ' a p i k e y = o    �q�q 
0 apikey   m   	 
 �  '   o      �p�p 0 postdata postData  r     b     b     b     !  o    �o�o 0 postdata postData! m    "" �## 8 - - d a t a - u r l e n c o d e   ' c h e c k t i m e = o    �n�n 0 	checktime   m    $$ �%%  '   o      �m�m 0 postdata postData &'& r    !()( b    *+* b    ,-, b    ./. o    �l�l 0 postdata postData/ m    00 �11 8 - - d a t a - u r l e n c o d e   ' m o n i t o r I d =- o    �k�k 0 	monitorid 	monitorId+ m    22 �33  '  ) o      �j�j 0 postdata postData' 454 r   " +676 b   " )898 b   " ':;: b   " %<=< o   " #�i�i 0 postdata postData= m   # $>> �?? 4 - - d a t a - u r l e n c o d e   ' r e s u l t s =; 1   % &�h
�h 
rslt9 m   ' (@@ �AA  '  7 o      �g�g 0 postdata postData5 BCB r   , 5DED b   , 3FGF b   , 1HIH b   , /JKJ o   , -�f�f 0 postdata postDataK m   - .LL �MM 8 - - d a t a - u r l e n c o d e   ' t i m e s t a m p =I o   / 0�e�e 0 	timestamp  G m   1 2NN �OO  '  E o      �d�d 0 postdata postDataC PQP r   6 ?RSR b   6 =TUT b   6 ;VWV b   6 9XYX o   6 7�c�c 0 postdata postDataY m   7 8ZZ �[[ 4 - - d a t a - u r l e n c o d e   ' v e r s i o n =W m   9 :\\ �]]  2U m   ; <^^ �__  '  S o      �b�b 0 postdata postDataQ `a` r   @ Ibcb b   @ Gded b   @ Efgf b   @ Chih o   @ A�a�a 0 postdata postDatai m   A Bjj �kk 6 - - d a t a - u r l e n c o d e   ' c h e c k s u m =g o   C D�`�` 0 checksum  e m   E Fll �mm  '  c o      �_�_ 0 postdata postDataa n�^n L   J Loo o   J K�]�] 0 postdata postData�^   � pqp l     �\�[�Z�\  �[  �Z  q rsr l     �Ytu�Y  t K E generates a timestamp in the format required by the Monitis REST API   u �vv �   g e n e r a t e s   a   t i m e s t a m p   i n   t h e   f o r m a t   r e q u i r e d   b y   t h e   M o n i t i s   R E S T   A P Is wxw i   yzy I      �X�W�V�X 0 gettimestamp getTimeStamp�W  �V  z L     {{ I    �U|�T
�U .sysoexecTEXT���     TEXT| m     }} �~~   d a t e   - u   + " % F   % T "�T  x � l     �S�R�Q�S  �R  �Q  � ��� l     �P���P  � O I calculates the check time in the format required by the Monitis REST API   � ��� �   c a l c u l a t e s   t h e   c h e c k   t i m e   i n   t h e   f o r m a t   r e q u i r e d   b y   t h e   M o n i t i s   R E S T   A P I� ��� i   ��� I      �O�N�M�O 0 getchecktime getCheckTime�N  �M  � L     �� I    �L��K
�L .sysoexecTEXT���     TEXT� m     �� ���   d a t e   - u   + " % s " 0 0 0�K  � ��� l     �J�I�H�J  �I  �H  � ��� l     �G���G  � 2 , calculates the checksum for the Monitis API   � ��� X   c a l c u l a t e s   t h e   c h e c k s u m   f o r   t h e   M o n i t i s   A P I� ��� l     �F���F  � X R note that the key-value parameters are (and must be) sorted alphabetically by key   � ��� �   n o t e   t h a t   t h e   k e y - v a l u e   p a r a m e t e r s   a r e   ( a n d   m u s t   b e )   s o r t e d   a l p h a b e t i c a l l y   b y   k e y� ��� l     �E���E  � 8 2 OpenSSL is used to do the actual HMAC calculation   � ��� d   O p e n S S L   i s   u s e d   t o   d o   t h e   a c t u a l   H M A C   c a l c u l a t i o n� ��D� i   ��� I      �C��B�C 0 calcchecksum calcChecksum� ��� o      �A�A 0 	secretkey  � ��� o      �@�@ 
0 action  � ��� o      �?�? 
0 apikey  � ��� o      �>�> 0 	checktime  � ��� o      �=�= 0 	monitorid 	monitorId� ��� 1      �<
�< 
rslt� ��� o      �;�; 0 	timestamp  � ��:� 1      �9
�9 
vers�:  �B  � k     L�� ��� r     ��� b     ��� m     �� ���  a c t i o n� o    �8�8 
0 action  � o      �7�7  0 checksumstring checksumString� ��� r    ��� b    ��� b    	��� o    �6�6  0 checksumstring checksumString� m    �� ���  a p i k e y� o   	 
�5�5 
0 apikey  � o      �4�4  0 checksumstring checksumString� ��� r    ��� b    ��� b    ��� o    �3�3  0 checksumstring checksumString� m    �� ���  c h e c k t i m e� o    �2�2 0 	checktime  � o      �1�1  0 checksumstring checksumString� ��� r    ��� b    ��� b    ��� o    �0�0  0 checksumstring checksumString� m    �� ���  m o n i t o r I d� o    �/�/ 0 	monitorid 	monitorId� o      �.�.  0 checksumstring checksumString� ��� r    %��� b    #��� b    !��� o    �-�-  0 checksumstring checksumString� m     �� ���  r e s u l t s� 1   ! "�,
�, 
rslt� o      �+�+  0 checksumstring checksumString� ��� r   & -��� b   & +��� b   & )��� o   & '�*�*  0 checksumstring checksumString� m   ' (�� ���  t i m e s t a m p� o   ) *�)�) 0 	timestamp  � o      �(�(  0 checksumstring checksumString� ��� r   . 5��� b   . 3��� b   . 1��� o   . /�'�'  0 checksumstring checksumString� m   / 0�� ���  v e r s i o n� 1   1 2�&
�& 
vers� o      �%�%  0 checksumstring checksumString� ��� r   6 A��� b   6 ?��� b   6 =��� b   6 ;� � b   6 9 m   6 7 �  p r i n t f   ' % s '   ' o   7 8�$�$  0 checksumstring checksumString  m   9 : � : '   |   o p e n s s l   d g s t   - s h a 1   - h m a c  � o   ; <�#�# 0 	secretkey  � m   = > � <   - b i n a r y   |   o p e n s s l   e n c   - b a s e 6 4� o      �"�"  0 checksumscript checksumScript� 	
	 r   B I I  B G�!� 
�! .sysoexecTEXT���     TEXT o   B C��  0 checksumscript checksumScript�    o      �� 0 checksum  
 � L   J L o   J K�� 0 checksum  �  �D       	��   �������� &0 getloadavgsresult getLoadAvgsResult� 0 
postresult 
postResult� "0 buildpoststring buildPostString� 0 gettimestamp getTimeStamp� 0 getchecktime getCheckTime� 0 calcchecksum calcChecksum
� .aevtoappnull  �   � **** � p���� &0 getloadavgsresult getLoadAvgsResult�  �      s�
� .sysoexecTEXT���     TEXT� �j  � ����� 0 
postresult 
postResult� �
�
   �	������	 
0 apikey  � 0 	secretkey  � 0 monitis_url  � 
0 output  � 0 	monitorid 	monitorId
� 
rslt�   ���� ��������������� 
0 apikey  � 0 	secretkey  � 0 monitis_url  �  
0 output  �� 0 	monitorid 	monitorId
�� 
rslt�� 0 	checktime  �� 0 	timestamp  �� 0 checksum  �� 0 postdata postData�� 0 returnvalue returnValue ���� � ����� � ��� � ����� 0 getchecktime getCheckTime�� 0 gettimestamp getTimeStamp�� �� 0 calcchecksum calcChecksum�� "0 buildpoststring buildPostString
�� .sysoexecTEXT���     TEXT� >*j+  E�O*j+ E�O*�⠦�����+ E�O*栦�����+ E�O�%�%�%j E� �� ��������� "0 buildpoststring buildPostString�� ����   ������������������ 
0 action  �� 
0 apikey  �� 0 	checktime  �� 0 	monitorid 	monitorId
�� 
rslt�� 0 	timestamp  
�� 
vers�� 0 checksum  ��   	�������������������� 
0 action  �� 
0 apikey  �� 0 	checktime  �� 0 	monitorid 	monitorId
�� 
rslt�� 0 	timestamp  
�� 
vers�� 0 checksum  �� 0 postdata postData "$02>@LNZ\^jl�� M�E�O��%�%�%E�O��%�%�%E�O��%�%�%E�O��%�%�%E�O��%�%�%E�O��%�%�%E�O��%�%�%E�O� ��z���� !���� 0 gettimestamp getTimeStamp��  ��     ! }��
�� .sysoexecTEXT���     TEXT�� �j  �������"#���� 0 getchecktime getCheckTime��  ��  "  # ���
�� .sysoexecTEXT���     TEXT�� �j  �������$%���� 0 calcchecksum calcChecksum�� ��&�� &  ������������������ 0 	secretkey  �� 
0 action  �� 
0 apikey  �� 0 	checktime  �� 0 	monitorid 	monitorId
�� 
rslt�� 0 	timestamp  
�� 
vers��  $ ������������������������ 0 	secretkey  �� 
0 action  �� 
0 apikey  �� 0 	checktime  �� 0 	monitorid 	monitorId
�� 
rslt�� 0 	timestamp  
�� 
vers��  0 checksumstring checksumString��  0 checksumscript checksumScript�� 0 checksum  % ���������
�� .sysoexecTEXT���     TEXT�� M�%E�O��%�%E�O��%�%E�O��%�%E�O��%�%E�O��%�%E�O��%�%E�O�%�%�%�%E�O�j 
E�O� ��'����()��
�� .aevtoappnull  �   � ****' k     '**  ++  $,,  +--  2..  9//  G00  L����  ��  ��  (  )  "�� )�� 0�� 7�� >������������ 
0 apikey  �� 0 	secretkey  �� 0 monitis_url  �� 
0 output  �� 0 	monitorid 	monitorId�� &0 getloadavgsresult getLoadAvgsResult��  0 loadavgsresult loadAvgsResult�� �� 0 
postresult 
postResult�� (�E�O�E�O�E�O�E�O�E�O*j+ 
E�O*�������+ ascr  ��ޭ