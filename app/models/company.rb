class Company < ApplicationRecord
  belongs_to :user
  has_many :company_leads
  has_many :leads, through: :company_leads


  accepts_nested_attributes_for :leads


end
