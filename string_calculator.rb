class StringCalculator
  def add(str)
    return 0 if str.to_s.strip.empty?

    return str.to_i unless str.include?(',')

    if str.start_with?("//")
      str = str.gsub("//", "")
      str_parts = str.split("\n")
      delimiter = str_parts.first
      str = str_parts.last
      str.split("#{delimiter}").map(&:to_i).sum
    else
      str.split(/[\n,]/).map(&:to_i).sum
    end
  end
end