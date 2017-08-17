class StaticController < ApplicationController

  def home
  end

  def index
    @companies = Company.all
  end
end
