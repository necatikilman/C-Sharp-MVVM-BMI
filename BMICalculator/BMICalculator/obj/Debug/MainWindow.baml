   M S B A M L   `   `   `  ����H  DBMICalculator, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null-clr-namespace:BMICalculatorBMICalculator  5   	       BMICalculator.MainWindow   5   	   R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5   	   R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   -localclr-namespace:BMICalculator     5   	     � Title$  BMI calculator��5   	   $	��450��6    $	��800��6-    � DataContext 5
      !  BMICalculator.MainViewModel  5   
    � 	Resources 5       �� 
TargetType �� Property �� Value��%�   '��       '�� j     �� 5   
   " ��6   .�5      ��  � ��$ 2q�6'   �� 5       � ��$ 5q�6(   5      �� 5   
   " ��6   .�5      ��  � ��$ 2q�6'   5      5      .��5      � ��6   �� *BackgroundColor+ � ColumnDefinitions 5   
   �� 5      $��* �6   �� 5      $��* �6    � RowDefinitions 5   
   �� 5      $
��auto �6   �� 5      $
��auto �6   �� 5       $
��auto �6   �� 5!      $
��auto �6   .+�5%   
   �� $��Gewicht��6   �� 5&   
   $��1��6   ��6"   �� *Weight+�� 5'   
   $��Lengte��6   $��0��6!   $��1��61   �� 5(   
   $��1��6   $��1��6"   ��6/   �� *Length+�� 5)   
   $��Result��6   $��0��6!   $��2��61   �� 5*   
   $��1��6   $��2��6    ��6-   �� *Bmi+�� 5+   
   $��3��6   ��6   �� *ResetCommand+.��6?   Reset6F   �� 5,   
   $��3��6   $��1��6   ��6.   �� *CalculateCommand+.��6S   	Bereken6\   5-      5.      