class LeadsController < ApplicationController


  def show
    @lead = Lead.find(params[:id])
  end

  def new
    @lead= Lead.new
  end

  def create
    @lead = Lead.new(lead_params)
    if @lead.save
      redirect_to lead_path(@lead)
    else
      render :new
    end
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
