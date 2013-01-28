require 'rubygems'
require 'pry'
require './Is_Blank'
class Contact
 attr_accessor :username,:phone,:email
 include IsBlank
 def name_is_valid?
 	 present?(@username) && (@username.match(/^[a-zA-Z \s]*$/)) ? true : false
 end 

 def email_is_valid?
 	present?(@email) && (@email.match(/^[a-z0-9._%+-]+@[a-z0-9.-]+\.[a-z]{2,4}$/)) ? true :false
 end
 def phone_is_valid?
 	present?(@phone) && (@phone.match(/^[0-9]/)) && (@phone.length==10) ? true : false
 end
 
 def validate?
 	(name_is_valid? && email_is_valid? && phone_is_valid?) ? true : false
 end
end

con=Contact.new
=begin
con.username="Gayatri"
p con.name_is_valid?
con.email="dhatrak_gayatri@yahoo.com"
p con.email_is_valid?
con.phone="1234567890"
p con.phone_is_valid?
=end
#binding pry