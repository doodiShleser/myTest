   M S B A M L   `   `   `  ����@  <PLWPF, Version=1.0.0.0, Culture=neutral, PublicKeyToken=nullclr-namespace:PLWPFPLWPF  5   	   = 9BE, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null#clr-namespace:BE;assembly=BEBE 5   	       PLWPF.MotherDetailes   5   	   W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35^ ZWindowsFormsIntegration, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   %localclr-namespace:PLWPF     5   	   +BEclr-namespace:BE;assembly=BE     5   	   $	��300��5	   	   $	��600��6   .��5
      � -   5          �Name$  detailesParent��5
      .+�5   
   � -   5        $  motherDetailes��5       � RowDefinitions 5      �� 5      $��3* �6    �� 5      $��* �6    .+�5      � $��0��6    � ColumnDefinitions 5      �� 5      $��1* �6'   �� 5      $��2* �6'   .+�5      �� $��0��6   .+�5      �� -   5         ��Name$
 Back��5      $��Go Back��6+   $��60��6Q   $
��Left=�6\   $��5q�6w   �� 5      -   5         ��Name$ myName��5      $��18(�6,   $
��Bold"�6:   �� 5      -   5        $ 	myAddress��5      $��12(�6/   
����  �6=   �� 5      -   5         ��Name$ SelfDetailes��5       �� 5      -   5        $ Space��5      $��10,10,10,60q�6+   �� 5      -   5         ��Name$ myChild��5      $	��170��61   $��25��6>   $��Center=�5      $��Bottom=�68    �� 
IsEditable .  �� 
IsReadOnly . 	 �� Text$	 -- Select Child --��5   @   5      �� 5      -	   5        $
��Days��5   ,   $��1��6   
 �� View
 5       �� 5!      .P�5"      �� $	��Day��6-    �� Width$	 100��6:    �� DisplayMemberBinding 6F   �� *day+�� 5#      $
��Work��6-   $	 100��6;    6G   �� *work+�� 5$      $��Begin��6-   $	 100��6<    6H   �� *begin+�� 5%      $	��End��6-   $	 100��6:    6F   �� *end+5&      5(      5)      �� 5*      $��1��6    �� Orientation$ 
Horizontal=�6&   .+�5+      �� -
   5        $ Update��5+      $��Update Detailes��6)   $��10,10,10,10q�6X   $	��100��6m   5-      5.      � 5/   
   -   5        $  childDetailes��5/      $y�	Collapsed=�6&   50      51      