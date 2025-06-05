numbers = [5, 6, 7, 8]
element = 6
result = false

numbers.each do |number|
  if number == element
    result = true
    break
  end
end

p result

element = 3
result = false

numbers.each do |number|
  if number == element
    result = true
    break
  end
end

p result

p numbers.include?(6)

p numbers.include?(3)

p # -----------------------------------------------------

friends = ["Sharon", "Leo", "Leila", "Brian", "Arun"]

invited_friends = friends.select { |friend| friend != "Brian" }

p friends.include?("Brian")
p invited_friends.include?("Brian")