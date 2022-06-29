---------------APEX FUNDAMENTALS----------------------

/                Hello World

System.debug('Hello World');

String greeting = 'Hello World';
System.debug(greeting);


 
/              Primitive Data Types

String name = 'Everita';
Integer age = 30;
Boolean hasCats = true;
Long longNumber = 9223372036854775086L;
Decimal decimalNumber = 13.48;
Double longDecimalNumber = 13.4548454845845;
Date today = Date.today();
Time nowTime = Time.newInstance(00, 26, 15, 00); //utc is assumed
Datetime dateTimeNow = Datetime.now(); //utc is assumed
System.debug(dateTimeNow);
System.debug(dateTimeNow.addHours(3));
22:45:38.20 (21313793)|USER_DEBUG|[2]|DEBUG|2022-06-27 21:45:38  //utc
22:45:38.20 (21389483)|USER_DEBUG|[3]|DEBUG|2022-06-28 00:45:38  // real time

String myString = 'StringToBlob';
Blob myBlob = Blob.valueof(myString);
System.assertEquals('StringToBlob', myBlob.toString());
System.debug(myString + ' ' + myBlob + ' ' + myBlob.toString());
USER_DEBUG|[4]|DEBUG|StringToBlob Blob[12] StringToBlob

Id myIdent = '00300000003T2PGAA0';
System.debug(myIdent);
USER_DEBUG|[2]|DEBUG|00300000003T2PGAA0

https://www.youtube.com/watch?v=wciBI5rQvHY  
0:10 / 34:34  // Salesforce Developers
Fearless Date and Time Formulas


    ------------------------------------------------------------------------------------------------------
    --------------------------------------------DATE------------------------------------------------------
    ------------------------------------------------------------------------------------------------------

Date newDate = Date.newInstance(2022, 01, 01);
System.debug(newDate);
USER_DEBUG|[3]|DEBUG|2022-01-01 00:00:00

------------------------------------------------------------------------------------------------------
Date Methods
The following are methods for Date.
------------------------------------------------------------------------------------------------------

addDays(additionalDays)
Adds the specified number of additional days to a Date.
Date newDate = Date.newInstance(2022, 01, 01);
System.debug(newDate.addDays(5));
USER_DEBUG|[2]|DEBUG|2022-01-06 00:00:00
System.debug(newDate.addDays(-5));
19:48:34.150 (151546353)|USER_DEBUG|[3]|DEBUG|2021-12-27 00:00:00
------------------------------------------------------------------------------------------------------

addMonths(additionalMonths)
Adds the specified number of additional months to a Date
Date newDate = Date.newInstance(2022, 01, 01);
System.debug(newDate.addMonths(4));
USER_DEBUG|[2]|DEBUG|2022-05-01 00:00:00
------------------------------------------------------------------------------------------------------


addYears(additionalYears)
Adds the specified number of additional years to a Date
Date newDate = Date.newInstance(2022, 01, 01);
System.debug(newDate.addYears(4));
USER_DEBUG|[2]|DEBUG|2026-01-01 00:00:00
------------------------------------------------------------------------------------------------------


day()
Returns the day-of-month component of a Date.
Date newDate = Date.newInstance(2022, 01, 08);
System.debug(newDate.day());
USER_DEBUG|[2]|DEBUG|8
Date newDate = Date.newInstance(2022, 03, 08);
System.debug(newDate.day());
USER_DEBUG|[2]|DEBUG|8
------------------------------------------------------------------------------------------------------

dayOfYear()
Returns the day-of-year component of a Date.

Date newDate = Date.newInstance(2022,08,05);
System.debug(newDate.dayOfYear());
USER_DEBUG|[2]|DEBUG|217
------------------------------------------------------------------------------------------------------


daysBetween(secondDate)
Returns the number of days between the Date that called the method and the specified date.

Date newDate = Date.newInstance(2022,01,01);
System.debug(newDate.daysBetween(Date.newInstance(2022,03,02)));
USER_DEBUG|[2]|DEBUG|60

Date newDate = Date.newInstance(2022,01,01);
System.debug(newDate.daysBetween(Date.newInstance(2015,01,01)));
USER_DEBUG|[2]|DEBUG|-2557

Integer days = newDate.daysBetween(Date.newInstance(2015,01,01))*-1;
System.debug(days);
USER_DEBUG|[2]|DEBUG|2557

------------------------------------------------------------------------------------------------------

daysInMonth(year, month)
Returns the number of days in the month for the specified year and month (1=Jan).

System.debug(Date.daysInMonth(2015,2));
USER_DEBUG|[1]|DEBUG|28
System.debug(Date.daysInMonth(2016,2));
USER_DEBUG|[2]|DEBUG|29

------------------------------------------------------------------------------------------------------


format()
Returns the Date as a string using the locale of the context user

date myDate = date.newInstance(2001, 3, 21);
String dayString = myDate.format();
system.assertEquals('21/03/2001', dayString);

System.debug(myDate + ' || ' + dayString);
USER_DEBUG|[5]|DEBUG|2001-03-21 00:00:00 &#124;&#124; 21/03/2001
------------------------------------------------------------------------------------------------------


isLeapYear(year)
Returns true if the specified year is a leap year.

System.debug(Date.isLeapYear(2000));
USER_DEBUG|[1]|DEBUG|true
------------------------------------------------------------------------------------------------------


isSameDay(dateToCompare)
Returns true if the Date that called the method is the same as the specified date.

System.debug(Date.newInstance(2022, 01, 01).isSameDay(Date.newInstance(2022, 01, 03).addDays(-2)));
USER_DEBUG|[1]|DEBUG|true
------------------------------------------------------------------------------------------------------


month()
Returns the month component of a Date (1=Jan).

System.debug(Date.newInstance(2022,08,06).month());
USER_DEBUG|[1]|DEBUG|8
------------------------------------------------------------------------------------------------------


monthsBetween(secondDate)
Returns the number of months between the Date that called the method and the specified date, ignoring the difference in days.
System.debug(Date.newInstance(2022,01,15).monthsBetween(Date.newInstance(2010,06,24)));
USER_DEBUG|[1]|DEBUG|-139

System.debug(Date.newInstance(2022,01,15).monthsBetween(Date.newInstance(2030,06,24)));
USER_DEBUG|[1]|DEBUG|101
------------------------------------------------------------------------------------------------------

newInstance(year, month, day)
Constructs a Date from Integer representations of the year, month (1=Jan), and day.
System.debug(Date.newInstance(2022,01,15));
USER_DEBUG|[1]|DEBUG|2022-01-15 00:00:00
------------------------------------------------------------------------------------------------------


parse(stringDate)
Constructs a Date from a String. The format of the String depends on the local date format.

String stringDate = '26/06/2022';
System.debug(Date.parse(stringDate));
USER_DEBUG|[2]|DEBUG|2022-06-26 00:00:00
------------------------------------------------------------------------------------------------------


today()
Returns the current date in the current user's time zone.

System.debug(Date.today());
USER_DEBUG|[1]|DEBUG|2022-06-28 00:00:00
------------------------------------------------------------------------------------------------------


toStartOfMonth()
Returns the first of the month for the Date that called the method.
System.debug(Date.today().toStartOfMonth());
USER_DEBUG|[1]|DEBUG|2022-06-01 00:00:00
------------------------------------------------------------------------------------------------------


toStartOfWeek()
Returns the start of the week for the Date that called the method, depending on the context user's locale.
System.debug(Date.today().toStartOfWeek());
USER_DEBUG|[1]|DEBUG|2022-06-27 00:00:00
------------------------------------------------------------------------------------------------------


valueOf(stringDate)
Returns a Date that contains the value of the specified String.

String year = '2008';
String month = '10';
String day = '5';
String hour = '12';
String minute = '20';
String second = '20';
String stringDate = year + '-' + month  + '-' + day + ' ' + hour + ':' + minute + ':' + second;
Date myDate = date.valueOf(stringDate);
System.debug(myDate);
USER_DEBUG|[9]|DEBUG|2008-10-05 00:00:00
------------------------------------------------------------------------------------------------------


valueOf(fieldValue)
Converts the specified object to a Date. Use this method to convert a history tracking field value or an object that represents a Date value.

List<AccountHistory> ahlist = [SELECT Field,OldValue,NewValue FROM AccountHistory];
for(AccountHistory ah : ahlist) {
  System.debug('Field: ' + ah.Field);
  if (ah.field == 'MyDate__c') {
    Date oldValue = Date.valueOf(ah.OldValue);
    Date newValue = Date.valueOf(ah.NewValue);
  }
}

------------------------------------------------------------------------------------------------------

year()
Returns the year component of a Date
System.debug(Date.newInstance(2022,01,01).year());
USER_DEBUG|[1]|DEBUG|2022




    ------------------------------------------------------------------------------------------------------
    --------------------------------------------TIME------------------------------------------------------
    ------------------------------------------------------------------------------------------------------


Time myTime = Time.newInstance(22,50,3,4);
System.debug(myTime);
|USER_DEBUG|[2]|DEBUG|22:50:03.004Z

------------------------------------------------------------------------------------------------------

addHours(additionalHours)
Adds the specified number of hours to a Time.

Time myTime = Time.newInstance(22,50,0,0);
System.debug(myTime.addHours(3));
USER_DEBUG|[2]|DEBUG|01:50:00.000Z
------------------------------------------------------------------------------------------------------


addMilliseconds(additionalMilliseconds)
Adds the specified number of milliseconds to a Time.
Time myTime = Time.newInstance(22,50,0,0);
System.debug(myTime.addMilliseconds(3));
USER_DEBUG|[2]|DEBUG|22:50:00.003Z
------------------------------------------------------------------------------------------------------


addMinutes(additionalMinutes)
Adds the specified number of minutes to a Time.

Time myTime = Time.newInstance(22,50,0,0);
System.debug(myTime.addMinutes(3));
USER_DEBUG|[2]|DEBUG|22:53:00.000Z
------------------------------------------------------------------------------------------------------


addSeconds(additionalSeconds)
Adds the specified number of seconds to a Time.

Time myTime = Time.newInstance(22,50,17,9);
System.debug(myTime.addSeconds(3));
USER_DEBUG|[2]|DEBUG|22:50:03.000Z
------------------------------------------------------------------------------------------------------


hour()
Returns the hour component of a Time.

Time myTime = Time.newInstance(22,50,17,9);
System.debug(myTime.hour());
USER_DEBUG|[2]|DEBUG|22
------------------------------------------------------------------------------------------------------


millisecond()
Returns the millisecond component of a Time.

Time myTime = Time.newInstance(22,50,17,9);
System.debug(myTime.millisecond());
USER_DEBUG|[2]|DEBUG|9
------------------------------------------------------------------------------------------------------


minute()
Returns the minute component of a Time.

Time myTime = Time.newInstance(22,50,17,9);
System.debug(myTime.minute());
USER_DEBUG|[2]|DEBUG|50
------------------------------------------------------------------------------------------------------

second()
Returns the second component of a Time.

Time myTime = Time.newInstance(22,50,17,9);
System.debug(myTime.second());
USER_DEBUG|[2]|DEBUG|17
------------------------------------------------------------------------------------------------------


newInstance(hour, minutes, seconds, milliseconds)
Constructs a Time from Integer representations of the specified hour, minutes, seconds, and milliseconds. (UTC is assumed.)

Time myTime = Time.newInstance(22,50,17,9);
System.debug(myTime);
USER_DEBUG|[2]|DEBUG|22:50:17.009Z





    ------------------------------------------------------------------------------------------------------
    --------------------------------------------DATETIME------------------------------------------------------
    ------------------------------------------------------------------------------------------------------


List <Case> cList = [SELECT Id, SuppliedName, CreatedDate, ClosedDate  FROM Case LIMIT 20];
for (Case c : cList){
    System.debug(c);
}

DateTime myDateTime = DateTime.newInstance(2022, 06, 29, 19, 21, 15);
System.debug(myDateTime);
USER_DEBUG|[2]|DEBUG|2022-06-29 18:21:15

Date myDate = Date.newInstance(2022,06,29);
System.debug(myDate);
USER_DEBUG|[2]|DEBUG|2022-06-29 00:00:00

Time myTime = Time.newInstance(19,24,30,15);
System.debug(myTime);
USER_DEBUG|[5]|DEBUG|19:24:30.015Z

DateTime myDateTime = DateTime.newInstance(myDate, myTime);
System.debug(myDateTime);
USER_DEBUG|[7]|DEBUG|2022-06-29 18:24:30

DateTime myDateTime = DateTime.now();
System.debug(myDateTime);
USER_DEBUG|[2]|DEBUG|2022-06-29 16:26:33   //19:26

