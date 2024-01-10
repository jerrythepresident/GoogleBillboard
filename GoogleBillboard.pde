public final static String e = "2.7182818284590452353602874713526624977572470936999595749669676277240766303535475945713821785251664274274663919320030599218174135966290435";  

public void setup(){            
  int consecutiveDigits = 10;
  int startIndex = 1;
  boolean primeFound = false;
  int sum49 = 0;

    while ((!primeFound && sum49 < 5) && startIndex + consecutiveDigits <= e.length()) {
        String substring = e.substring(startIndex, startIndex + consecutiveDigits);
        double parsedDouble = Double.parseDouble(substring);
        
    if (isPrime(parsedDouble)) {
                  System.out.println("Prime: " + substring);
                  primeFound = true;
              } 
              
     if (digitSumEquals(parsedDouble, 49)) {
            System.out.println("Sum of digits equals 49: " + substring);
            sum49++;
        }

              startIndex++;
        }
}  
public void draw()  
{   
  //not needed for this assignment
}  

public boolean isPrime(double dNum){   
  if (dNum<2){
    return false;
  }
  for(int i=2; i<=Math.sqrt(dNum); i++){
    if(dNum%i==0){
  return false;
  }
  }
  return true;
} 

public boolean digitSumEquals(double dNum, int targetSum) {
    double sum = 0;
    while (dNum > 0) {
        sum = sum + dNum % 10;
            dNum = dNum / 10;
    }
    return sum == targetSum;
}
