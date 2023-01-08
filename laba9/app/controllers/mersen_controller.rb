class MersenController < ApplicationController
  before_action :raise_error, only: [:show]
  def input; end
  
  def is_prime(num)
    (2..(num - 1)).each do |n|
      return false if num % n == 0
    end
    true
  end
  def shows(v1)
    k = 2 ** ((v1.to_s(2)).length - 1)
    l = (Math.log(k)/Math.log(2)).to_i
    prime_array = []
    (1..l).each do |i|
      if is_prime(i) == true
        prime_array << i
      end
    end
    resul = []
    (0...prime_array.length).each do |i|
        if is_prime(2**prime_array[i] - 1) == true
            resul << (2**prime_array[i] - 1)
        end
    end
    return resul
  end
  def show
    @result = shows(params[:n].to_i)
    respond_to do |format|
      format.html
      format.js 
    end
  end
  def raise_error
    if params[:n].nil? || params[:n].empty?
      flash[:error] = 'Параметры не должны быть пустыми.'
      redirect_to root_path
    end
  end
end 