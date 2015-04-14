class PhoneNumber
  def initialize(phone)
    @phone = phone
  end

    
  def number
    if @phone.each_char.any? do |x|
        puts x 
      end

      puts "its true"
    else
    cleaned_num = @phone.gsub(/[\D]/,"")
    "1234567890"
    cleaned_num
    end
  end

  def area_code
  end
end

a = PhoneNumber.new("**")
p a.number