   M S B A M L   `   `   `  ����N  JAPKRepackageSDKTool, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null9!clr-namespace:APKRepackageSDKToolAPKRepackageSDKTool  5   	   -    'APKRepackageSDKTool.ChannelEditorWindow   5   	   W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5   	   R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   3local!clr-namespace:APKRepackageSDKTool     5   	     � Title$  渠道设置��5   	   $	��700��6   $
��1000��6#   .��5	      � -   5         �Name$ 	Grid_root��5	       � 	Resources 5
   
    �� 
TargetType �� Property �� Value �� 
TargetType �� Padding��%�   '��       �� 5      " ��6   .�5      ��  � �� 5      �� 5      " ��6*   .R�5      �� # z��6%   ._�5   "   �� ��.  6Q   5      5      5      5      5      .+�5   
   �� $��	渠道名��6   $
��Left=�6   $��	10,10,0,0q�69   $	��Top=�6L   �� 5   
   $��18��6   $��	61,17,0,0q�6    �� TextWrapping$
 Wrap=�61   $	��Top=�6h   $
��Left=�6�   $	��189��6�   ��6E   �� *Name+	 �� Mode$	 TwoWay=�6�   �� 5   
   $��10,40,10,10q�6   .@�5      �� $��签名��6   .��5      � ���	#FFF9F9F9.+�5      � $��0,0,0,0q�6   .+�5      �� $��KeyStore��6    $
��Left=�63   $��	10,10,0,0q�6N   $	��Top=�6a   �� 5      -   5        
 ��Name$
 TextBox_keyStore��5   "   $��18��6<   $��133,17,80,0q�6H   $
 Wrap=�6]   $	��Top=�6�   ��6q   �� *KeyStorePath+$	 TwoWay=�6�   �� 5      -   5        $��浏览��5   !   $��	0,17,10,0q�6.   $	��Top=�6A   $��Right=�6Y   $��66��6u   6�   �� 5       $��KeyStorePassWord��6    $
��Left=�6;   $��	10,35,0,0q�6V   $	��Top=�6i   G� 5!      -   5         G�Name$ PasswordBox_keyStore��5!   &   $��133,40,80,0q�6D   $	��Top=�6Y    G� PasswordChar 6q   �� *KeyStorePassWord+$	 TwoWay=��� 5#      $��Alias��6    $
��Left=�60   $��	10,58,0,0q�6K   $	��Top=�6^   �� 5$      $��18��6"   $��133,65,80,0q�6.   $
 Wrap=�6C   $	��Top=�6�   ��6W   �� *KeyStoreAlias+$	 TwoWay=�6�   �� 5&      $��AliasPassWord��6    $
��Left=�68   $��	10,83,0,0q�6S   $	��Top=�6f   G� 5'      -   5        $ PasswordBox_alias��5'   &   $��133,88,80,0q�6A   $	��Top=�6V    6n   �� *KeyStorePassWord+$	 TwoWay=��� 5)      $��使用V2签名��6#   $
��Left=�64   $��
14,126,0,0q�6O   $	��Top=�6c    d� 	IsChecked 6{   �� *	UseV2Sign+$	 TwoWay=��� 5*      $	��JKS��6    $
��Left=�6.   $��
10,146,0,0q�6I   $	��Top=�6]   �� 5+      -   5        $
 TextBox_jks��5+   "   $��18��67   $��133,146,80,0q�6C   $
 Wrap=�6Y   $	��Top=�6�   ��6m   �� *	JksPath+$	 TwoWay=�6�   �� 5,      -   5        $��浏览��5,   !   $��
0,145,10,0q�6.   $	��Top=�6B   $��Right=�6Z   $��66��6v   6�   5/      50      51      �� 52      $��应用��6   .��53      � ���	#FFF9F9F9.+�54      �� $��APP Name��6   $
��Left=�6/   $��	10,10,0,0q�6J   $	��Top=�6]    J� RenderTransformOrigin$ -0.285,-0.196&�6u   �� 55      $��23��6   $��121,10,119,0q�6*   $
 Wrap=�6@   $	��Top=�6~   ��6T   ��  �� Path$ AppName�$	 TwoWay=�6~   �� 56      $��Package Name��6   $
��Left=�63   $��	10,35,0,0q�6N   $	��Top=�6a   $ -0.285,-0.196&�6y   �� 57      $��23��6   $��121,38,119,0q�6*   $
 Wrap=�6@   $	��Top=�6}   ��6T   �� *PackageName+$	 TwoWay=�6}   �� 58      $��APP Icon��6   $
��Left=�6/   $��	10,60,0,0q�6J   $	��Top=�6]   $ -0.285,-0.196&�6u   �� 59      
���   �$��1q�61   $
��Left=�6E   $	��100��6`   $��
121,94,0,0q�6m   $	��Top=�6�   $	��100��6�   ._�5:      �� -   5         ��Name$ 
Image_icon��5:       ��64   �� *	AppIcon+$	 OneTime=� �� StringFormat$ 
Pack://{0}��5;      �� 5<      -	   5        $��浏览��5<      $��	0,66,10,0q�6*   $	��Top=�6=   $��Right=�6u   $��89��6�   �� 5=      -
   5        $
 TextBox_Icon��5=      $��23��64   $��121,66,119,0q�6@   $
 Wrap=�6V   $	��Top=�6�   ��6j   �� *	AppIcon+$	 TwoWay=�6�   �� 5>      $��
APP Banner��6   $
��Left=�61   $��
10,201,0,0q�6L   $	��Top=�6`   $ -0.285,-0.196&�6x   �� 5?      -   5        $
 TextBox_Banner��5?      $��23��66   $��121,203,80,0q�6B   $
 Wrap=�6X   $	��Top=�6�   ��6l   �� *	AppBanner+$	 TwoWay=�6�   �� 5@      -   5        $��浏览��5@      $��Right=�6*   $��	0,207,0,0q�6F   $	��Top=�6Y   $��75��6q   6|   �� 5A      
���   �$��1q�61   $
��Left=�6E   $��90��6`   $��121,231,0,0q�6l   $	��Top=�6�   $	��160��6�   ._�5B      �� -   5        $ Image_Banner��5B       ��66   �� *	AppBanner+$	 OneTime=�$ 
Pack://{0}��5C      �� 5D      -   5        $��编辑多语言��5D      $��	0,10,10,0q�6-   $	��Top=�6@   $��Right=�6X   $��89��6t   6   5E      5F      �� 5G      $	��SDK��6   .��5H      � ���	#FFF9F9F9 � ColumnDefinitions 5I      �� 5J      $	��25* �6+   �� 5K      $��5 �6+   �� 5L      $	��50* �6+   .+�5N      �� $��1��6$   $��5��64   $��Stretch=�6>   $��
0,-10,0,10q�6\   � 5O      $��2��6   .+�5P      �� -   5         ��Name$ ListBox_SDKList��5P   "   $��10,10,10,34q�6;   ��5Q      �� 5R   "   " ��6(   .�5S   &   ��  � ��$ Stretch=�6S   5T   #   ��5V      �� 5W   "   .R�5X   &   � .+�5Y   *   �� ��63   �� $ SdkName� 6T   �� $ 	IsChecked�
 � Tag 6y   �� $ SdkName��� 5Z   *   -   5        $��查看��5Z   1   $��Right=�6>   $��40��6�   $��0,0,50,0q�6�    6Z   �� $ SdkName�6�   �� 5[   *   -   5        $��编辑��5[   1   $��Right=�6>   $��40��6�    6Z   �� $ SdkName�6�   5\   '   5]   #   5_      �� 5`      -   5        $��新增��5`   !   $��	0,0,10,10q�6.   $��19��6]   $��Bottom=�6i   $��Right=�6�   $��75��6�   �� 5a      -   5        $
 TextBox_SDKName��5a   "   $��
10,0,90,10q�6;   $
 Wrap=�6O   $�� ��6c   $��19��6k   $��Bottom=�6w   5c      � 5d      $��2��6   .+�5e      �� -   5        $ ListBox_SdkConfigList��5e   "   $��10,10,10,34q�6A   ��5f      �� 5g   "   " ��6(   .�5h   &   ��  � ��$ Stretch=�6S   5i   #   ��5k      �� 5l   "   .R�5m   &   � .+�5n   *   �� $	��300��6Y   $
��Left=�6e   ��60   �� $	 Key�$	 TwoWay=�6e   �� 5o   *   $��Right=�6[   $	��300��6w   ��62   �� $ Value�$	 TwoWay=�6w   5p   '   5q   #   5s      �� 5t      -   5        $��刷新��5t   !   $��	0,0,10,10q�6.   $��19��6^   $��Bottom=�6j   $��Right=�6�   $��75��6�   5v      5w      5x      �� 5y      $��渠道配置��6   .��5z      � ���	#FFF9F9F9.+�5{      �� -   5        $ ListBox_PropertiesList��5{      $��10,10,10,34q�6>   ��5|      �� 5}      " ��6$   .�5~   "   ��  � ��$ Stretch=�6O   5      ��5�      �� 5�      .R�5�   "   � .+�5�   &   �� $	��140��6U   $
��Left=�6a   ��6,   �� $	 Key�$	 TwoWay=�6a   �� 5�   &   $��Right=�6W   $	��300��6s   $��0,0,60,0q�6   ��6.   �� $ Value�$	 TwoWay=�6   �� 5�   &   -   5        $��删除��5�   -   $��Right=�6:   $��50��6�   $��0,0,0,0q�6�    6V   �� $	 Key�6�   5�   #   5�      5�      �� 5�      -   5        $��新增��5�      $��
0,0,126,10q�6*   $��19��6[   $��Bottom=�6g   $��Right=�6�   $��75��6�   �� 5�      -   5        $
 TextBox_PropertiesKey��5�      $��10,0,206,10q�6=   $
 Wrap=�6R   $�� ��6f   $��19��6n   $��Bottom=�6z   �� 5�      -   5        $��快速添加��5�      $��	0,0,10,10q�6,   $��Right=�6`   $	��106��6|   $��19��6�   $��Bottom=�6�   5�      5�      �� 5�      $��其他��6   .��5�      � ���	#FFF9F9F9.+�5�      �� $��分包��6   $
��Left=�6,   $��
10,116,0,0q�6G   $	��Top=�6[    6s   �� *
IsSplitDex+$	 TwoWay=��� 5�      $��重新分包��6   $
��Left=�6.   $��
30,136,0,0q�6I   $	��Top=�6]    6u   �� *IsResplitDex+$	 TwoWay=��� 5�      $��修改MainApplication��6   $
��Left=�6;   $��	10,64,0,0q�6V   $	��Top=�6i    6�   �� *IsChangeMainApplication+$	 TwoWay=��� 5�      $��修改MainActivity��6   $
��Left=�68   $��	10,84,0,0q�6S   $	��Top=�6f    6~   �� *IsChangeMainActivity+$	 TwoWay=��� 5�      $N��H处理无效文件（移除xml文件名和内容中的所有 $ 符号）��6   $��
328,14,0,0q�6F   $	��Top=�6Z   $
��Left=�6�   $	��511��6�    6r   �� *IsExecuteInvalidFile+$	 TwoWay=�6�   �� 5�      $"��只反编译主Classes文件��6   $
��Left=�68   $��	10,34,0,0q�6S   $	��Top=�6f    6~   �� *IsOnlyMainClasses+$	 TwoWay=��� 5�      $��不压缩资源文件��6   $
��Left=�61   $��
10,182,0,0q�6L   $	��Top=�6`    6x   �� *IsNoCompressResource+$	 TwoWay=��� 5�      $:��4强制反编译清单文件(反编译Resource文件)��6   $
��Left=�6B   $��	10,14,0,0q�6]   $	��Top=�6p    6�   �� *IsForceManifest+$	 TwoWay=��� 5�      $��重新生成R表��6   $
��Left=�60   $��
10,202,0,0q�6K   $	��Top=�6_    6w   �� *IsRebuildRTable+$	 TwoWay=��� 5�      $��使用aapt2��6   $
��Left=�61   $��
26,222,0,0q�6L   $	��Top=�6`    6x   �� *
IsUseAAPT2+$	 TwoWay=��� 5�      $��输出日志��6   $
��Left=�6.   $��
10,260,0,0q�6I   $	��Top=�6]    6u   �� *IsLog+$	 TwoWay=��� 5�      $��字节对齐��6   $��10,280,445,0q�6.   $	��Top=�6D    6\   �� *
IsZipalign+$	 TwoWay=��� 5�      $��删除临时目录��6   $
��Left=�60   $��
10,300,0,0q�6K   $	��Top=�6_   $ 0.993,0.225&�6�    6w   �� *IsDeleteTempPath+$	 TwoWay=�6�   �� 5�      -   5        $��复制渠道配置��5�      $��	10,0,0,10q�6.   $��Bottom=�6A   $
��Left=�6v   $	��126��6�   �� 5�      -   5        $��粘贴渠道配置��5�      $��
155,0,0,10q�6.   $
��Left=�6]   $	��126��6x   $��19��6�   $��Bottom=�6�   �� 5�      $��精简Yml文件��6   $��
328,34,0,0q�61   $	��Top=�6E   $
��Left=�6�   $	��511��6�    6]   �� *IsSimplifyYml+$	 TwoWay=�6�   �� 5�      $
��Left=�6   $��17��6e   $��
78,116,0,0q�6q   $
 Wrap=�6�   $	��Top=�6�   $	��120��6�   $ 0.175,3.059&�6�   ��69   �� *SplitDexOffset+$	 TwoWay=�6�   �� 5�      $/��)提取so文件(android:extractNativeLibs)��6   $��
328,54,0,0q�6K   $	��Top=�6_   $
��Left=�6�   $	��511��6�    6w   �� *IsExtractNativeLibs+$	 TwoWay=�6�   5�      5�      5�      �� 5�   
   -   5        $��保存��5�      $��	0,16,10,0q�6   $	��Top=�61   $��Right=�6I   $��75��6e   6p   �� 5�   
   $��名称后缀��6   $
��Left=�6   $��
255,13,0,0q�6:   $	��Top=�6N   �� 5�   
   $��18��6   $��328,17,90,0q�6   $
 Wrap=�63   $	��Top=�6l   ��6G   �� *Suffix+$	 TwoWay=�6l   5�      5�      