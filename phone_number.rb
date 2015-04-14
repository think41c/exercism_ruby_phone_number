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
      @phone = "0000000000"
      @phone
    end
  end

  def clean_chars 
    @phone = @phone.gsub(/[\D]/,"")   
  end

  def check_length
    if @phone.length < 20
      @phone
    else
      "0000000000"
    end
  end

  def number
    delete_the_one
    reject_letters 
    clean_chars
    check_length
  end

  def area_code
  end
end

a = PhoneNumber.new("12334525")
p a.number