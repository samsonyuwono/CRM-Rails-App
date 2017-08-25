class LeadsController < ApplicationController
    before_action :authenticate_user!
    before_action :current_company

  def index
    @leads = Lead.all
  end

  def new
    @lead= @company.leads.build
  end

  def create
    # binding.pry
    # @company = Company.find(params[:company_id])
    @lead= @company.leads.build
    @lead = Lead.new(lead_params)
    if @lead.save
      redirect_to home_path
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

  def current_company
    @company= Company.find_by(id: params[:company_id])
  end


end
