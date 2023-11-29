class UserKnowledgeDomain < ApplicationRecord
  belongs_to :user
  belongs_to :knowledge_domain

  has_many :user_knowledge_domain_votes
  has_many :voters, class_name: 'User', through: :user_knowledge_domain_votes
end
