require 'rubygems'
require  'pry'
class Project
	attr_accessor :name,:email,:phone
	# ADD NAME
  def val_name
    if @name==""
			print "Please Enter Data :"
			@name=gets().chomp!
			val_name
		elsif (@name.match(/^[a-zA-Z \s]*$/)) && @name.length<=50
			   puts"Your Name is : #{name.upcase}"
        else
         print "Enter Valid Name :"
         @name=gets().chomp!
         val_name
    end
  end

  def val_email
    if @email==""
			print "Please Enter Data :"
			@email=gets().chomp! 
      val_email
		elsif @email.match(/^[a-z0-9._%+-]+@[a-z0-9.-]+\.[a-z]{2,4}$/)
         puts "Your Email_ID is : #{email}"
        else
         print "Enter Valid Email_ID :"
         @email=gets().chomp! 
         val_email
    end
  end
  def val_phone
    if @phone==""
			print "Please Enter Data :"
			@phone=gets().chomp! 
      val_phone 
		elsif @phone.match(/[0-9]/) && @phone.length==10 
         puts "Your Mobile Number is : #{phone}"
        else
         print "Enter Valid Mobile Number :"
         @phone=gets().chomp! 
         val_phone 
    end
  end
end
inst=Project.new
	print " 1) Enter Your Name : "
inst.name=gets().chomp!
inst.val_name
	print " 2) Enter Your Email_ID :"
inst.email=gets().chomp!
inst.val_email
	print " 3) Enter Your Mobile Number :"
inst.phone=gets().chomp!
inst.val_phone