class Lead < ApplicationRecord

  belongs_to :company
  has_many :company_leads

  validates :name, presence: true
  validates :contact, inclusion: { in: [true, false] }
end
