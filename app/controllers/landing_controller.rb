class LandingController < ApplicationController

  def index
    @host = request.host
    case @host
    when "www.adoptacoder.org"
      render :adopt_a_coder
    when "keithmazanec.com"
      redirect_to keithmazanec_path
    when "localhost"
      render :adopt_a_coder
    else
      redirect_to keithmazanec_path
    end
  end

  def adopt_a_coder
    @host = request.host
  end

end