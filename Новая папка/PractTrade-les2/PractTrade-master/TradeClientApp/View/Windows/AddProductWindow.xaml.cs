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
using TradeClientApp.ViewModel;

namespace TradeClientApp.View.Windows
{
    /// <summary>
    /// Логика взаимодействия для AddProductWindow.xaml
    /// </summary>
    public partial class AddProductWindow : Window
    {
        public AddProductWindow()
        {
            InitializeComponent();
            this.DataContext = new AddProductViewModel();
        }

        private void btnAddProduct_Click(object sender, RoutedEventArgs e)
        {
            if (cbManufactor.SelectedItem == null || cbProvider.SelectedItem == null)
                MessageBox.Show("Поля должны быть заполнены");
            else
                (this.DataContext as AddProductViewModel).AddProduct();
        }
    }
}
