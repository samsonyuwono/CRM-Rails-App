class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable, :omniauthable,
         :recoverable, :rememberable, :trackable, :validatable

    has_many :companies
    has_many :leads, through: :companies

    # has_and_belongs_to_many :oauth_credentials

    validates :username, presence: true

  #   def total_revenue
  #     @total= 0
  #     self.company.each do |i|
  #       @total += i.self.revenue
  #   end
  #   @total
  # end
end
