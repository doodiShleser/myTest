using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Data;
using System.Windows.Documents;
using System.Windows.Input;
using System.Windows.Media;
using System.Windows.Media.Imaging;
using System.Windows.Navigation;
using System.Windows.Shapes;
using BE;
using BL;
namespace PLWPF
{
    /// <summary>
    /// Interaction logic for MainWindow.xaml
    /// </summary>
    public partial class MainWindow : Window
    {
        public MainWindow()
        {
            InitializeComponent();
            IBL instance = BL_imp.GetInstance();//singelton
          //DefaultInitilize d = new DefaultInitilize();//its operate one time

            
        }


        private void enter_Click(object sender, RoutedEventArgs e)
        {
            string UserInput = idBox.Password;
            int inputConvert = Convert.ToInt32(UserInput);
            foreach (Mother m in BL_imp.GetInstance().getMother())
                if (m.ID == inputConvert)
                {
                    Window MotherOptions = new MotherOptions(m.ID);
                    MotherOptions.Show();
                    return;
                }
            foreach (Nanny n in BL_imp.GetInstance().getNanny())
                if (n.ID == inputConvert)
                {
                    Window NannyOptions = new NannyOptions(n.ID);
                    NannyOptions.Show();
                    return;
                }
            if(inputConvert==1234)
            {
                Window MannagerOptions = new MannagerOptions();
                MannagerOptions.Show();
                return;
            }
            MessageBox.Show("you entered an incorrect ID");
        }
    }
    
}
