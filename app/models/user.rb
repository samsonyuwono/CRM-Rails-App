class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

    has_many :companies
    has_many :leads, :through=> :companies

    def total_revenue
      @total= 0
      self.company.each do |i|
        @total += i.self.revenue
    end
    @total
  end
end
