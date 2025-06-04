friends = ["Sharon", "Leo", "Leila", "Brian", "Arun"]

p friends.each { |friend| friend.upcase }

shouting_at_friends = []

friends.each { |friend| shouting_at_friends.push(friend.upcase) }

p shouting_at_friends

p friends.map { |friend| friend.upcase }

p # -----------------------------------------------------

my_order = ["medium Big Mac", "medium fries", "medium milkshake"]

p my_order.map { |item| item.gsub("medium", "extra large") }

p # -----------------------------------------------------

salaries = [1200, 1500, 1100, 1800]

p salaries.map { |salary| salary - 700 }