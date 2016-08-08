class User < ActiveRecord::Base

  validates :first_name, presence: true
  validates :last_name, presence: true
  validates_uniqueness_of :email, :case_sensitive => false
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
end
