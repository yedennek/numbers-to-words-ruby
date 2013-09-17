require_relative "../lib/numbers_to_words"

describe NumbersToWords do
  describe "single digits" do
    {0=>"zero", 1=>"one", 2=>"two", 3=>"three", 4=>"four", 5=>"five", 6=>"six",
     7=>"seven", 8=>"eight", 9=>"nine"}.each do |number, word|

      it "converts #{number} to #{word}" do
        expect(NumbersToWords.convert(number)).to eq word
      end

    end
  end

  describe "tens" do
    {10=>"ten",20=>"twenty",30=>"thirty",40=>"forty",50=>"fifty",60=>"sixty",
     70=>"seventy",80=>"eighty",90=>"ninety"}.each do |number, word|
      
      it "converts #{number} to #{word}" do
        expect(NumbersToWords.convert(number)).to eq word
      end
    end
  end

  describe "teens" do
    {11=>"eleven", 12=>"twelve", 13=>"thirteen", 14=>"fourteen", 15=>"fifteen",
    16=>"sixteen", 17=>"seventeen" ,18=>"eighteen",19=>"nineteen"}.each do |number, word|
      
      it "converts #{number} to #{word}" do
        expect(NumbersToWords.convert(number)).to eq word
      end
    end
  end

  describe "random two digit numbers" do
    {22=>"twenty-two",33=>"thirty-three",42=>"forty-two",56=>"fifty-six",67=>"sixty-seven"}.each do |number, word|

      it "converts #{number} to #{word}" do
        expect(NumbersToWords.convert(number)).to eq word
      end

    end
  end
  
  describe "hundreds" do
    {100=>"one hundred",200=>"two hundred",300=>"three hundred",400=>"four hundred",
     500=>"five hundred",600=>"six hundred",700=>"seven hundred",800=>"eight hundred",900=>"nine hundred"}.each do |number, word|

      it "converts #{number} to #{word}" do
        expect(NumbersToWords.convert(number)).to eq word
      end

    end
  end

  describe "three digit numbers" do
    {101=>"one hundred and one",220=>"two hundred and twenty",313=>"three hundred and thirteen",455=>"four hundred and fifty-five",
    999=>"nine hundred and ninety-nine"}.each do |number, word|

      it "converts #{number} to #{word}" do
        expect(NumbersToWords.convert(number)).to eq word
      end

    end
  end
  
  describe "thousands" do
    {1000=>"one thousand",2000=>"two thousand",3000=>"three thousand",4000=>"four thousand",
    5000=>"five thousand",6000=>"six thousand",7000=>"seven thousand",8000=>"eight thousand",
    9000=>"nine thousand"}.each do |number, word|

      it "converts #{number} to #{word}" do
        expect(NumbersToWords.convert(number)).to eq word
      end

    end
  end

  describe "four digit numbers" do
    {1001=>"one thousand and one",2020=>"two thousand and twenty",3300=>"three thousand three hundred",4440=>"four thousand four hundred and forty",
    5555=>"five thousand five hundred and fifty-five"}.each do |number, word|

      it "converts #{number} to #{word}" do
        expect(NumbersToWords.convert(number)).to eq word
      end

    end
  end

  describe "halves" do
    {0.5 => "one half", 6.5 => "six and a half", 11.5 => "eleven and a half", 22.5 => "twenty two and a half", 135.5 => "one hundred and thirty five and a half"}.each do |number, word|
      it "converts #{number} to #{word}" do
        expect(NumbersToWords.convert(number)).to eq word
      end
    end
  end
end
