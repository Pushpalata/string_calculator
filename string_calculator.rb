class StringCalculator
  def add(str)
    return 0 if str.to_s.strip.empty?

    return str.to_i unless str.include?(',')

    str.split(/[\n,]/).map(&:to_i).sum
  end
end