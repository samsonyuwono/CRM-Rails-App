class LeadsController < ApplicationController
    before_action :authenticate_user!

  def new
    @lead= Lead.new
  end

  def create
    @lead = Lead.new(lead_params)
    # @lead.company_ids = params[:company_id]
    binding.pry
    if @lead.save
      redirect_to lead_path(@lead)
    else
      render :new
    end
  end

  def show
    if current_lead
      @lead = @company.leads.find(params[:id])
      render :show
    end
  end

  def edit
    if current_lead
      render :edit
    end
  end

  def update
    if current_lead.current_user
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
    @company= Company.find_by(id: :lead_id)
    # @w= Company.find_by(id: 10)
    # @lead = @company.leads.find(params[:id])
 #@w.leads.find(11)
  end


end
