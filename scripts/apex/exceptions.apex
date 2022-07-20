Account accRec = new Account();
insert accRec;
//EXCEPTION_THROWN|[2]|System.DmlException: Insert failed. First exception on row 0; first error: 


String str;
System.debug(str.toLowerCase(str));
//Error: System.NullPointerException: Attempt to de-reference a null object



//Throw an exception programmaticaly
throw new NullPointerException();
//FATAL_ERROR|System.NullPointerException: Script-thrown exception


//Handling an exception

try{
    Double result = 10/0;
    System.debug('Result: ' + result);
} catch (MathException e){
    System.debug('Caught MathException');
} finally {
    System.debug('Finally Called')
}
//USER_DEBUG|[5]|DEBUG|Caught MathException

try{
    Double result = 10/0;
    System.debug('Result: ' + result);
} catch (MathException e){
    System.debug('Caught MathException');
} finally {
    System.debug('Finally Called');
}
//USER_DEBUG|[5]|DEBUG|Caught MathException
//USER_DEBUG|[7]|DEBUG|Finally Called

try{
    System.debug('Try block called!');
} catch (Exception e){
    System.debug('Caught MathException');
} finally {
    System.debug('Finally block Called');
}
System.debug('After Exception');
//USER_DEBUG|[2]|DEBUG|Try block called!
//USER_DEBUG|[6]|DEBUG|Finally block Called
//USER_DEBUG|[8]|DEBUG|After Exception


try{
    Double result = 10/0;
    System.debug('Result: ' + result);
    System.debug('Try block called!');
} catch (Exception e){
    System.debug('Caught MathException');
} finally {
    System.debug('Finally block Called');
}
System.debug('After Exception');
//USER_DEBUG|[6]|DEBUG|Caught MathException
//USER_DEBUG|[8]|DEBUG|Finally block Called
//USER_DEBUG|[10]|DEBUG|After Exception



try{
    Double result = 10/0;
    System.debug('Result: ' + result);
    System.debug('Try block called!');
} catch (Exception e){
    System.debug('Caught MathException');
    System.debug('Cause: ' + e.getCause());
    System.debug('Message: ' + e.getMessage());
    System.debug('Line Number: ' + e.getLineNumber());
    System.debug('Stack trace: ' + e.getStackTraceString());

} finally {
    System.debug('Finally block Called');
}
System.debug('After Exception');
/*
12:48:29.24 (25877271)|USER_DEBUG|[6]|DEBUG|Caught MathException
12:48:29.24 (26017379)|USER_DEBUG|[7]|DEBUG|Cause: null
12:48:29.24 (26056984)|USER_DEBUG|[8]|DEBUG|Message: Divide by 0
12:48:29.24 (26100359)|USER_DEBUG|[9]|DEBUG|Line Number: 2
12:48:29.24 (26135773)|USER_DEBUG|[10]|DEBUG|Stack trace: AnonymousBlock: line 2, column 1
12:48:29.24 (26146865)|USER_DEBUG|[13]|DEBUG|Finally block Called
12:48:29.24 (26156146)|USER_DEBUG|[15]|DEBUG|After Exception
*/

public class ProcessException extends Exception{

}

try{
   throw new ProcessException('My custom exception');
} catch (Exception e){
    System.debug('Caught MathException');
} finally {
    System.debug('Finally block Called');
}
System.debug('After Exception');

/*
13:00:41.30 (34414955)|EXCEPTION_THROWN|[6]|ProcessException: My custom exception
13:00:41.30 (34541830)|USER_DEBUG|[8]|DEBUG|Caught MathException
13:00:41.30 (34564107)|USER_DEBUG|[10]|DEBUG|Finally block Called
13:00:41.30 (34578671)|USER_DEBUG|[12]|DEBUG|After Exception
*/







