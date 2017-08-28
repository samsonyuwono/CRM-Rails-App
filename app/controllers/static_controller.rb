class StaticController < ApplicationController
  before_action :authenticate_user!, only: [:customers]

  def home
  end

  def customers
    @customers= current_user.customers
  end

end
