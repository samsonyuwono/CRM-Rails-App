class Lead < ApplicationRecord

  belongs_to :company, optional: true
  has_many :companies, through: :company_leads

  validates :name, presence: true
end
