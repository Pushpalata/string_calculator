class StringCalculator
  def add(str)
    return 0 if str.to_s.strip.empty?

    delimiter = /[\n,]/
    if str.start_with?("//")
      delimiter_line, str = str.split("\n", 2)
      delimiter = delimiter_line.split("//").last
    end
    str.split(delimiter).map(&:to_i).sum
  end
end