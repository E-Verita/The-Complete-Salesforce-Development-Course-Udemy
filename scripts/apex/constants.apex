-----------------------------------------------------------------------------
---------------------------CONSTANTS-----------------------------------------
-----------------------------------------------------------------------------



/*      Once intialized, a constant variable does not change it's value
*      'final' keyword
*       Should be capitalized

*/


final Decimal PI = 3.14159;
System.debug(PI);      

PI = 2;                                                                 //USER_DEBUG|[2]|DEBUG|3.14159
System.debug(PI);                                                       /*EXCEPTION_THROWN|[9]|System.FinalException: Final variable has already been initialized
//                                                                       07:21:29.19 (21061912)|FATAL_ERROR|System.FinalException: Final variable has already been initialized*/



-----------------------------------------------------------------------------
---------------------------OPERATORS-----------------------------------------
-----------------------------------------------------------------------------

