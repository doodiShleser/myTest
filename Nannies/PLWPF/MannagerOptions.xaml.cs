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
    /// Interaction logic for MannagerOptions.xaml
    /// </summary>
    public partial class MannagerOptions : Window
    {
        public MannagerOptions()
        {
            InitializeComponent();
        }

      

        private void Menu_Click(object sender, RoutedEventArgs e)
        {
            foreach (Button b in Menu.Children.OfType<Button>())
                b.Visibility = Visibility.Visible;
        }

        private void Button_Click(object sender, RoutedEventArgs e)
        {
            gridList.Visibility = Visibility.Visible;
            Button b = (sender as Button);
            Style style = this.FindResource("ButtonStyle") as Style;
            switch (b.Content.ToString())
            {
                case "Nanny":
                    list.Children.Clear();
                    foreach (Nanny n in BL_imp.GetInstance().getNanny())
                    {
                        Button but = new Button() { Name = "Nanny" };
                        but.Content = String.Format(n.name.FirstName + "\n" + n.name.LastName);
                        but.Style = style;
                        but.Margin = new Thickness(3);
                        but.Click += But_Click; ;
                        list.Children.Add(but);
                    }
                    break;
                case "Mother":
                    list.Children.Clear();
                foreach (Mother m in BL_imp.GetInstance().getMother())
                    {
                        Button but = new Button() { Name = "Mother" };
                        but.Content = String.Format(m.name.FirstName + "\n" + m.name.LastName); 
                        but.Style = style;
                        but.Margin = new Thickness(3);
                        but.Click += But_Click; ;
                        list.Children.Add(but);
                    }
                break;
                case "Child":
                    list.Children.Clear();
                    foreach (Child c in BL_imp.GetInstance().getChild())
                    {
                        Button but = new Button() { Name = "Child" };
                        but.Content = c.FirstName;
                        but.Style = style;
                        but.Margin = new Thickness(3);
                        but.Click += But_Click; ;
                        list.Children.Add(but);
                    }
                    break;
                case "Contract":
                    list.Children.Clear();
                    foreach (Contract c in BL_imp.GetInstance().getContract())
                    {
                        Button but = new Button() { Name = "Contract" };
                        but.Content = c.code;
                        but.Style = style;
                        but.Margin = new Thickness(3);
                        but.Click += But_Click; ;
                        list.Children.Add(but);
                    }
                    break;
            }    
        }

        private void But_Click(object sender, RoutedEventArgs e)
        {
            Button b = (sender as Button);
            string kind = b.Name;
            string first, last;
            MessageBoxResult result;
            switch (kind)
            {
                case "Nanny":
                    first = b.Content.ToString().Substring(0, b.Content.ToString().IndexOf('\n'));
                    last = b.Content.ToString().Substring(b.Content.ToString().IndexOf('\n') + 1);
                    Nanny n = BL_imp.GetInstance().getNanny().Find(x => x.name.FirstName == first && x.name.LastName == last);
                    result = MessageBox.Show(
                        "Do you want to continue as this Nanny?", "Confirmation", MessageBoxButton.YesNo, MessageBoxImage.Question);
                    Mother nul = new Mother();//for function below
                    MotherOptions nothing = new MotherOptions();
                    if (result == MessageBoxResult.No)
                    {
                        Detailes.Children.Add(new NannyDetailes().AddNannyDetailesGrid(n,nul,nothing));
                        gridList.Visibility = Visibility.Collapsed;
                        Detailes.Visibility = Visibility.Visible;
                    }
                    else
                    {
                        Window NannyOptions = new NannyOptions(n.ID);
                        NannyOptions.Show();
                    }
                    break;
                case "Mother":
                    first = b.Content.ToString().Substring(0, b.Content.ToString().IndexOf('\n'));
                    last = b.Content.ToString().Substring(b.Content.ToString().IndexOf('\n') + 1);
                    Mother m = BL_imp.GetInstance().getMother().Find(x => x.name.FirstName == first && x.name.LastName == last);
                    result = MessageBox.Show(
                       "Do you want to continue as this Nanny?", "Confirmation", MessageBoxButton.YesNo, MessageBoxImage.Question);
                    if (result == MessageBoxResult.No)
                    {
                        Detailes.Children.Add(new MotherDetailes(m));
                        gridList.Visibility = Visibility.Collapsed;
                        Detailes.Visibility = Visibility.Visible;
                    }
                    else
                    {
                        Window MotherOptions = new MotherOptions(m.ID);
                        MotherOptions.Show();
                    }
                    break;
                case "Child":
                    Child c = BL_imp.GetInstance().getChild().Find(x => x.FirstName == b.Content.ToString());
                    Detailes.Children.Add(new ChildDetailes(c));
                    gridList.Visibility = Visibility.Collapsed;
                    Detailes.Visibility = Visibility.Visible;
                    break;
                case "Contract":
                    Contract con = BL_imp.GetInstance().getContract().Find(x => x.code.ToString() == b.Content.ToString());
                    //Detailes.
                    //אובסרור, טריגר, גנריכ אאוט -רף, מחלקות אנונימיות, 
                    break;
            }
        }
    }
}
