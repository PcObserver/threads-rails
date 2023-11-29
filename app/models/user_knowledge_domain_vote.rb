class UserKnowledgeDomainVote < ApplicationRecord
  belongs_to :voter, class_name: 'User'
  belongs_to :user_knowledge_domain
end
