   M S B A M L   `   `   `  ����K  GWaveSoundBusDemo, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null3clr-namespace:WaveSoundBusDemoWaveSoundBusDemo  5   	   !    WaveSoundBusDemo.MainWindow   5   	   W SPresentationCore, Version=8.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=8.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35e aSystem.Windows.Controls.Ribbon, Version=8.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089R NWindowsBase, Version=8.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     5   	   R NSystem.Xaml, Version=8.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   0localclr-namespace:WaveSoundBusDemo     5   	     � Title$  Wave Player��5   	   $	��150��6   $	��300��6*   .��5	      �  � RowDefinitions 5
   
   �� 5      $
��Auto �6   �� 5      $��* �6   .+�5   
   �� $��0��6    �� Orientation$ 
Horizontal=�6"   $��Center=�6;   $��Center=�6X   .+�5      �� -   5         ��Name$ 
PlayButton��5      $
��Play��6)   $��10q�68   �� 5      -   5        $ PauseButton��5      $��Pause��6*   $��10q�6:   �� 5      -   5        $ 
StopButton��5      $
��Stop��6)   $��10q�68   5      �� 5   
   $��1��6   $ Vertical=�6"   $��Center=�69   $��Center=�6V   .+�5      �� -   5         ��Name$ AudioInfoTextBlock��5      $��0 0 0 10q�64   $��Audio Information��6F   �� 5      -   5         ��Name$ ProgressBar��5       � Minimum$ 0Q�6*    � Maximum$	 100Q�66   $��0 10 0 0q�6D   5      5      5      