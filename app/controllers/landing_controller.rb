class LandingController < ApplicationController

  def index
    @host = request.host
    @user = User.new
    case @host
    when "www.adoptacoder.org"
      render :adopt_a_coder
    when "sleepy-fjord-9426.herokuapp.com"
      render :adopt_a_coder
    when "www.keithmazanec.com" || "keithmazanec.com"
      render :keithmazanec
    when "www.devforward.org" || "www.devforward.com"
      render :dev_forward
    when "localhost"
      render :dev_forward
    else
      render :error
    end
  end

end