# octal.rb

# octal base number
class Octal
  attr_accessor :number

  def initialize(num)
    @number = num
  end

  def to_decimal
    count = 0
    octal_num = 0
    invalids = ('a'..'z').to_a + ('8'..'9').to_a
    invalids.flatten
    number.reverse.split('').each do |i|
      return 0 if invalids.include?(i)
      octal_num += i.to_i * (8**count)
      count += 1
    end

    octal_num.to_i
  end
end
