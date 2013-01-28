require './valid'
class Validation
	attr_accessor :contact
  details=""
	def initialize
   @contact=Contact.new
  end
 def name_input
 	puts "Enter Your Name"
  @contact.username=gets().chomp!
 end

 def email_input
 	puts "Enter Your Email_ID"
  @contact.email=gets().chomp!
 end

 def phone_input
 	puts "Enter Your Phone Number"
  @contact.phone=gets().chomp!
 end

 def display_information
  if(@contact.validate?)
   puts "TRUE"
   puts "Your details are : "
   puts "#{@contact.username}, #{@contact.phone}, #{@contact.email}"
  else
    puts "False...\n Enter Correct Details..."
  end
 end

end
val=Validation.new
val.name_input
val.email_input
val.phone_input
val.display_information