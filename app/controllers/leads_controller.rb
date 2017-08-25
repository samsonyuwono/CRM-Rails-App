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
    @lead = Lead.new(lead_params)
    @lead.company_ids = params[:company_id]
    if @lead.save
      redirect_to company_path(@company)
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
    if @lead.update(lead_params)
      redirect_to company_lead_path(@company)
    else
      render :edit
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
