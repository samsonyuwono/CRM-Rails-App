class CompaniesController < ApplicationController


  def index
   @companies = current_user.companies
 end

 def new
   @company= Company.new
  #  @company.leads.build
 end

 def create
   @company = User.find(current_user.id).companies.build(company_params)
   if @company.save
     redirect_to company_path(@company)
   else
     render :new
   end
 end

 def show
   if current_company
     render :show
   end
 end

 def edit
   if current_company
     render :edit
   end
 end

 def update
   if current_company
    @company.update(company_params)
    redirect_to company_path
  end
 end

 def destroy
   if current_company
    @company.delete
    redirect_to companies_path
  end
end

 private

 def company_params
   params.require(:company).permit(:name, :revenue, :customer, :user_id,
   leads_attributes: [:name, :contact, :phone_number, :email])
 end

 def current_company
   @company = Company.find(params[:id])
 end

end
