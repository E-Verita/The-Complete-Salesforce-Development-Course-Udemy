/*          1. Variable and Datatype Challenge

Category:Apex
Posts:
    1. Demistify Apex Collections
    2. Datatypes and variables in Apex

Category:Lightning
Posts:
    1. Events in Aura framework
    2. Developing reusable components

    You need to print all these posts and their respective categories

*/

// 1. Create and populate set for each category 
Set <String> apexSet = new Set <String>{'Demistify Apex Collections', 'Datatypes and variables in Apex' };
System.debug(apexSet);

Set <String> lightningSet = new Set <String>{'Events in Aura framework', 'Developing reusable components'};
System.debug(lightningSet);


// 2. Create a map with categories as keys and post sets as values
Map<String, Set<String>> categoriesMap = new Map <String, Set<String>>{'Apex' => apexSet, 'Lightning' => lightningSet};

// 3. Print key/value pairs of maps
System.debug(categoriesMap);


--------------------------------------------------------------------------------------------------------------------------------------


/*           3. Conditional Statement Challenge

A leap year has 366 days. Write a program to find out if a year is a leap year or not
    * A year is leap year, if it is evenely divisible by 4;
    * Except if that year is also evenly divisible by 100;
    * Unless the year is also evenly divisible by 400;


You can use Math.mod function to find out remainder of a division:
Math.mod(21.5) is 1 (as 1 is a remainder);
Math.mod(103, 100) is 3
Math.mod(251,3 is 2)
*/

Boolean isLeapYear = null;
Integer year = 1996;
String result = null;

if (Math.mod(year,4)==0){
    if (Math.mod(year,100)==0){
        if (Math.mod(year,400)==0){
              isLeapYear=true;
        } else {
        isLeapYear=false; 
        }
    } else{
       isLeapYear=true; 
    }
} else {
    isLeapYear=false;
}

 
if (isLeapYear){
    result = 'is a leap year!';
} else {
    result = 'is NOT a leap year!';
}

System.debug('Year ' + year + ' ' + result);
USER_DEBUG|[26]|DEBUG|Year 1996 is a leap year!

--------------------------------------------------------------------------------------------------------------------------------------


/*           3. Do-While Loop Challenge

Print all numbers from 0-100, but
    * if a number is divisible by 3, print 'fizz' instead of the number;
    * if a number is divisible by 5, print 'buzz' instead of the number;
    * if a number is divisible by both 3&5, print fizzbuz instead of the number
*/


Integer num = 0;
String by3 = 'fizz';
String by5 = 'buzz';
String by5and3 = 'fizzbuzz';

do{

if ((Math.mod(num,3)==0)&&(Math.mod(num,5)==0)){
    //if divides by 3 & 5
    System.debug(by5and3);
} else if (Math.mod(num,3)==0){
    //if divides by 3
     System.debug(by3);
} else if (Math.mod(num,5)==0){
     System.debug(by5);
} else {
    //does not divide with 3 || 5
    System.debug(num);
}

num++;

} while (num<=100);

--------------------------------------------------------------------------------------------------------------------------------------

/*           4. WHILE LOOPS Challenge

Print first 20 fibonacci numbers
0 & 1 first numbers
0,1,1,2,3,5,8,7.....
*/

Integer numbPrinted = 0;
Integer num1 = 0;
Integer num2 = 1;
Integer sum;

while (numbPrinted<20){
    sum = num1+num2;
    System.debug(sum);
    num1 = num2;
    num2 = sum;
    numbPrinted++;
}

--------------------------------------------------------------------------------------------------------------------------------------
/*         Challenge 5 - The pattern Challenge

/*Integer n=5; - rows and columns
*
**
***
****
******
*/

String star = '*';
String newLine = '*';

for (Integer n = 1; n<=8; n++){
System.debug(newLine);
newLine=newLine+star;
}

-------------------------------
/*      SOQL Challenge

Write SOQL query to retrieve all Contacts from SF org. Results should show Contact Name, Title, Phone and Email 
Modify SOQL query to retrieve only those contacts with title 'VP Technology'
Modify SOQL and add another field 'Departement' in the results. This field should be in the 2nd field in the result
Modify SOQL, retrieve all results satisfying step 2 condition and has departement value as 'Finance'
Modify SOQL, include all SVP and VP in your search results. Make sure your result still meets step 4 condition
Sort results by name in descending order
Limit search result to only 3
*/

SELECT Name, Title, Phone, Email FROM Contact
SELECT Name, Title, Phone, Email FROM Contact WHERE Title = 'VP, Technology'
SELECT Name, Department, Title, Phone, Email FROM Contact WHERE Title = 'VP, Technology'
SELECT Name, Department, Title, Phone, Email FROM Contact WHERE Title = 'VP, Technology' AND Department = 'Finance'
SELECT Name, Department, Title, Phone, Email FROM Contact WHERE Title LIKE '%VP%' AND Department = 'Finance'
SELECT Name, Department, Title, Phone, Email FROM Contact WHERE Title LIKE '%VP%' AND Department = 'Finance' ORDER BY Name DESC
SELECT Name, Department, Title, Phone, Email FROM Contact WHERE Title LIKE '%VP%' AND Department = 'Finance' ORDER BY Name DESC LIMIT 3


----------------------------


/*  SOQL Challenge 2


Retrieve Name, Department and Title of all contacts
Retrieve all Cases (CaseNumber, Subject) raised by the contact
Get parent Account's Name, Rating for each Contact
Make sure Account fields are the initial columns in results
Retrieve only those records where Account Rating is Hot
Sort results by Contact Name
Only retrieve open cases (use IsClosed Checkbox field value)
Add one more filter condition, Contact Department must be equals to 'Technology' */

SELECT Account.Name, Account.Rating, Name, Department, Title, (Select CaseNumber, Subject FROM Cases WHERE IsClosed=false) FROM Contact WHERE Account.Rating='Hot' AND Department='Technology' ORDER BY Name
SELECT Name, Department, Title FROM Contact
SELECT Name, Department, Title, (SELECT CaseNumber, Subject FROM Cases) FROM Contact
SELECT Name, Department, Title, (SELECT CaseNumber, Subject FROM Cases), Account.Name, Account.Rating FROM Contact
SELECT Account.Name, Account.Rating , Name, Department, Title, (SELECT CaseNumber, Subject FROM Cases) FROM Contact 
SELECT Account.Name, Account.Rating , Name, Department, Title, (SELECT CaseNumber, Subject FROM Cases) FROM Contact WHERE Account.Rating = 'Hot'
SELECT Account.Name, Account.Rating , Name, Department, Title, (SELECT CaseNumber, Subject FROM Cases) FROM Contact WHERE Account.Rating = 'Hot' ORDER BY Name
SELECT Account.Name, Account.Rating , Name, Department, Title, (SELECT CaseNumber, Subject FROM Cases WHERE IsClosed = FALSE) FROM Contact WHERE Account.Rating = 'Hot' AND Department = 'Technology' ORDER BY Name













