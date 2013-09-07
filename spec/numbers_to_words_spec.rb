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
  
end
