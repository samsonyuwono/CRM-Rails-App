class Company < ApplicationRecord
  has_many :leads
  belongs_to :user

  accepts_nested_attributes_for :leads


end
