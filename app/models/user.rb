class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, # :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  def save_as_admin!
    self.admin = true
    save!
  end

  def active_for_authentication?
    super && self.admin?
  end
end
