class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  enum role: [ :client, :designer, :guest, :admin ]
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  has_many :category_user
  has_many :user_membership
  has_one :portfolio
  after_initialize :init
  after_create :send_welcome_email

  def init
    self.role ||= :client           #will set the default value only if it's nil
  end


 private

 def send_welcome_email
  UserMailer.welcome_email(self).deliver_now()
 end
end
