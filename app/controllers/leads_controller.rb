class LeadsController < ApplicationController

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

  def show
    if current_lead
      render :show
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

  def destroy
    if current_lead
      @lead.delete
      redirect_to companies_path
    end
  end

  private

  def lead_params
    params.require(:lead).permit(:name, :contact, :email, :phone_number)
  end

  def current_lead
    @lead = Lead.find_by(id: params[:id])
  end


end
