module ApplicationHelper
  def to_feet_and_inches(inches)
  	inches < 12 ? "#{architectural_inches(inches)}" : "#{inches / 12}'-#{architectural_inches(inches)}"
  end

  def architectural_inches(inches)
  	str_inches = inches.to_s
  	precision = case str_inches.split(".")[1]
  				when "25"
  					"-1/4\""
  				when "5"
  					"-1/2\""
  				when "75"
  					"-3/4\""
  				else
  					"\""
  				end
  	"#{inches.to_i % 12}#{precision}"
  end
end
