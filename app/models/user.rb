class User < ApplicationRecord  
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_one :cart, dependent: :destroy
  has_many :orders
  
  after_create :welcome_send, :create_cart

  def welcome_send
    UserMailer.welcome_email(self).deliver_now
  end
  def first_name
    self[:first_name]
  end
  def last_name
    self[:last_name]
  end

  def create_cart
    Cart.create(user: self)
  end
end


