class LeadsController < ApplicationController

  def index
    @leads= Lead.all
  end

  def show
    @lead = Lead.find(params[:id])
  end

  private
  def company_params
    params.require(:lead).permit(:name, :contact)
  end
end
