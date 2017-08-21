class CompaniesController < ApplicationController

  def index
   @companies = Company.all
 end

 def new
   @company = Company.new
 end

 def create
   @company = Company.new(company_params)
   if @company.save
     redirect_to company_path(@company)
   else
     render :new
   end
 end

 def show
   @company = Company.find(params[:id])
 end

 def edit
   @company = Company.find(params[:id])
 end

 def update
   @company = Company.find(params[:id])
    @company.update(company_params)
    redirect_to company_path
 end

 private

 def company_params
   params.require(:company).permit(:name, :revenue, :customer)
 end

 def current_company
   @company = Company.find(params[:id])
 end
end
