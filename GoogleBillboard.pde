public final static String e = "2.7182818284590452353602874713526624977572470936999595749669676277240766303535475945713821785251664274274663919320030599218174135966290435";  
public void setup()  
{            
int consecutiveDigits = 10;
        int startIndex = 0;
        while (startIndex + consecutiveDigits <= e.length()) {
            String substring = e.substring(startIndex, startIndex + consecutiveDigits);
            double parsedDouble = Double.parseDouble(substring);

            if (isPrime(parsedDouble)) {
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

  if (dNum <= 1) {
            return false;
        }
        if (dNum == 2 || dNum == 3) {
            return true;
        }
        if (dNum % 2 == 0) {
            return false;
        }

        for (int i = 3; i * i <= dNum; i += 2) {
            if (dNum % i == 0) {
                return false;
            }
        }
        return true;
} 
