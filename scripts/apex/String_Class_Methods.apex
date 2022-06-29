 String myText = 'this is my test text!';     
 System.debug(myText);                                                              //USER_DEBUG|[5]|DEBUG|this is my test text! //       


 // capitalize 1st letter                       
System.debug(myText.capitalize());                                                  //USER_DEBUG|[5]|DEBUG|This is my test text! //


// contains text 
System.debug(myText.contains('test'));                                              //|USER_DEBUG|[9]|DEBUG|true//


// convert to upper case
System.debug(myText.toUpperCase());                                                 //|DEBUG|THIS IS MY TEST TEXT!


//convert to lower case
System.debug(myText.toLowerCase());                                                 //|DEBUG|THIS IS MY TEST TEXT!


//equals
System.debug(myText.equals('test'));                                                //USER_DEBUG|[22]|DEBUG|false
System.debug(myText.equals('this is my test text!'));                               //USER_DEBUG|[23]|DEBUG|true
System.debug(myText.equals('This is my test text!'));                               //USER_DEBUG|[24]|DEBUG|false


//remove
System.debug(myText.remove('my'));                                                  //USER_DEBUG|[28]|DEBUG|this is  test text!


//replace
System.debug(myText.replace('my','your'));                                          //USER_DEBUG|[32]|DEBUG|this is your test text!


//split
System.debug(myText.split(' '));                                                    //[36]|DEBUG|(this, is, my, test, text!)



---------------------------------------------     Escape characters  ----------------------------------------------
/*

\b backspace character
\n new line
\r carriage return
\t tab
\\ one backlash character
\o One ASCII null character


*/

String text = '\nMy book\'s name is \'Good Book\'. \nI like this book.';
System.debug(text);                                                                         /*18:05:08.16 (17097729)|USER_DEBUG|[2]|DEBUG|
/                                                                                            My book's name is 'Good Book'. 
/                                                                                            I like this book. */
