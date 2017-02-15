class User < ApplicationRecord
  has_many :chat_rooms, dependent: :destroy
  has_many :messages, dependent: :destroy
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  def name
    email.split('@')[0]
  end

  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable


end
