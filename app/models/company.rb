class Company < ApplicationRecord
  belongs_to :user
  has_many :company_leads
  has_many :leads, through: :company_leads

  validates :name, presence: true
  validates :revenue, numericality: { only_integer: true }
  validates :customer, inclusion: { in: [true, false] }

  accepts_nested_attributes_for :leads

  def self.most_revenue
    order("revenue desc").first
  end


end
