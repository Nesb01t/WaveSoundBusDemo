using System;
using System.Windows;
using System.Windows.Controls;
using NAudio.Wave;

namespace WaveSoundBusDemo
{
    public partial class MainWindow : Window
    {
        private WaveOutEvent waveOut;
        private AudioFileReader audioFile;

        public MainWindow()
        {
            InitializeComponent();

            // 设置按钮点击事件
            PlayButton.Click += PlayButton_Click;
            PauseButton.Click += PauseButton_Click;
            StopButton.Click += StopButton_Click;
        }

        private void PlayButton_Click(object sender, RoutedEventArgs e)
        {
            if (waveOut != null && waveOut.PlaybackState == PlaybackState.Paused)
            {
                waveOut.Play();
            }
            else
            {
                // 加载并播放 Wave 文件
                string filePath = "file_example_WAV_1MG.wav"; // 替换为实际的 Wave 文件路径
                audioFile = new AudioFileReader(filePath);
                waveOut = new WaveOutEvent();
                waveOut.Init(audioFile);
                waveOut.Play();
            }
        }

        private void PauseButton_Click(object sender, RoutedEventArgs e)
        {
            if (waveOut != null && waveOut.PlaybackState == PlaybackState.Playing)
            {
                waveOut.Pause();
            }
        }

        private void StopButton_Click(object sender, RoutedEventArgs e)
        {
            if (waveOut != null && (waveOut.PlaybackState == PlaybackState.Playing ||
                                    waveOut.PlaybackState == PlaybackState.Paused))
            {
                waveOut.Stop();
                audioFile.Position = 0; // 将播放位置重置为文件开头
            }
        }
    }
}