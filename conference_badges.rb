# Write your code here.
def badge_maker(name)
  "Hello, my name is #{name}."
end


def batch_badge_creator(attendees)
  messages = []
  attendees.each { |person| messages << badge_maker(person) }
  messages
end


def assign_rooms(attendees)
  room_assignments = []
  attendees.each_with_index { |person, i| room_assignments <<  "Hello, #{person}! You'll be assigned to room #{i + 1}!" }
  room_assignments
end


def printer(attendees)
  batch_badge_creator(attendees).each { |badge| puts badge }
  assign_rooms(attendees).each { |room_assignment| puts room_assignment }
end
