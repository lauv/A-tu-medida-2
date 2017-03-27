class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  enum role: [ :client, :designer, :guest, :admin ]
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable,
         :omniauthable, omniauth_providers: [:facebook]
  has_many :category_user
  has_many :user_membership
  has_one :portfolio
  after_initialize :init
  after_create :send_welcome_email

  def init
    self.role ||= :client           #will set the default value only if it's nil
  end



  def self.find_for_facebook_oauth(auth)
   user = User.where(provider: auth.provider, uid: auth.uid).first
   # The User was found in our database
   return user if user
   # Check if the User is already registered without Facebook
   user = User.where(email: auth.info.email).first
   return user if user
   User.create(
       name: auth.extra.raw_info.name,
       provider: auth.provider, uid: auth.uid,
       email: auth.info.email,
       password: Devise.friendly_token[0,20])
 end

 private

 def send_welcome_email
  UserMailer.welcome_email(self).deliver_now()
 end
end
