class PhoneNumber
  def initialize(phone)
    @phone = phone
  end

    
  def number
    if @phone.each_char.any? do |x|
        x =~ /[A-Z]/i
      end
      "0000000000"
    else
      cleaned_num = @phone.gsub(/[\D]/,"")
      cleaned_num
    end
  end

  def area_code
  end
end

a = PhoneNumber.new("2345")
p a.number