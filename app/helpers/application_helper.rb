module ApplicationHelper
  def to_feet_and_inches(inches)
    "#{inches / 12}'-#{inches % 12}\""
  end
end
