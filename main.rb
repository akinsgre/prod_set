require './item'

parent = Item.new("Grain", "Base and Specialty Malts")
child = Item.new("Briess", "Base Grains", parent)
j = ActiveSupport::JSON
#json_string = parent.to_json(:only => [:description, :name])
json_string = parent.to_json
puts json_string
json_string = child.to_json
puts json_string
