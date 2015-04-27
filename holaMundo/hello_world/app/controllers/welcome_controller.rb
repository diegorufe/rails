class WelcomeController < ApplicationController
  def index
  	@autor = "Diego"
  	@limite = 5
  	@mensage = "Rails"
  end
end
