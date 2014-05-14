class TextAligner

  def initialize(strings)
    @strings = strings
  end

  def center_strings
    separated_strings = @strings.split("\n")
    results = []
    long_line = separated_strings.sort_by { |line| line.length }.last.length
    separated_strings.each do |line|
      lines = line.center(long_line)
      results << lines.rstrip
    end
    results.join("\n")
  end
end



