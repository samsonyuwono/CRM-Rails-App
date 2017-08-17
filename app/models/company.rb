class Company < ApplicationRecord
  has_many :leads
  belongs_to :user


end
