class KnowledgeDomain < ApplicationRecord
  has_many :user_knowledge_domains, dependent: :restrict_with_error
  has_many :users, through: :user_knowledge_domains

  has_many :posts, dependent: :restrict_with_error

  def self.ransackable_attributes(auth_object = nil)
    %w[id name created_at]
  end

  def self.ransackable_associations(auth_object = nil)
    %w[users posts]
  end
end
