class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable, :omniauthable,
         :recoverable, :rememberable, :trackable, :validatable,
          :omniauthable, omniauth_providers: [:google_oauth2]

    has_many :companies
    has_many :leads, through: :company_leads


    validates :username, presence: true

    def self.from_omniauth(access_token)
      def self.find_for_google_oauth2(access_token, signed_in_resource=nil)
      data = access_token.info
      user = User.where(:provider => access_token.provider, :uid => access_token.uid ).first
      if user
        return user
      else
        registered_user = User.where(:email => access_token.info.email).first
        if registered_user
          return registered_user
        else
          user = User.create(name: data["name"],
            provider:access_token.provider,
            email: data["email"],
            uid: access_token.uid ,
            password: Devise.friendly_token[0,20],
          )
        end
     end
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
