class CalculationsController < ApplicationController
  def home
  	@siggn = params["number"].to_i
  end

  def sqrt
    @the_number = params[:number].to_f
    @answer = Math.sqrt(@the_number)
  end

  def pmt
  end
end
