class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable,
         :trackable, :timeoutable, :confirmable

  has_many :user_knowledge_domains, dependent: :destroy
  has_many :knowledge_domains, through: :user_knowledge_domains

  has_many :user_knowledge_domain_votes

  validates :name, presence: true
end
