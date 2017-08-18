class Lead < ApplicationRecord
  belongs_to :users
  belongs_to :company

end
