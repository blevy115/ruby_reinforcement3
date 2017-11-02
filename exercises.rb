trains = [
{train: "72C", frequency_in_minutes: 15, direction: "north"},
{train: "72D", frequency_in_minutes: 15, direction: "south"},
{train: "610", frequency_in_minutes: 5, direction: "north"},
{train: "611", frequency_in_minutes: 5, direction: "south"},
{train: "80A", frequency_in_minutes: 30, direction: "east"},
{train: "80B", frequency_in_minutes: 30, direction: "west"},
{train: "110", frequency_in_minutes: 15, direction: "north"},
{train: "111", frequency_in_minutes: 15, direction: "south"}
]

def train_seperator (trains, train_number, variable)
  trains.select do |train|
    if train[:train] == train_number
      return train[variable]
    end
  end
end

puts train_111_direction = train_seperator(trains, "111", :direction)
puts train_80B_frequence = train_seperator(trains, "80B", :frequency_in_minutes)
puts train_610_direction = train_seperator(trains, "610", :direction)

# train_111={}
# trains.select do |train|
#   if train == {train: "111", frequency_in_minutes: 15, direction: "south"}
#     train_111 = train
#   end
# end
#
# direction_111 = train_111[:direction]
#
# train_80B = {}
# trains.select do |train|
#   if train == {train: "80B", frequency_in_minutes: 30, direction: "west"}
#     train_80B = train
#   end
# end
#
# frequency_in_minutes_80B = train_80B[:frequency_in_minutes]
#
# train_610={}
# trains.select do |train|
#   if train == {train: "610", frequency_in_minutes: 5, direction: "north"}
#     train_610 = train
#   end
# end
#
# direction_111 = train_111[:direction]
#
# train_north = []
# trains.each do |train|
#   if train[:direction] == "north"
#     train_north << train
#   end
# end
#
# puts  train_north
#
# train_east = []
# trains.each do |train|
#   if train[:direction] == "east"
#     train_east << train
#   end
# end
#
# puts train_east

def train_direction_finder (trains, direction)
  train_direction = []
  trains.each do |train|
  if train[:direction] == direction
    train_direction << train
  end
  end
  puts train_direction
end

train_direction_finder(trains, "north")

train_direction_finder(trains, "east")

# new_train = trains[0]
# new_train[:first_departure_time] = 6
# trains[0] = new_train
# puts trains

def departure_time (trains, train_number, time)
  trains.each do |train|
    if train[:train] == train_number
      train[:first_departure_time] = time
    end
  end
end

puts "What is the train number?"
train_number = gets.chomp
puts "Whats teh departure time?"
time = gets.chomp

puts departure_time(trains, train_number, time)
