names = [
  'Stuart Blanda', 'Kaden Batz', 'Cornell Durgan', 'Mrs. Kieran Goldner',
  'Miss Emile Littel', 'Carolyne Terry', 'Mrs. Ronaldo Buckridge',
  'Cristal Braun', 'Dr. Joanne Bartoletti', 'Kenton Block', 'Jeromy Medhurst',
  'Gussie Daniel V', 'Kitty Senger Jr.', 'Lexus Gibson', 'Kaylah Howell',
  'Maxie Wilderman', 'Kayden Mohr', 'Devonte Skiles', 'Tina Mante',
  'Heloise Mann'
]

PREFIXES = %w[Dr. Mrs. Miss Jr. V].freeze

names_without_prefixes = names.map { |x| x.split - PREFIXES }


task_1_hash = names_without_prefixes.to_h
puts 'First names task results'
puts ''
puts task_1_hash
puts ''


task_2_hash = names_without_prefixes.map { |x| x[0][0].split + x[1][1].split }
task_2_hash = task_2_hash.to_h
puts 'Second names task results'
puts ''
puts task_2_hash
puts ''


task_3_array = names_without_prefixes.map { |x| x[0][0].split + x[1][0].split }
task_3_array.flatten!.sort!.uniq!
puts 'Third names task results'
puts ''
print task_3_array
puts ''



task_4_array = names_without_prefixes.map { |x| x.reverse.join(' ') }

puts ''
puts 'Fourth names task results'
puts ''
print task_4_array
puts ''


numbers = %w[
  9461055376 1098029425 1365826266 3651652057
  6639633927 9198606875 3425027805 9600912575
  8826860435 4244213108 8930423446 6975487430
  2956968315 4024720801 8882048673 4897211695
  6089600553 4272319905 4517433227 5565635133
]



task_1_hash = {}
numbers.each do |x|
  task_1_hash[x] = x.split(//).max
end
puts 'First numbers task results'
puts ''
puts task_1_hash
puts ''


task_2_string = ''
numbers.each do |x|
  task_2_string = "#{task_2_string}#{x.split(//).max}#{x.split(//).min}"
end
puts 'Second numbers task results'
puts ''
puts task_2_string
puts ''

task_3_array = numbers

task_3_array.sort!
task_3_number = task_3_array[0].to_i + task_3_array[1].to_i +
 + task_3_array[-1].to_i + task_3_array[-2].to_i

puts 'Third numbers task results'
puts ''
puts task_3_number
puts ''
