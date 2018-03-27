class CustomersController < ApplicationController
  def index
    @customers = Customer.all
  end

  def alphebetized
    @customers = Customer.order(:full_name)
  end

  def missing_email
    @customers = Customer.where(:email_address => "")
  end
end
