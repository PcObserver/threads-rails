class KnowledgeDomain < ApplicationRecord
  has_many :user_knowledge_domains, dependent: :restrict_with_error
  has_many :users, through: :user_knowledge_domains
end
