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


https://www.youtube.com/watch?v=OSPYmnM4HlE
