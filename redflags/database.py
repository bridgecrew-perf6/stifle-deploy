
from django.db import connection

def my_custom_sql(self):
    with connection.cursor() as cursor:
        cursor.execute("""INSERT INTO tenant1.redflags_demotable VALUES 
                    (1,'Accountant, Auditor and Tax Advisor','Medium',30),(2,'Agriculturist','Low',20),
                    (3,'Arms/ Ammunition Dealers','High',40),(4,'High valuable/ Precious Metal Dealers 
                    (e.g.  Gold, Silver, Diamond, Ruby, Antique, etc Dealers)','High',40),(5,'High Net worth customers with no 
                    clearly identifiable source of income, etc','High',40),(6,'Housewives/ Widows/ Households','High',40),
                    (7,'Investment and Comodity Advisor','Medium',30),(8,'Land Lords','High',40),(9,'Landady','High',40),
                    (10,'Lawyers','High',40),(11,'Minors','Low',20),(12,'Non Residents, Foreign Nationals','High',40),
                    (13,'Notaries','Low',20),(14,'Old Auto Parts and/ or Metal Scrap Dealers','High',40),(15,'Pensioner','Low',10),
                    (16,'Politically Exposed Parties/ Persons (PEPs) including their Family Members and Close associates or Relatives','High',60),
                    (17,'Real-Estate Dealer/Agent','Medium',30),(18,'Retired Person','Low',10),(19,'Salaried individual, Pension Holders and like Customers','Low',10),(20,'Security Brokers-Dealer (Such as Shares, Mutual Funds etc.)','Medium',30),
                    (21,'Self Employed/ Proprietorship','Low',10),(22,'Minors, Students, Unemployed','Low',20),(23,'Trader of General Items','Medium',30),
                    (24,'Travel/Tourism Agent','Medium',30),(25,'Government Entities (Local/Provincal/State/Federal) / Public Administration','Medium',30),(26,'All other Customers not Specified above','High',40);


        """)
        print("saved successfully")
        row = cursor.fetchone()

    return row

