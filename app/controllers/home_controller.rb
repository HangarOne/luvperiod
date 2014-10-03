class HomeController < ApplicationController
  require 'mandrill'
  
  def index
    m = Mandrill::API.new("QIgR39zZpAEqcMbtgjDDYw") # All official Mandrill API clients will automatically pull your API key from the environment
    UserMailer.welcome_email.deliver
  end
end
