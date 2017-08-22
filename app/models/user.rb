class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable, :omniauthable,
         :recoverable, :rememberable, :trackable, :validatable,
          :omniauthable, omniauth_providers: [:google_oauth2]

    has_many :companies
    has_many :leads, through: :companies

    # has_and_belongs_to_many :oauth_credentials

    validates :username, presence: true

    def self.from_omniauth(access_token)
      data = access_token.info
      user = User.where(email: data['email']).first
        unless user
           user = User.create(name: data['name'],
           email: data['email'],
           password: Devise.friendly_token[0,20]
           )
      end
      user
    end


  #   def total_revenue
  #     @total= 0
  #     self.company.each do |i|
  #       @total += i.self.revenue
  #   end
  #   @total
  # end
end
