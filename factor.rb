#Write a factorial method which takes as its input a non-negative integer and calculates the factorial of that number.
#The factorial of a number is the product of all integers from 1 up to that number. For example:
#factorial(5) == 5 * 4 * 3 * 2 * 1 == 120

def factorial(n)
  if n == 0
    n = 1
  else
  x = n - 1
  while x > 0
    n*=x
    x = x-1 
  end
  end
 puts n
end
factorial(0)