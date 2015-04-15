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
    if @phone =~ /[A-Z]/i
      @phone = "0000000000"
      @phone
    end
  end

  def clean_chars 
    @phone = @phone.gsub(/[\D]/,"")   
  end

  def check_length
    if @phone.length == 10
      @phone
    else
      "0000000000"
    end
  end

  def number
    delete_the_one
    reject_letters 
    clean_chars
    area_code
    check_length
  end

  def area_code
    @area_code = "#{@phone[0..2]}"
  end

  def prefix
    @prefix = []
    @prefix << @phone[3..5]
    @prefix = @prefix.join
  end

  def suffix
    suffix = []
    suffix << @phone[6..9]
    suffix = suffix.join 
  end

  def to_s
    number
    @phone = "(#{area_code}) #{prefix}-#{suffix}"
    @phone
  end
end

a = PhoneNumber.new("12334525")
p a.number