class User < ApplicationRecord
  rolify :before_add => :before_add_method
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  before_create :generate_authentication_token

  after_create :assign_default_role

  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable, 
         :omniauthable, omniauth_providers: [:google_oauth2]

  has_many :reserves
  
  def before_add_method(role)
    # do something before it gets added
  end

 

  def assign_default_role
    self.add_role(:user) if self.roles.blank?
  end

  def generate_authentication_token
    self.authentication_token = Devise.friendly_token
  end

  # 找到user的話就登入，找不到就create新的user
  def self.create_from_provider_data(provider_data)
    where(email: provider_data.info.email).first_or_create do |user|
      user.email = provider_data.info.email
      user.password = Devise.friendly_token[0, 20]
      user.name = provider_data.info.last_name
      user.provider = provider_data.provider
      user.uid = provider_data.uid
    end
  end

end
