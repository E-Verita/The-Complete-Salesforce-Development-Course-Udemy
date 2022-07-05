public class HelloWorld {
    private String greeting = 'Hello World';
    public String publicGreeting = 'My public greeting!';
       public void printGreeting() {
        System.debug(greeting);
    }

    public void printPublicGreeting() {
        System.debug(publicGreeting);
    }

    public void printMessage(String message){
        System.debug(message);
    }

    public String getDay(Integer daynumber){
        String dayString = '';
        switch on daynumber{
            when 1{
                dayString = 'Monday';
            }
            when 2{
                dayString = 'Tuesday';
            }
            when 3{
                dayString = 'Wednesday';
            }
            when 4{
                dayString = 'Thursday';
            }
            when 5{
                dayString = 'Friday';
            }
            when 6{
                dayString = 'Saturday';
            }
            when 7{
                dayString = 'Sunday';
            }
            when else {
                dayString ='Not a day';
            }
        }
        return dayString;
    }

    public String getDay(){
        Date d = System.today();
        Datetime dt = (Datetime)d;
        String dayOfWeek = dt.format('EEEE');
        return dayOfWeek;
    }
}