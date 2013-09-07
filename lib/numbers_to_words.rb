class NumbersToWords

  DIGITS = ["zero", "one", "two", "three", "four", "five", "six", "seven", "eight", "nine", "ten",
  "eleven","twelve","thirteen","fourteen","fifteen","sixteen","seventeen","eighteen","nineteen"]
  TENS = ["", "ten", "twenty", "thirty", "forty","fifty","sixty","seventy","eighty","ninety"]

  def self.convert number 
    if number < 20  
      DIGITS[number]
    elsif number_divisible_by_100 number
      "#{DIGITS[number/100]} hundred"
    elsif number > 100
      "#{DIGITS[number/100]} hundred and #{convert number%100}"
    elsif number_divisible_by_10 number
      TENS[number/10]
    else
      "#{TENS[number/10]}-#{DIGITS[number%10]}"
    end
  end

  def self.number_divisible_by_100 number
    number % 100 == 0
  end

  def self.number_divisible_by_10 number
    number % 10 == 0
  end

end
