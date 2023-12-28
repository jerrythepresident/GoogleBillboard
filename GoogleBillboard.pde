public final static String e = "2.7182818284590452353602874713526624977572470936999595749669676277240766303535475945713821785251664274274663919320030599218174135966290435";  
public void setup()  
{            
       int startIndex=2
       String digits = e.substring(2,12);
       double dNum = Double.parseDouble(digits);
        while (startIndex + 10 <= e.length()) {
            String substring = e.substring(startIndex, startIndex + consecutiveDigits);
            BigInteger num = new BigInteger(substring);

            if (isPrime(num)) {
                System.out.println("Prime: " + substring);
            } else {
                System.out.println("Not Prime: " + substring);
            }
            startIndex++;
        }
}  
public void draw()  
{   
	//not needed for this assignment
}  
public boolean isPrime(double dNum)  
{   

  if (dnum<2){
    return false;
  }
  for(int i=2; i<=Math.sqrt(num); i++){
    if(num%i==0){
  return false;
  }
  }
  return true; 
} 
