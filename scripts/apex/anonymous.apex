HelloWorld firstClass = new HelloWorld();
firstClass.printGreeting();                             //USER_DEBUG|[6]|DEBUG|Hello World    

System.debug(firstClass.publicGreeting);                //|USER_DEBUG|[4]|DEBUG|My public greeting!

firstClass.printGreeting();                             //|USER_DEBUG|[5]|DEBUG|Hello World

System.debug(firstClass.getDay(1));                     // USER_DEBUG|[8]|DEBUG|Monday   

System.debug(firstClass.getDay());                      //|USER_DEBUG|[10]|DEBUG|Tuesday