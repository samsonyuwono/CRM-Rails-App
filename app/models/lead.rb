class Lead < ApplicationRecord

  belongs_to :company
  has_many :company_leads

end
