class GameController < ApplicationController
  def home
    render({:template => "my_templates/home"})
  end

  def square_new
    render({:template => "my_templates/square_new"})
  end

  def square
    @the_num = params.fetch("user_number").to_f
    @the_result = @the_num ** 2
  
    render({:template => "my_templates/square_results"})
  end

  def sqrt_new
    render({:template => "my_templates/sqrt_new"})
  end

  def sqrt
    @num = params.fetch("user_number").to_f

    @result = @num ** 0.5
    render({:template => "my_templates/sqrt_results"})
  end

  def payment_new
    render({:template => "my_templates/payment_new"})
  end

  def payment
    @yr = params.fetch("user_years").to_f
    @n = @yr * 12
    @apr = params.fetch("user_apr").to_f/100
    @r = @apr/12
    @pv = params.fetch("user_pv").to_f
    @numerator = @r * @pv
    @d1 = 1+ @r
    @d2 = -@n
    @denom = 1 - @d1 ** @d2
  
    @result = @numerator/@denom

    render({:template => "my_templates/payment_results"})
  end

  def random_new
    render({:template => "my_templates/random_new"})
  end

  def random
    @min = params.fetch("user_min").to_f
    @max = params.fetch("user_max").to_f
  
    @result = rand(@min..@max)
    @random = @result.to_f

    render({:template => "my_templates/random_results"})
  end
end
