   M S B A M L   `   `   `  ����N  JAPKRepackageSDKTool, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null9!clr-namespace:APKRepackageSDKToolAPKRepackageSDKTool  5   	   $    APKRepackageSDKTool.MainWindow   5   	   W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5   	   R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   3local!clr-namespace:APKRepackageSDKTool     5   	     � Title$  APK重打包工具��5   	   $	��700��6   $
��1000��6'   ���	#FFD6DBE9.��5	      � .+�5
   
   �� $��0,0,0,0q�6   .@�5      �� $��打包��6   .��5      � .+�5      � $��0,0,0,30q�6   $
��Left=�6-   $	��432��6H   .+�5      �� $��项目选择��6    $��10,5,0,0q�6/   $
��Left=�6A   $��76��6\   $��25��6g   $	��Top=�6s   �� 5      -   5         ��Name$ ComboBox_gameList��5   #   $��	90,5,90,0q�6>   $	��Top=�6Q    �� DisplayMemberPath$ GameName��5       �� SelectedValuePath$ GameName��5      $��19��5   M   �� 5      -   5        $��编辑��5   !   $��
345,5,10,0q�6.   $	��Top=�6B   $��19��6y   �� 5      -   5         ��Name$ Text_APKPath��5   "   $��
90,28,90,0q�68    �� TextWrapping$ NoWrap=�6L    J� RenderTransformOrigin$ 0.673,4.796&�6b    �� MaxLines$ 1��6�   $��19��6�   $	��Top=�6�   �� 5      $��	APK目录��6    $��	10,28,0,0q�60   $
��Left=�6C   $��58��6^   $	��Top=�6j   �� 5      -   5        $��浏览��5   !   $��345,28,10,0q�6.   $��19��6a   $	��Top=�6m   �� 5      -   5        $ Text_APKExportPath��5   "   $��
90,52,90,0q�6>   $ NoWrap=�6R   $ 0.673,4.796&�6h   $ 1��6�   $��19��6�   $	��Top=�6�   �� 5      $��导出目录��6    $��	10,52,0,0q�6/   $
��Left=�6B   $��81��6]   $	��Top=�6h   �� 5      -   5        $��浏览��5   !   $��345,52,10,0q�6.   $��19��6h   $	��Top=�6t   $ 
0.92,0.526&�6�   �� 5      -   5         ��Name$ Button_Repack��5   !   $��	重打包��68   $��0,0,10,5q�6F   $��30��6X   $��Bottom=�6d   $��Right=�6   $��75��6�   6�   �� 5      -   5        	 ��Name$	 ListBox_Channel��5   !   
���   �$��1q�6N   $��10,100,10,40q�6b   ._�5       �� -	   5        
 ��Name$
 ListBox_channel��5    &    �� AlternationCount$
 1000��6?   $��0,0,0,0q�6W   ��5!   "   �� 5"   &    �� 
TargetType" ��6,   .�5#   *   ��  �� Property � �� �� Value$ Stretch=�6W   5$   '   ��5&   "   �� 5'   &   .R�5(   *   � .+�5)   .   �� -
   5        ��5)   7   ��  �� Path$
 Name� d� 	IsChecked 6U   �� $ 	IsChecked�
 � Tag 6�   �� $
 Name�6�   �� 5*   .   -   5        $��编辑��5*   5   $��Right=�6]   $��40��6y   $��0,0,50,0q�6�    6�   �� $
 Name�6�   �� 5+   .   -   5        $��删除��5+   5   $��Right=�6d   $��40��6�    6�   �� $
 Name�5,   +   5-   '   5/      50      �� 51      -   5        $��新增渠道��51   !   $��0,0,90,5q�60   $��30��6B   $��Bottom=�6N   $��Right=�6i   $��75��6�   6�   �� 52      $��渠道选择��6    $��
10,76,10,0q�6/   $��25��6C   $	��Top=�6O   $��Center=�6g   �� 53      -   5        $ Text_AddChannel��53   "   $��
10,0,171,5q�6;   $ NoWrap=�6O   $ 0.673,4.796&�6e   $ 1��6�   $��30��6�   $��Bottom=�6�   55      � 56      -   5         �Name$ Progress_repackage��56   "   $��
10,0,10,10q�6>   $��17��6R   $��Bottom=�6^   �� 57      -   5         ��Name$ Text_progressName��57      $��准备��67   $��	10,0,10,7q�6D   $��24��6W   $��Bottom=�6c   $��Center=�6~   � 58      $��
430,0,0,30q�6   .+�59      �� $��输出��6    $��0,5,0,0q�6-   $ 0.021,0.189&�6>   $��25��6b   $	��Top=�6n   $
��Left=�6�   $	��194��6�   $��2��6�   �� 5:      -   5        $��清空��5:   !   $��0,5,10,0q�6.   $��19��6@   $	��Top=�6L   $��Right=�6d   $��75��6�   6�   �� 5;      -   5        $��复制到剪贴板��5;   !   $��0,5,93,0q�62   $��19��6D   $	��Top=�6P   $��Right=�6h   $��90��6�   6�   �� 5<      -   5        $ Text_output��5<   "   $��	0,29,10,5q�67   $
 Wrap=�6J   " �� VerticalScrollBarVisibility$
 Auto=�6^   5=      5>      5@      �� 5A      $��	首选项��6   .��5B      � .+�5C      �� $��SDK库 目录��6   $��	10,10,0,0q�6.   $
��Left=�6A   $	��115��6\   $	��Top=�6i   $ 0.524,-1.24&�6�   �� 5D      -   5        $��浏览��5D      $��	0,10,10,0q�6*   $��19��6b   $	��Top=�6n   $ 
0.92,0.526&�6�   $��Right=�6�   $��96��6�   �� 5E      -   5        $ Text_SDKLibPath��5E      $��130,10,110,0q�67   $ NoWrap=�6M   $ 0.673,4.796&�6c   $ 1��6�   $��19��6�   $	��Top=�6�   �� 5G      $��Android SDK 目录��6   $��	10,34,0,0q�65   $
��Left=�6H   $	��115��6c   $	��Top=�6p   �� 5H      -   5        $ Text_AndroidAPKPath��5H      $��130,34,110,0q�6;   $ NoWrap=�6Q   $ 0.673,4.796&�6g   $ 1��6�   $��19��6�   $	��Top=�6�   �� 5I      -   5        $��浏览��5I      $��	0,34,10,0q�6*   $��19��6`   $	��Top=�6l   $ 
0.92,0.526&�6�   $��Right=�6�   $��96��6�   �� 5K      $��Jetifier 目录��6   $��	10,58,0,0q�62   $
��Left=�6E   $	��115��6`   $	��Top=�6m   �� 5L      -   5        $ Text_jetifierPath��5L      $��130,58,110,0q�69   $ NoWrap=�6O   $ 0.673,4.796&�6e   $ 1��6�   $��19��6�   $	��Top=�6�   �� 5M      -   5        $��浏览��5M      $��	0,58,10,0q�6*   $��19��6^   $	��Top=�6j   $ 
0.92,0.526&�6�   $��Right=�6�   $��96��6�   �� 5O      $��Maven 缓存目录��6   $��	10,82,0,0q�61   $
��Left=�6D   $	��115��6_   $	��Top=�6l   �� 5P      -   5        $ Text_mavenCatahPath��5P      $��130,82,110,0q�6i   $ NoWrap=�6   $ 0.673,4.796&�6�   $ 1��6�   $��19��6�   $	��Top=�6�   �� 5Q      -   5        $��浏览��5Q      $��	0,82,10,0q�6*   $��19��6b   $	��Top=�6n   $ 
0.92,0.526&�6�   $��Right=�6�   $��96��6�   �� 5T      $��Build Tool 版本��6   $��
10,106,0,0q�64   $
��Left=�6H   $	��115��6c   $	��Top=�6p   �� 5U      -   5        $ Text_BuildToolVersion��5U      $��130,106,400,0q�6m   $ NoWrap=�6�   $ 0.673,4.796&�6�   $ 1��6�   $��19��6�   $	��Top=�6�   �� 5W      $��	API Level��6   $��
10,130,0,0q�60   $
��Left=�6D   $	��115��6_   $	��Top=�6l   �� 5X      -   5        $ Text_APILevel��5X      $��130,130,400,0q�6]    �� IsInputMethodEnabled .  $ NoWrap=�6�   $ 0.673,4.796&�6�   $ 1��6
  $��19��6  $	��Top=�6#  �� 5Z      $��ApkTool Version��6   $��
10,154,0,0q�66   $
��Left=�6J   $	��115��6e   $	��Top=�6r   �� 5[      -   5        $ Text_ApkTool��5[      $��130,154,400,0q�6[    .  $ NoWrap=�6�   $ 0.673,4.796&�6�   $ 1��6  $��19��6  $	��Top=�6!  �� 5]      $��RAR 压缩命令��6   $��
10,178,0,0q�6/   $
��Left=�6C   $	��115��6^   $	��Top=�6k   �� 5^      -   5        $ Text_RarCompressCmd��5^      $��130,178,400,0q�6i    .  $ NoWrap=�6�   $ 0.673,4.796&�6�   $ 1��6�   $��19��6�   $	��Top=�6�   �� 5`      $��RAR 解压命令��6   $��
10,202,0,0q�6/   $
��Left=�6C   $	��115��6^   $	��Top=�6k   �� 5a      -    5        $ Text_RarDocompressCmd��5a      $��130,202,400,0q�6m    .  $ NoWrap=�6�   $ 0.673,4.796&�6�   $ 1��6�   $��19��6�   $	��Top=�6  �� 5c      -!   5         ��Name$ CheckBox_IsTimeStamp��5c      $��APK名称添加时间戳��6=   $
��Left=�6R   $��
10,231,0,0q�6m   $	��Top=�6�   $ 0.993,0.225&�6�   �� 5d      -"   5        $ CheckBox_IsPutCMD��5d      $��输出原始命令��6:   $
��Left=�6K   $��
10,252,0,0q�6f   $	��Top=�6z   $ 0.993,0.225&�6�   �� 5e      -#   5        $ CheckBox_IsAutoInstall��5e      $��自动安装��6?   $
��Left=�6N   $��
10,272,0,0q�6i   $	��Top=�6}   $ 0.993,0.225&�6�   �� 5g      -$   5        $��保存��5g      $��
10,0,10,10q�6*   $��19��6W   $��Bottom=�6c   �� 5h      -%   5        $!��打开APK打包缓存目录��5h      $��
10,0,10,34q�63   $��19��6m   $��Bottom=�6y   5j      5k      5l      5m      5n      