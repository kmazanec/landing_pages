class LandingController < ApplicationController
  def adopt_a_coder
    @host = request.host
  end

end