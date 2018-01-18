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
using System.Windows.Shapes;
using BE;
using BL;
namespace PLWPF
{
    /// <summary>
    /// Interaction logic for DetailesWindow.xaml
    /// </summary>
    public partial class MotherDetailes : UserControl
    {
        Mother mam;
        public MotherDetailes()
        {
            InitializeComponent();
        }
        public MotherDetailes(Mother m)
        {
            InitializeComponent();
            mam = m;
            myName.Content += String.Format( m.name.FirstName + " " + m.name.LastName);
            myAddress.Content += m.address;
            SelfDetailes.Text += m.print();
            for (int i = 0; i < 6; i++)
                Days.Items.Add(new 
                {
                    day = mam.wh.days[i],
                    work = mam.wh.DayThatIWork[i],
                    begin = mam.wh.WorkHours[i].begin,
                    end = mam.wh.WorkHours[i].end
                });
            List<Child> childs = BL_imp.GetInstance().getChild().FindAll(x => x.idMother == m.ID);
            foreach (Child c in childs)
            {
                ComboBoxItem item = new ComboBoxItem();
                item.Content = c.FirstName;
                myChild.Items.Add(item);
                item.Selected += Item_Selected;
            }
            myChild.SelectedItem = "Defaulte";
        }

        private void Item_Selected(object sender, RoutedEventArgs e)
        {
            ComboBoxItem cbI = new ComboBoxItem();
            cbI = (sender as ComboBoxItem);
            Child c = BL_imp.GetInstance().getChild().Find(x => x.FirstName == cbI.Content.ToString());
            Contract con = BL_imp.GetInstance().getContract().Find(x => x.idChild == c.ID);
            if (con != null)
            {
                motherDetailes.Visibility = Visibility.Collapsed;
                childDetailes.Children.Add(new ChildDetailes(c));
                childDetailes.Visibility = Visibility.Visible;
            }
            else
                MessageBox.Show("your Child have no Nannny");
        }

        private void Update_Click(object sender, RoutedEventArgs e)
        {
            NannyUpdates update = new NannyUpdates();
            update.Show();
        }

        private void Back_Click(object sender, RoutedEventArgs e)
        {
            detailesParent.Visibility = Visibility.Collapsed;
            (((detailesParent.Parent as UserControl).Parent as Grid).Parent as Grid)
                .Children.OfType<Grid>().ToList().Find(x => x.Name == "motherOptions").Visibility = Visibility.Visible;
        }
    }
}
