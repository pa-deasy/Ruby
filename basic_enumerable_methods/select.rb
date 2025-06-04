friends = ["Sharon", "Leo", "Leila", "Brian", "Arun"]
invited_list = []

for friend in friends do
  if friend != "Brian"
    invited_list.push(friend)
  end
end

p invited_list

p friends.select { |friend| friend != "Brian" }

p friends.reject { |friend| friend == "Brian" }

p # -----------------------------------------------------

responses = { "Sharon" => "yes", "Leo" => "no", "Leila" => "no", "Arun" => "yes"}

p responses.select { |person, response| response == "yes" }