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





