class LeadsController < ApplicationController

  def index
    @leads= Lead.all
  end

  def show
    @lead = Lead.find(params[:id])
  end

  def edit
    if current_lead
      render :edit
    end
  end

  def update
    if current_lead
      @lead.update(lead_params)
      redirect_to lead_path
    end
  end

  private

  def lead_params
    params.require(:lead).permit(:name, :contact)
  end

  def current_lead
    @lead = Lead.find(params[:id])
  end


end
