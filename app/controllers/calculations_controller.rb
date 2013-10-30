class CalculationsController < ApplicationController
  def home
  	@siggn = params["number"].to_i
  end

  def sqrt
    @the_number = params[:number].to_f
    @answer = Math.sqrt(@the_number)
  end

  def pmt
  	@rate = params["interest_rate"].to_i
  	@num = params["number_of_payments"].to_i
  	@pv = params["present_value"].to_i
  	@payment = @pv*@rate/1200*(1+(@rate/1200))**@num/(1+@rate/1200)**@num-1
  end
end
