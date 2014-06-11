class TimesController < ApplicationController
  def main
  	@time = Time.new
  	# render "times/main" didn't need this, just put root on routes page
  end
end