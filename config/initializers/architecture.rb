class Fixnum
  def self.to_feet_and_inches
    "#{self / 12}'-#{self % 12}\""
  end
end