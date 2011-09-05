require 'active_support'

class Item
  def initialize(name, description, *parent )
    @name = name
    @description = description
    @parent = (parent.empty?) ? nil : parent

  end

  def to_s
    "Name = #{@name}"
  end

  def to_json (*a)
    {
      :name => @name,
      :description => @description,
      :parent => @parent
    }.to_json(*a)

  end


end

parent = Item.new("Grain", "Base and Specialty Malts")
child = Item.new("Briess", "Base Grains", parent)
j = ActiveSupport::JSON
#json_string = parent.to_json(:only => [:description, :name])
json_string = parent.to_json
puts json_string
json_string = child.to_json
puts json_string



