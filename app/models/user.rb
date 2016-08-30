class User < ActiveRecord::Base
  include DeviseTokenAuth::Concerns::User

  devise :database_authenticatable, :registerable,
          :recoverable, :rememberable, :trackable, :validatable

  has_many :tasks
end
