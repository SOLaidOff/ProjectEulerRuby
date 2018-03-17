class EulerMath
  def self.isEven? (number)
    number % 2 == 0
  end
  
  def self.isOdd? (number)
    number % 2 == 1
  end
  
  def self.isDivisible? (dividend, divisor)
    dividend % divisor == 0
  end
end