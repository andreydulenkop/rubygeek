numbers = [
  [1, 2, 3],
  [2, 2, 2],
  [3, 2, 1]
]

	lines = numbers.map do |num|
	num.map {|i| '*' *i }
	end

lines.map!{ |line| line.join(" ") }
lines.each {|line| puts line}
