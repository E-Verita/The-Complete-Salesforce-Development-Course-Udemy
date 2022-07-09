SELECT Id, Name, Phone FROM Account Where Id='0017Q00000NDZFVQA5'
SELECT Id, Name, AccountId FROM Contact

SELECT Title, Email, Industry, Status, Name, Description FROM Lead WHERE Status = 'Closed - Converted'
SELECT Title, Email, Industry, Status, Name, Description FROM Lead WHERE Status = 'Closed - Converted' OR Status = 'Closed - Not Converted'
SELECT Title, Email, Industry, Status, Name, LeadSource FROM Lead WHERE Status = 'Closed - Converted' AND LeadSource = 'Web'
SELECT Title, Email, Industry, Status, Name, LeadSource FROM Lead WHERE (Status = 'Closed - Converted' OR Status = 'Closed - Not Converted') AND LeadSource = 'Web'
SELECT Title, Email, Industry, Status, Name, LeadSource FROM Lead WHERE (Status = 'Closed - Converted' OR Status = 'Closed - Not Converted') AND LeadSource = 'Web'

/*
/                                           IN 
/                     add multiple possible values to field 
*/
SELECT Title, Email, Industry, Status, Name, LeadSource FROM Lead WHERE Status IN( 'Closed - Converted','Closed - Not Converted') AND LeadSource = 'Web'

/*
/
/                                           LIKE
/                   match partial text strings with support of wildcards & AND __
*/

SELECT Title, Industry, Status, Name, LeadSource FROM Lead WHERE Name LIKE 'Ja%'
    

SELECT Title, Email, Industry, Status, Name, Description FROM Lead WHERE Status LIKE 'Closed%'

SELECT Title, Email, Industry, Status, Name, Description FROM Lead WHERE Email LIKE '%@zenith.com'


/*                                  ORDER BY
*/
SELECT Name, Email FROM Contact ORDER BY Name
SELECT Name, Email FROM Contact ORDER BY Name DESC

SELECT Name, Email, CreatedDate FROM Contact ORDER BY CreatedDate

SELECT Id, Name, YearStarted, Type FROM Account ORDER BY Type NULLS FIRST
SELECT Id, Name, YearStarted, Type FROM Account ORDER BY Type NULLS LAST    /*doesnt work on picklists https://salesforce.stackexchange.com/questions/21059/soql-nulls-last-with-orderby-picklist-field-doesnt-work*/



/*
/                                 LIMIT /  OFFSET                  

*/

SELECT Name, Email FROM Contact ORDER BY CreatedDate DESC LIMIT 5 
SELECT Name, Email FROM Contact ORDER BY Email DESC 
SELECT Name, Email FROM Contact ORDER BY Email DESC OFFSET 3 

SELECT Name, Email FROM Contact ORDER BY Email DESC LIMIT 5 OFFSET 5


/*                                                        
/                                  OPERATORS
/                      =  !=   <  >  <=  >=    IN    NOT IN      LIKE  
/
/
All operators use case sensitive search, except for LIKE - case insensitive
*/



/*                            Work with Date and DateTime


*/

SELECT Name, Status, LeadSource, Company, Email, CreatedDate FROM Lead WHERE CreatedDate>= 2022-07-09T00:00:00.000+0000
SELECT Name, Status, LeadSource, Company, Email, CreatedDate FROM Lead WHERE CreatedDate=TODAY
SELECT Name, Status, LeadSource, Company, Email, CreatedDate FROM Lead WHERE CreatedDate>YESTERDAY
SELECT Name, Status, LeadSource, Company, Email, CreatedDate FROM Lead WHERE CreatedDate=LAST_N_DAYS:10


/*                            PARENT-TO-CHILD

Can go only 1 level deep
max 20 related objects are supported in 1 query
Always go to child object to get relationship name!
*/

SELECT Name, Phone, Website, (SELECT Name, Email FROM Contacts)  FROM Account
SELECT Name,(SELECT Name FROM Books__r) FROM Author__c


/*                            CHILD-TO-PARENT


Can go 5 levels up
max 55 related objects are supported in 1 query
*/

SELECT Name, Phone, Department, Account.Name, Account.Website FROM Contact
SELECT Name, Phone, Department, Account.Name, Account.Website, Account.Owner.Name FROM Contact
SELECT Name, Price__c, Author__r.Name FROM Book




/*                            SOQL in APEX



*/

List <Account> accounts = [SELECT Name, Id FROM Account];
System.debug(accounts);

for (Account acc : accounts){
    System.debug(acc);

}

for (Account acc : accounts){
    System.debug('Account info:  NAME: ' + acc.Name + ', Id: ' + acc.Id);

}


Map <Id, Account> accountsMap = new Map<Id, Account>([SELECT Name, Phone FROM Account]);
for (Account acc : accountsMap.values()){
    System.debug(acc);
}


List <Book__c> books = [SELECT Name, Id, Price__c FROM Book__c];

for (Book__c book : books){
    System.debug('Book info:  NAME: ' + book.Name + ', Price: ' + book.Price__c);
}

/*                    BINDING VARIABLES 

Can be used as:
The filter literals in WHERE clauses
The value of the IN or NOT IN operator in WHEN clauses, allowing fitering on a dynamic set of values. Works with lists of any type
The numeric value of LIMIT clauses
The numeric value of OFFSET clauses
*/

List <String> accNames = new List <String>();
accNames.add('Dickenson plc');
accNames.add('Edge Communications');
accNames.add('Burlington Textiles Corp of America');
accNames.add('Pyramid Construction Inc.');

List <Account> accounts = [SELECT Id, Name, Rating FROM Account WHERE Name IN :accNames];
System.debug('Accounts: ' +accounts);



/*      DYNAMIC SOQL QUERIES

*/

String accountClass = 'Class1';
String queryString = 'SELECT Id, Name, Phone, Rating FROM Account';

if (accountClass == 'Class1'){
    queryString += ' WHERE Rating=\'Hot\' AND Type = \'Prospect\'';
} else if (accountClass == 'Class2'){
    queryString += ' WHERE Rating=\'Warm\' AND Type = \'Other\'';
} else {
    queryString += ' WHERE Rating= \'Hot\'';
}

List <Account> accounts = Database.query(queryString);
System.debug('Accounts: ' + accounts);
System.debug('Accounts size: ' + accounts.size());