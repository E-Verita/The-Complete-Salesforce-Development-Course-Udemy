@isTest
public class FitnessTest {
    
    @isTest
    public static void calculateBMITest1(){
        Decimal weight = 60;
        Decimal height = 1.2;
        
        Decimal result = Fitness.calculateBMI(weight, height);
        System.assertEquals(41.67, result.setScale(2), 'BMI should be 41.67');
    }
    
       @isTest
    public static void calculateBMITest2(){
        Decimal weight = -60;
        Decimal height = 1.2;
        
        Decimal result = Fitness.calculateBMI(weight, height);
        System.assertEquals(-1, result, 'Invalid input');
    }
    
       @isTest
    public static void calculateBMITest3(){
        Decimal weight = 60;
        Decimal height = -1.2;
        
        Decimal result = Fitness.calculateBMI(weight, height);
        System.assertEquals(-1, result, 'Invalid input');
    }
    
    @isTest
    public static void calculateBMITest4(){
        Decimal weight = 60;
        Decimal height = 0;
        
        Decimal result = Fitness.calculateBMI(weight, height);
        System.assertEquals(-1, result, 'Invalid input');
    }
    
    
    @isTest
    public static void calculateBMITest5(){
        Decimal weight = 0;
        Decimal height = 1.2;
        
        Decimal result = Fitness.calculateBMI(weight, height);
        System.assertEquals(0, result, 'Invalid input');
    }
    
    
    @isTest
    public static void calculatePaceTest1(){
        Decimal distance = 10;
        Decimal minutes = 60;
        Decimal result = Fitness.calculatePace(distance, minutes);
        System.assertEquals(10, result);
         
    }
    
    @isTest
    public static void calculatePaceTest2(){
        Decimal distance = -10;
        Decimal minutes = 60;
        Decimal result = Fitness.calculatePace(distance, minutes);
        System.assertEquals(-1, result);
         
    }

       @isTest
    public static void calculatePaceTest3(){
        Decimal distance = 10;
        Decimal minutes = -60;
        Decimal result = Fitness.calculatePace(distance, minutes);
        System.assertEquals(-1, result);
         
    }
    
       @isTest
    public static void calculatePaceTest4(){
        Decimal distance = 0;
        Decimal minutes = 60;
        Decimal result = Fitness.calculatePace(distance, minutes);
        System.assertEquals(0, result);
         
    }
    
       @isTest
    public static void calculatePaceTest5(){
        Decimal distance = 10;
        Decimal minutes = 0;
        Decimal result = Fitness.calculatePace(distance, minutes);
        System.assertEquals(-1, result);
         
    }
    
}