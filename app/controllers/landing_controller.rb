class LandingController < ApplicationController

  def index
    @host = request.host
    case @host
    when "www.adoptacoder.org"
      render :adopt_a_coder
    when "keithmazanec.com"
      render :keithmazanec
    when "locahost"
      render :adopt_a_coder
    else
      render :error
    end
  end

  def adopt_a_coder
    @host = request.host
  end

end