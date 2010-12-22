FasdUAS 1.101.10   ��   ��    k             l      ��  ��   B<
 Title: captio_thl_mover
  
 File: captio_thl_mover.scpt
  Provides applescript application to move todo messages from Mail to The Hit List
  
 Version:
  2010.12.22
  
 Copyright:
  2010 Mike Joseph
  
 Author:
  Mike Joseph <mike@mode3.net>
  
 License:
  GNU GPL 2.0 - http://opensource.org/licenses/gpl-2.0.php
     � 	 	x 
   T i t l e :   c a p t i o _ t h l _ m o v e r 
     
   F i l e :   c a p t i o _ t h l _ m o v e r . s c p t 
     P r o v i d e s   a p p l e s c r i p t   a p p l i c a t i o n   t o   m o v e   t o d o   m e s s a g e s   f r o m   M a i l   t o   T h e   H i t   L i s t 
     
   V e r s i o n : 
     2 0 1 0 . 1 2 . 2 2 
     
   C o p y r i g h t : 
     2 0 1 0   M i k e   J o s e p h 
     
   A u t h o r : 
     M i k e   J o s e p h   < m i k e @ m o d e 3 . n e t > 
     
   L i c e n s e : 
     G N U   G P L   2 . 0   -   h t t p : / / o p e n s o u r c e . o r g / l i c e n s e s / g p l - 2 . 0 . p h p 
   
  
 i         I     ������
�� .miscidlenmbr    ��� null��  ��    k            I     �������� (0 addtasksfromunread addTasksFromUnread��  ��        l   ��  ��    ; 5 the timeout in seconds, currently 900 or 15 minutes.     �   j   t h e   t i m e o u t   i n   s e c o n d s ,   c u r r e n t l y   9 0 0   o r   1 5   m i n u t e s .   ��  L       m    �������        l     ��������  ��  ��     ��  i        I      �������� (0 addtasksfromunread addTasksFromUnread��  ��    k     �       O       !   r     " # " l    $���� $ I   �� %��
�� .corecnte****       **** % l    &���� & 6    ' ( ' 2   ��
�� 
prcs ( =    ) * ) 1   	 ��
�� 
pnam * m     + + � , ,  M a i l��  ��  ��  ��  ��   # o      ���� 0 	isrunning 	isRunning ! m      - -�                                                                                  sevs  alis    �  Macintosh HD               ��GH+     jSystem Events.app                                               5Cǚ|        ����  	                CoreServices    ���      ǚR�       j   &   %  :Macintosh HD:System:Library:CoreServices:System Events.app  $  S y s t e m   E v e n t s . a p p    M a c i n t o s h   H D  -System/Library/CoreServices/System Events.app   / ��     . / . Z    $ 0 1���� 0 =    2 3 2 o    ���� 0 	isrunning 	isRunning 3 m    ����   1 L     ����  ��  ��   /  4�� 4 O   % � 5 6 5 k   ) � 7 7  8 9 8 l  ) )�� : ;��   : d ^ check for unread messages that have 'Todo' in the subject and are from 'captio' or my wife ;)    ; � < < �   c h e c k   f o r   u n r e a d   m e s s a g e s   t h a t   h a v e   ' T o d o '   i n   t h e   s u b j e c t   a n d   a r e   f r o m   ' c a p t i o '   o r   m y   w i f e   ; ) 9  = > = r   ) W ? @ ? l  ) U A���� A 6  ) U B C B n   ) . D E D 2  , .��
�� 
mssg E 1   ) ,��
�� 
inmb C F   / T F G F F   0 A H I H =  1 8 J K J 1   2 4��
�� 
isrd K m   5 7��
�� boovfals I E   9 @ L M L 1   : <��
�� 
subj M m   = ? N N � O O  T o d o G l  B S P���� P G   B S Q R Q E   C J S T S 1   D F��
�� 
sndr T m   G I U U � V V  c a p t i o R E   K R W X W 1   L N��
�� 
sndr X m   O Q Y Y � Z Z  s h a n n o n��  ��  ��  ��   @ o      ����  0 unreadmessages unreadMessages >  [ \ [ r   X [ ] ^ ] m   X Y _ _ � ` `   [ G m a i l ] / A l l   M a i l ^ o      ���� 0 
archivebox 
archiveBox \  a�� a X   \ � b�� c b k   p � d d  e f e r   p w g h g l  p u i���� i n   p u j k j 1   q u��
�� 
ctnt k o   p q���� 0 unreadmessage unreadMessage��  ��   h o      ���� 0 messagetext messageText f  l m l r   x } n o n l  x { p���� p n   x { q r q 1   y {��
�� 
subj r o   x y���� 0 unreadmessage unreadMessage��  ��   o o      ����  0 messagesubject messageSubject m  s t s O   ~ � u v u O  � � w x w I  � ����� y
�� .corecrel****      � null��   y �� z {
�� 
kocl z m   � ���
�� 
Task { �� |��
�� 
prdt | K   � � } } �� ~ 
�� 
Ttit ~ o   � �����  0 messagesubject messageSubject  �� � �
�� 
Tnts � o   � ����� 0 messagetext messageText � �� ���
�� 
Tstd � I  � �������
�� .misccurdldt    ��� null��  ��  ��  ��   x 1   � ���
�� 
Tinb v m   ~ � � ��                                                                                      @ alis    d  Macintosh HD               ��GH+     qThe Hit List.app                                                R����x        ����  	                Applications    ���      ��       q  *Macintosh HD:Applications:The Hit List.app  "  T h e   H i t   L i s t . a p p    M a c i n t o s h   H D  Applications/The Hit List.app   / ��   t  � � � l  � ���������  ��  ��   �  � � � l  � ��� � ���   �   archives the message    � � � � *   a r c h i v e s   t h e   m e s s a g e �  ��� � I  � ��� � �
�� .coremovenull���     mssg � o   � ����� 0 unreadmessage unreadMessage � �� ���
�� 
insh � n   � � � � � 4   � ��� �
�� 
mbxp � o   � ����� 0 
archivebox 
archiveBox � 4   � ��� �
�� 
mact � m   � � � � � � � 
 G m a i l��  ��  �� 0 unreadmessage unreadMessage c o   _ `����  0 unreadmessages unreadMessages��   6 m   % & � ��                                                                                  emal  alis    D  Macintosh HD               ��GH+     qMail.app                                                        c�ǚ�        ����  	                Applications    ���      ǚTB       q  "Macintosh HD:Applications:Mail.app    M a i l . a p p    M a c i n t o s h   H D  Applications/Mail.app   / ��  ��  ��       �� � � ���   � ����
�� .miscidlenmbr    ��� null�� (0 addtasksfromunread addTasksFromUnread � �� ���� � ���
�� .miscidlenmbr    ��� null��  ��   �   � ������ (0 addtasksfromunread addTasksFromUnread����� 	*j+  O� � �� ���� � ����� (0 addtasksfromunread addTasksFromUnread��  ��   � �������������� 0 	isrunning 	isRunning��  0 unreadmessages unreadMessages�� 0 
archivebox 
archiveBox�� 0 unreadmessage unreadMessage�� 0 messagetext messageText��  0 messagesubject messageSubject � # -�� ��� +�� ��������� N�� U Y _������ �����������������������~ ��}�|
�� 
prcs �  
�� 
pnam
�� .corecnte****       ****
�� 
inmb
�� 
mssg
�� 
isrd
�� 
subj
�� 
sndr
�� 
kocl
�� 
cobj
�� 
ctnt
�� 
Tinb
�� 
Task
�� 
prdt
�� 
Ttit
�� 
Tnts
�� 
Tstd
�� .misccurdldt    ��� null�� �� 
�� .corecrel****      � null
� 
insh
�~ 
mact
�} 
mbxp
�| .coremovenull���     mssg�� �� *�-�[�,\Z�81j E�UO�j  hY hO� �*�,�-�[[[�,\Zf8\[�,\Z�@A\[[�,\Z�@\[�,\Z�@BA1E�O�E�O p�[a a l kh �a ,E�O��,E�Oa  /*a , &*a a a a �a �a *j a a  UUO�a *a a  /a !�/l "[OY��Uascr  ��ޭ