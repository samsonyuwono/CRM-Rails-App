class LeadsController < ApplicationController
    before_action :authenticate_user!

  def new
    @lead= Lead.new
  end

  def create
    @company = Company.find(params[:company_id])
    binding.pry
    @lead = Lead.find_or_initialize_by(company: @company, user: current_user)
    if @lead.save
      redirect_to company_lead_path(@company)
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
    if current_lead.current_user
      @lead.update(lead_params)
      redirect_to company_lead_path(@company)
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
