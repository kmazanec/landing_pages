class LandingController < ApplicationController

  def index
    @host = request.host
    @user = User.new
    case @host
    when "www.adoptacoder.org"
      render :adopt_a_coder
    when "sleepy-fjord-9426.herokuapp.com"
      render :adopt_a_coder
    when "keithmazanec.com"
      render :keithmazanec
    when "localhost"
      render :keithmazanec
    else
      render :error
    end
  end

end