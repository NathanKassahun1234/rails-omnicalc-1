class CalculationsController < ApplicationController
  def new_square; end

  def square_result
    @number = params[:number].to_f
    @square = @number ** 2
  end

  def new_square_root; end

  def square_root_result
    @number = params[:number].to_f
    @square_root = Math.sqrt(@number)
  end

  def new_payment; end

  def payment_result
    principal = params[:principal].to_f
    apr = params[:apr].to_f / 100
    years = params[:years].to_i

    monthly_rate = apr / 12
    months = years * 12
    @monthly_payment = principal * (monthly_rate / (1 - (1 + monthly_rate)**-months))
  end

  def new_random; end

  def random_result
    min = params[:min].to_i
    max = params[:max].to_i
    @random_number = rand(min..max)
  end
end
