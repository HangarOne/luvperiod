class UserMailer < ActionMailer::Base
  default from: "info@luvperiod.ca"
  
  def welcome_email(email)
      @email = email
      mail(to: @email, subject: 'Welcome to #Luv.')
  end
    
end
