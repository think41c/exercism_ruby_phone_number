class PhoneNumber
  def initialize(phone)
    @phone = phone
  end

    
  def number
    cleaned_num = @phone.gsub(/[()]/,"")
    "1234567890"
    cleaned_num
  end

  def area_code
  end
end

a = PhoneNumber.new("()123")
p a.number