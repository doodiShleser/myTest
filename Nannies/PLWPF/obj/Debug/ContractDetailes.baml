   M S B A M L   `   `   `  ����@  <PLWPF, Version=1.0.0.0, Culture=neutral, PublicKeyToken=nullclr-namespace:PLWPFPLWPF  5   	   = 9BE, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null#clr-namespace:BE;assembly=BEBE 5   	       PLWPF.ContractDetailes   5   	   W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35^ ZWindowsFormsIntegration, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   %localclr-namespace:PLWPF     5   	   +BEclr-namespace:BE;assembly=BE     5   	     � Title$  ContractDetailes��5	   	   $	��350��6"   $	��650��6/   .��5      � -   5         �Name$ Contract_Detailes��5       � ColumnDefinitions 5   
   �� 5      $��* �6   �� 5      $��2* �6   .+�5   
   �� $��0��6   $��1,2,0,-0.333q�6%   $
��Left=�6;   $	��204��6V   .+�5      � -   5        $ grid1��5      $
��Left=�6#   $	��Top=�6>   $��61��6V   $	��165��6b    5      �� 5      $
��Auto �6'   �� 5      $
��Auto �6'    � RowDefinitions 5      �� 5      $
��Auto �6$   .+�5      �� $��code:��6   $
��Bold"�6(   $��0��6:   $��16(�6J   $
��Left=�6X   $��3q�6s   $��0��6~   $��Center=�6�   �� 5      -   5         ��Name$ codeTextBlock��5      $��16(�63   $��1��6A   $
��Left=�6Q   $��29��6l   $��3,6,0,-0.333q�6x   $��0��6�   $��Center=�6�   $	��107��6  ��6�   �� *code+ �� Mode$ TwoWay=� �� NotifyOnValidationError .  �� ValidatesOnExceptions . 6  5      � 5      -   5        $ grid3��5      $
��Left=�6#   $��10,0,0,0q�6>   $	��Top=�6P   $	��178��6h    5      �� 5      $
��Auto �6'   �� 5      $
��Auto �6'    5!      �� 5"      $
��Auto �6$   5$      � 5%      -   5        $ grid2��5%      $
��Left=�6#   $��34,0,0,0q�6>   $	��Top=�6P    5&      �� 5'      $
��Auto �6'   �� 5(      $
��Auto �6'    5*      �� 5+      $
��Auto �6$   .+�5-      �� $��signed:��6   $��16(�6*   $��0��68   $
��Left=�6H   $��	-34,3,0,3q�6c   $��0��6v   $��Center=�6�   $��85��6�   �� 5.      -   5         ��Name$ signedCheckBox��5.      {�.  $�� ��6E   $��1��6P   $
��Left=�6`   $��3q�6�   $��0��6�   $��Center=�6�   	 d� 	IsChecked	 6{   �� *signed+$ TwoWay=� .  . 6�   5/      � 50      -   5        $ grid4��50      $
��Left=�6#   $	��Top=�6>   $	��190��6V    51      �� 52      $
��Auto �6'   �� 53      $
��Auto �6'    55      �� 56      $
��Auto �6$   .+�58      �� $��Introductory Meeting:��6   $��16(�68   $��0��6F   $
��Left=�6V   $��3q�6q   $��0��6|   $��Center=�6�   �� 59      -   5        $! introductoryMeetingCheckBox��59      {�.  $�� ��6R   $��1��6]   $
��Left=�6m   $��3q�6�   $��0��6  $��Center=�6  	 6�   �� *IntroductoryMeeting+$ TwoWay=� .  . 6  5:      � 5;      -	   5        $ grid5��5;      $
��Left=�6#   $��10,0,0,0q�6>   $	��Top=�6P   $	��188��6h   $��45��6t    5<      �� 5=      $
��Auto �6'   �� 5>      $
��Auto �6'    5@      �� 5A      $
��Auto �6$   .+�5C      �� $��Sallary Per Month:��6   $��16(�65   $��0��6C   $��0��6T   $��Center=�5D      $
��Left=�64   $	��137��5E      $��0,6,0,8.333q�6$   �� 5F      -
   5        $ sallaryPerMonthTextBlock��5F   )   $��0��6   $��16(�6K   
��� ���$
��Left=�5G      $��47��5I      $��2��6(   $��140,3,190,3q�6<   $��Center=�6Q   ��5H      �� *SallaryPerMonth+$ TwoWay=� .  . 5I   Q   5J      5L      �� 5M   
   $��1��6   $��0,0,0.333,-0.333q�6%   .+�5N      �� -   5        
 ��Name$
 WeeklyHours��5N      $��Weekly Hours��6)   $��Center=�6@   $��20(�6]   $
��Bold"�6k   $��0,5,0,5q�6~   �� 5O      -   5         ��Name$
 Days��5O       �� View 5P      �� 5Q      .P�5R      �� $	��Day��6)    �� Width$ 96��66    �� DisplayMemberBinding 6A   �� *day+�� 5S      $
��Work��6)   $ 96��67    6B   �� *work+�� 5T      $��Begin��6)   $ 96��68    6C   �� *begin+�� 5U      $	��End��6)   $ 96��66    6A   �� *end+5V      5X      5Y      5Z      5[      