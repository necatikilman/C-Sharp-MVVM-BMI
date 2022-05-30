using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Linq;
using System.Runtime.CompilerServices;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Input;
using System.Windows.Media;

namespace BMICalculator
{
    internal class MainViewModel : INotifyPropertyChanged
    {
        // Notification
        public event PropertyChangedEventHandler PropertyChanged;

        // Properties
        private double? weight;
        private double? length;
        private double? bmi;
        private Brush backgroundColor;

        public double? Weight
        {
            get => weight;
            set
            {
                weight = value;
                OnPropertyChanged();
            }
        }
        public double? Length
        {
            get => length;
            set
            {
                length = value;
                OnPropertyChanged();
            }
        }
        public double? Bmi
        {
            get => bmi;
            private set
            {
                bmi = value;
                OnPropertyChanged();
            }
        }
        public Brush BackgroundColor
        {
            get => backgroundColor;
            private set
            {
                backgroundColor = value;
                OnPropertyChanged();
            }
        }
        private void OnPropertyChanged([CallerMemberName] string property = null)
        {
            if (PropertyChanged != null)
                PropertyChanged(this, new PropertyChangedEventArgs(property));
        }

        // Action commands
        public ICommand CalculateCommand { get; private set; }
        public ICommand ResetCommand { get; private set; }

        public MainViewModel()
        {
            CalculateCommand = new ActionCommand(CalculateCommandAction);
            ResetCommand = new ActionCommand(ResetCommandAction);
        }

        private void CalculateCommandAction()
        {
            Bmi = Weight / (Length * Length);

            if (Bmi < 18.5)
                BackgroundColor = Brushes.LightBlue;
            else if (Bmi < 25)
                BackgroundColor = Brushes.Green;
            else if (Bmi < 30)
                BackgroundColor = Brushes.Yellow;
            else if (Bmi < 35)
                BackgroundColor = Brushes.Orange;
            else if (Bmi < 40)
                BackgroundColor = Brushes.OrangeRed;
            else
                BackgroundColor = Brushes.DarkRed;
        }
        private void ResetCommandAction()
        {
            Weight = null;
            Length = null;
            Bmi = null;
            BackgroundColor = null;
        }
    }
}
