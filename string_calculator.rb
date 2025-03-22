class StringCalculator
  def add(str)
    return 0 if str.to_s.strip.empty?

    delimiter = /[\n,]/
    if str.start_with?("//")
      delimiter_line, str = str.split("\n", 2)
      delimiter = delimiter_line[2..]
    end
    numbers = str.split(delimiter)

    negative_nums = numbers.map(&:to_i).select { |n| n < 0 }
    raise "negative numbers not allowed #{negative_nums.join(',')}" if negative_nums.any?

    numbers.map(&:to_i).sum
  end
end