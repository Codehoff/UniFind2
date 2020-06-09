class User < ApplicationRecord
  has_many :applications, dependent: :destroy
  has_many :universities_programs, through: :applications
  has_many :notifications, through: :applications
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable, :trackable
end
