class NumbersToWords

  DIGITS = ["zero", "one", "two", "three", "four", "five", "six", "seven", "eight", "nine", "ten",
  "eleven","twelve","thirteen","fourteen","fifteen","sixteen","seventeen","eighteen","nineteen"]
  TENS = ["", "ten", "twenty", "thirty", "forty","fifty","sixty","seventy","eighty","ninety"]

  SCALE = {1_000_000=>"million",1_000=>"thousand"}

  def self.convert number
    is_negative = number < 0
    absolute_number = number.abs
    integer = absolute_number.truncate
    fraction = absolute_number % 1
    return "zero" if integer == 0 && fraction == 0

    output = []
    output << convert_integers(integer, 1_000_000) if integer != 0
    output << convert_fraction(fraction) if fraction != 0
    result = output.join " and "
    result.prepend "minus " if is_negative
    result
  end

  def self.convert_integers integer, scale
    output = ""
    if divisible_by? scale, integer
      output = "#{convert_three_digits integer/scale} #{SCALE[scale]}"
    elsif integer > scale && integer%scale < 100
      output = "#{convert_three_digits integer/scale} #{SCALE[scale]} and #{convert_three_digits integer%scale}"
    elsif scale == 1_000_000 && integer > scale
      output = "#{convert_three_digits integer/scale} #{SCALE[scale]} #{convert_integers integer%scale, 1000}"
    elsif integer > scale
      output = "#{convert_three_digits integer/scale} #{SCALE[scale]} #{convert_three_digits integer%scale}"
    else
      if scale == 1_000_000
        output = convert_integers integer, 1_000
      else
        output = convert_three_digits integer
      end
    end
    output
  end

  def self.convert_fraction fraction
    if fraction == 0.5
      "a half"
    else
      "a bit"
    end
  end

  def self.divisible_by? divisor, number
    number % divisor == 0
  end

  def self.convert_three_digits number
    if number < 20
      DIGITS[number]
    elsif divisible_by? 100, number
      "#{DIGITS[number/100]} hundred"
    elsif number > 100
      "#{DIGITS[number/100]} hundred and #{convert_three_digits number%100}"
    elsif divisible_by? 10, number
      TENS[number/10]
    else
      "#{TENS[number/10]}-#{DIGITS[number%10]}"
    end
  end
end
