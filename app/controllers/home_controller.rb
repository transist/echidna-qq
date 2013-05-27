class HomeController < ApplicationController
  def index
    redirect_to '/friends' if user_signed_in?
  end
end
