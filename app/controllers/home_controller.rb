class HomeController < ApplicationController
  require 'mandrill'
  
  def index
    #m = Mandrill::API.new("QIgR39zZpAEqcMbtgjDDYw")
  end
  
  def email
    #raise params[:email].to_yaml
    UserMailer.welcome_email(params[:email]).deliver
    redirect_to :root
  end
  
  def charity
    
  end
  
  
end
