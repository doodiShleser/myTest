   M S B A M L   `   `   `  ����@  <PLWPF, Version=1.0.0.0, Culture=neutral, PublicKeyToken=nullclr-namespace:PLWPFPLWPF  5   	   = 9BE, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null#clr-namespace:BE;assembly=BEBE 5   	       PLWPF.MoreNannyDetailes   5   	   W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35^ ZWindowsFormsIntegration, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   %localclr-namespace:PLWPF     5   	   +BEclr-namespace:BE;assembly=BE     5   	     � Title$  MoreNannyDetailes��5	   	   $	��400��6#   $	��650��60   .��5
      �  � ColumnDefinitions 5   
   �� 5      $��* �6   �� 5      $��2* �6   .+�5   
   �� -   5         ��Name$
 More��5   %   $��0��6   .+�5      �� -   5         ��Name$
 Name��5      $��	 0,0,0,20q�6"   $��22(�65   $
��Bold"�6C   
����  �6U   � 5      -   5         �Name$ grid1��5      $
��Left=�5      $��	0,10,0,10q�6.   $��Center=�6A    5      �� 5      $
��Auto �6'   �� 5      $
��Auto �6'    � RowDefinitions 5      �� 5      $
��Auto �6$   .+�5      �� $��	elevator:��6   $��0��6,   $
��Left=�6<   $��0,3,0,3q�6W   $��0��6h   $��Center=�6u   �� 5      -   5         ��Name$ elevatorCheckBox��5      $�� ��65   $��1��6@   $
��Left=�6P   {�.  $��3q�6�   $��0��6�   $��Center=�6�    d� 	IsChecked 6}   �� *
elevator+ �� Mode$ TwoWay=�	 �� NotifyOnValidationError	 . 
 �� ValidatesOnExceptions
 . 6�   5      � 5      -   5        $ grid2��5      $
��Left=�5      $��	0,10,0,10q�6.   $��Center=�6A    5      �� 5       $
��Auto �6'   �� 5!      $
��Auto �6'    5#      �� 5$      $
��Auto �6$   .+�5&      �� $"��Days Off according Ha-TAMAT:��6   $��0��6?   $
��Left=�6O   $��3q�6j   $��0��6u   $��Center=�6�   �� 5'      -   5        $ daysOffCheckBox��5'      $�� ��64   {�.  $��1��6Q   $
��Left=�6a   $��3q�6�   $��0��6�   $��Center=�6�    6|   �� *	DaysOff+$ TwoWay=�	 . 
 . 6�   5(      � 5)      -   5        $ grid3��5)      $
��Left=�6"   $��	0,10,0,10q�6=   $��Center=�6P    5*      �� 5+      $
��Auto �6'   �� 5,      $
��Auto �6'    5.      �� 5/      $
��Auto �6$   .+�51      �� $��is Able Paying Per Hours:��6   $��0��6<   $
��Left=�6L   $��3q�6g   $��0��6r   $��Center=�6   �� 52      -   5        $ perHourCheckBox��52      $�� ��64   $��1��6?   $
��Left=�53      {�.  $��3q�55      $��0��6&   $��Center=�63    54      �� *	PerHour+$ TwoWay=�	 . 
 . 55   3   56      57      �� 58   
   -	   5        $��Wh��58   &   $��1��6   .+�59      �� -
   5        $ WeeklyHours��59      $��Weekly Hours��6)   $��Center=�6@   $��20(�6]   $
��Bold"�6k   $��0,5,0,5q�6~   �� 5:      -   5         ��Name$
 Days��5:       �� View 5;      �� 5<      .P�5=      �� $	��Day��6%    �� Width$	 100��62    �� DisplayMemberBinding 6>   �� *day+�� 5>      $
��Work��6%   $	 100��63    6?   �� *work+�� 5?      $��Begin��6%   $	 100��64    6@   �� *begin+�� 5@      $	��End��6%   $	 100��62    6>   �� *end+5A      5C      5D      5E      5F      