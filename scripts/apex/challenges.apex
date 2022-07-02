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
Challenge 5 - The pattern Challenge
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














