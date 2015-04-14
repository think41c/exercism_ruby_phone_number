class PhoneNumber
  def initialize(phone)
    @phone = phone
  end

  def delete_the_one
    if @phone[0] == "1" 
      @phone[0] = ""
    end
  end

  def reject_letters
    if @phone.each_char.any? do |x|
        x =~ /[A-Z]/i
      end
      "0000000000"
    end
  end

    
  def number
    delete_the_one
    reject_letters 

    cleaned_num = @phone.gsub(/[\D]/,"")
    cleaned_num
  end

  def area_code
  end
end

a = PhoneNumber.new("1234---2345")
p a.number