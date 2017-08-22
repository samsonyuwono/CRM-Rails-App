class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable, :omniauthable,
         :recoverable, :rememberable, :trackable, :validatable,
          :omniauthable, omniauth_providers: [:facebook]

    has_many :companies
    has_many :leads, through: :companies

    # has_and_belongs_to_many :oauth_credentials

    validates :username, presence: true

    def self.from_omniauth(auth)
      where(provider: auth.provider, uid: auth.uid).
      first_or_create do |user|
        user.email = auth.info.email
        user.password = Devise.friendly_token[0,20]
      end
    end


  #   def total_revenue
  #     @total= 0
  #     self.company.each do |i|
  #       @total += i.self.revenue
  #   end
  #   @total
  # end
end
