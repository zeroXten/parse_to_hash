require "parse_to_hash/version"

module ParseToHash
  def self.parse(input)
    output = []
    header = []
    input.each_line do |line|
      next if line =~ /^\s*$/
      next if line =~ /^\s*#/
      if header.empty?
        header = line.gsub(/#.*$/m, '').gsub(/\s+/m, ' ').strip.split(' ').map { |i| i.to_sym }
      else
        output << Hash[header.zip(line.gsub(/#.*$/m, '').gsub(/\s+/m, ' ').strip.split(' '))]
      end
    end
    output
  end
end
