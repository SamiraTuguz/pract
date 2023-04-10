using System;
using System.Collections.Generic;
using System.Collections.ObjectModel;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows;
using TradeClientApp.Model.Database;

namespace TradeClientApp.ViewModel
{
    internal class AddProductViewModel : BaseViewModel
    {
        private string _productName;
        private ObservableCollection<string> _manufacters;
        private ObservableCollection<string> _providers;
        private string _manufacterSelectedItem;
        private string _providerSelectedItem;
        private string _productDescription;

        public string ProductDescription
        {
            get { return _productDescription; }
            set { _productDescription = value; 
            OnPropertyChanged(nameof(ProductDescription));}
        }
        public string ManufacterSelectedItem
        {
            get { return _manufacterSelectedItem;}
            set { _manufacterSelectedItem = value;
            OnPropertyChanged(nameof(ManufacterSelectedItem));}
        }
        public string ProviderSelectedItem
        {
            get { return _providerSelectedItem;}
            set { _providerSelectedItem = value;
            OnPropertyChanged(nameof(ProviderSelectedItem));}
        }
        public string ProductName
        {
            get { return _productName; }
            set
            {
                _productName = value;
                OnPropertyChanged(nameof(ProductName));
            }
        }
        public ObservableCollection<string> Manufacters
        {
            get { return _manufacters; }
            set
            {
                _manufacters = value;
                OnPropertyChanged(nameof(Manufacters));
            }
        }
        public ObservableCollection<string> Providers
        {
            get { return _providers; }
            set
            {
                _providers = value;
                OnPropertyChanged(nameof(Providers));
            }
        }
        public AddProductViewModel()
        {
            Initialize();
            LoadData();
        }
        public void Initialize()
        {
            Manufacters= new ObservableCollection<string>();
            Providers= new ObservableCollection<string>();
        }
        public void LoadData()
        {
            using(TradeDBEntities db = new TradeDBEntities())
            {
                var manufactersList = db.Manufacturer.ToList();
                var providersList = db.Provider.ToList();
                
                foreach(var m in manufactersList)
                {
                    _manufacters.Add(m.ManufacturerName);
                }
                foreach(var p in providersList)
                {
                    _providers.Add(p.ProviderName);
                }
            }
        }
        public void AddProduct()
        {
            try
            {
                using (TradeDBEntities db = new TradeDBEntities())
                {
                   
                    var tov = db.TovarName.Add(new TovarName() { TovarValue = ProductName });
                    db.SaveChanges();
                    var tovarName = db.TovarName.FirstOrDefault(t => t.TovarValue == tov.TovarValue);
                    var manufacter = db.Manufacturer.FirstOrDefault(m => m.ManufacturerName == ManufacterSelectedItem);
                    var provider = db.Provider.FirstOrDefault(p => p.ProviderName== ProviderSelectedItem);
                    db.Tovar.Add(new Tovar() { TovarName = tovarName.TovarNameID, TovarManufacturer = manufacter.ManufacturerID, TovarProvider = provider.ProviderID, TovarDescription = ProductDescription });
                    var save = db.SaveChanges();
                    if (save != 0)
                        MessageBox.Show("Успешно добавлено");
                    else
                        MessageBox.Show("Не успешно");
                }
            }
            catch (Exception ex)
            {
                MessageBox.Show(ex.Message);
            }
        }
    }
}
