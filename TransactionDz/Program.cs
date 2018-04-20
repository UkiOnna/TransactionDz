using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace TransactionDz
{
    class Program
    {
        static void Main(string[] args)
        {
            using (CompanyModelContainer context = new CompanyModelContainer())
            {

                var transaction = context.Database.BeginTransaction();
                try
                {
                    Item item = new Item { CompanyId = 1, Id = 1, ItemName = "Xleb" };
                    Company company = new Company { CompanyName = "Postavte 12", Id = 1 };
                    company.Item.Add(item);

                    context.ItemSet.Add(item);
                    context.CompanySet.Add(company);
                    context.SaveChanges();

                    transaction.Commit();
                }
                catch
                {
                    transaction.Rollback();
                }



            }
        }
    }
}
