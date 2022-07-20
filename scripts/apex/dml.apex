/*
/                                   DML

Insert  Update  Delete  Undelete


*/

Account acc = new Account (Name ='Everita\'s account', Phone='3322446688');
insert acc;

------
Account acc1 = new Account();
acc1.Name = 'Sunshine Org.';
acc1.AccountNumber = '233456';
acc1.Type = 'Prospect';
acc1.Industry = 'Education';
acc1.NumberOfEmployees = 1036;
acc1.Rating = 'Hot';
acc1.Phone = '3457898878';
acc1.CustomerPriority__c = 'High';
insert acc1;

SELECT Id, Name, Rating from Account

----------
List <Account> accList = new List <Account>();
Account acc1 = new Account (Name ='Account insert 1');
Account acc2 = new Account (Name ='Account insert 2');
Account acc3 = new Account (Name ='Account insert 3');
Account acc4 = new Account (Name ='Account insert 4');
Account acc5 = new Account (Name ='Account insert 5');
accList.add(acc1);
accList.add(acc2);
accList.add(acc3);
accList.add(acc4);
accList.add(acc5);

insert accList;

-----
List <Account> accList = new List <Account>();
Account acc1 = new Account (Name ='Account database insert 1');
Account acc2 = new Account (Name ='Account database insert 2');
Account acc3 = new Account (Name ='Account database insert 3');
Account acc4 = new Account (Name ='Account database insert 4');
Account acc5 = new Account (Name ='Account database insert 5');
accList.add(acc1);
accList.add(acc2);
accList.add(acc3);
accList.add(acc4);
accList.add(acc5);

Database.insert(accList);

/* Database.insert(accList, true) - Partial success not allowed
Database.insert(accList, false) - Partial success is allowed

------
*/

Account acc = new Account (Name ='Test account SFDC', Phone='3322446688');
AccountController.insertAccount(acc);


