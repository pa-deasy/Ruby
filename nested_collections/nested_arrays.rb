teacher_mailboxes = [
  ["Adams", "Baker", "Clark", "Davis"],
  ["Jones", "Lewis", "Lopez", "Moore"],
  ["Perez", "Scott", "Smith", "Young"]
]

p teacher_mailboxes[0][0]
p teacher_mailboxes[1][-1]
p teacher_mailboxes[-1][0]

# p teacher_mailboxes[3][0]  NoMethodError
# p teacher_mailboxes[0][4]  nil error
p teacher_mailboxes.dig(3, 0)  # nil
p teacher_mailboxes.dig(0, 4)  # nil

p "-----------------------------------------------------"

mutable = Array.new(3, Array.new(2))  
p mutable
mutable[0][0] = 1000
p mutable

immutable = Array.new(3) { Array.new(2) }
p immutable
immutable[0][0] = 1000
p immutable

p "-----------------------------------------------------"

test_scores = [
  [97, 76, 79, 93],
  [79, 84, 76, 79],
  [88, 67, 64, 76],
  [94, 55, 67, 81]
]

p test_scores

test_scores << [100, 99, 98, 97]

p test_scores

test_scores[0].push(100)

p test_scores

test_scores.pop

p test_scores

test_scores[0].pop

p test_scores

p "-----------------------------------------------------"

teacher_mailboxes.each_with_index do |row, row_index|
  row.each_with_index do | teacher, column_index|
    puts "Row:#{row_index}, Column:#{column_index} = #{teacher}"
  end
end

teacher_mailboxes.flatten.each { |teacher| puts "#{teacher} is amazing!"}