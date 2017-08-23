class Lead < ApplicationRecord

  belongs_to :company, optional: true
  has_many :companies, through: :company_leads

  validates :name, presence: true
  validates :email, presence: true
  validates :phone_number, length: {is: 8}, allow_blank: false
end
