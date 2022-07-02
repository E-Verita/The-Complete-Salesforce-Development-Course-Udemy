/*---------------------------------------------------------------------------------
--------------------------------   IF/ELSE   --------------------------------------
---------------------------------------------------------------------------------*/

Boolean isSunny = true;
Boolean isRaining = false;
Boolean areYouWorking = false;

if (isSunny==false){
    System.debug('No party');
} else if (isRaining == true) {
    System.debug('No party');
} else if (areYouWorking == true){
    System.debug('No party');
}else{
    System.debug('Party');
}


if (!isSunny){
    System.debug('No party');
} else if (isRaining) {
    System.debug('No party');
} else if (areYouWorking){
    System.debug('No party');
}else{
    System.debug('Party');
}

//USER_DEBUG|[12]|DEBUG|Party 
//USER_DEBUG|[12]|DEBUG|Party



/*---------------------------------------------------------------------------------
-----------------------------   SWICH/WHEN  ---------------------------------------
---------------------------------------------------------------------------------*/


String today = 'Saturday';

switch on today{
    when 'Monday'{
        System.debug('Working');
    }
    when 'Tuesday' {
        System.debug('Working');
    }
    when 'Wednesday'{
        System.debug('Working');
    }
    when 'Thursday'{
        System.debug('Working');
    }
    when 'Friday'{
        System.debug('Working');
    }
    when 'Saturday'{
        System.debug('Party!');
    }
    when 'Sunday'{
        System.debug('Rest!');
    }
    when null{
        System.debug('Choose day!');
    }
}
//|USER_DEBUG|[20]|DEBUG|Party!


------------------------------------
String today = 'Saturday';

switch on today{
    when 'Monday', 'Tuesday', 'Wednesday', 'Thursday', 'Friday'{
        System.debug('Work');
    }
    when 'Saturday'{
        System.debug('Party');
    }
    when 'Sunday'{
        System.debug('Rest');
    }
    when else{
        System.debug('Choose day!');
    }
}

//USER_DEBUG|[8]|DEBUG|Party
----------------------------------------------


//if current hour is 0-11 -> Good Morning!
//if current hour is 12-17 -> Good Afternoon!
//else -> Good Evening!

Integer currentHour = 10;
switch on currentHour{
    when 0,1,2,3,4,5,6,7,8,9,10,11{
        System.debug('Good Morning');
    } 
    when 12,13,14,15,16,17{
        System.debug('Good Afternoon!');
    }
    when else {
        System.debug('Good Evening');
    }
}

//USER_DEBUG|[4]|DEBUG|Good Morning
---------------------------------------------


/*---------------------------------------------------------------------------------
-----------------------------     DO/WHILE LOOP  ----------------------------------
---------------------------------------------------------------------------------*/


/* Do-while loop executes at least once */

Boolean isLeapYear = null;
Integer year = 2022;
String result = null;

do{
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
year++;


} while (year <=3000);


/*---------------------------------------------------------------------------------
-----------------------------     WHILE LOOP     ----------------------------------
---------------------------------------------------------------------------------*/

// While checks condition before the loop executes  (if condition not met - will not execute at all)


Boolean isLeapYear = null;
Integer year = 2022;
String result = null;

while (year <=3000){
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
year++;
} 


/*---------------------------------------------------------------------------------
-----------------------------     FOR LOOP     ------------------------------------
---------------------------------------------------------------------------------*/

Boolean isLeapYear = null;
Integer year = 2022;
String result = null;

for (Integer year = 2000; year<=3000; year++){
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
} 

/*---------------------------------------------------------------------------------
-----------------------------     BREAK       ------------------------------------
---------------------------------------------------------------------------------*/

//Get goosebumps after listening to the song x times
Integer gooseBumpsAfter = 4;

//Iterate over the map for a max 1000 times
Integer n =1000;

for(Integer i=0; i<n; i++){
    System.debug('Listen to song ' + i + ' times.');
    if(i==gooseBumpsAfter){
        break;
    }
}

/*12:26:09.37 (39683986)|USER_DEBUG|[8]|DEBUG|Listen to song 0 times.
12:26:09.37 (39741306)|USER_DEBUG|[8]|DEBUG|Listen to song 1 times.
12:26:09.37 (39774304)|USER_DEBUG|[8]|DEBUG|Listen to song 2 times.
12:26:09.37 (39816421)|USER_DEBUG|[8]|DEBUG|Listen to song 3 times.
12:26:09.37 (39865836)|USER_DEBUG|[8]|DEBUG|Listen to song 4 times.*/


/*---------------------------------------------------------------------------------
-----------------------------     CONTINUE     ------------------------------------
---------------------------------------------------------------------------------*/

List <String> days = new List <String>{'Monday','Tuesday', 'Wednesday','Thursday','Friday','Saturday','Sunday'};

Integer listSize = days.size();
for(Integer i=0; i<listSize; i++){
    if(days.get(i)=='Wednesday'){
        System.debug('Eat candies on ' + days.get(i));
        continue;
    }
    System.debug('Eat salad on ' + days.get(i));
}


/*---------------------------------------------------------------------------------
-----------------------------     ITERATION FOR LOOP    ---------------------------
---------------------------------------------------------------------------------*/

List <String> days = new List <String>{'Monday','Tuesday', 'Wednesday','Thursday','Friday','Saturday','Sunday'};

for (String day: days){
      if(day=='Wednesday'){
        System.debug('Eat candies on ' + day);
        continue;
    }
    System.debug('Eat salad on ' + day);
}