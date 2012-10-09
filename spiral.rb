$:.unshift File.join(File.dirname(__FILE__), 'lib')

require 'integer_spiral'

begin
  n = Integer(ARGV[0] || 0)
  spiral = IntegerSpiral.new n
  puts spiral.to_s
rescue ArgumentError
  puts "Please provide a positive integer as a command line argument"
end
