class UserKnowledgeDomainVote < ApplicationRecord
  belongs_to :voter
  belongs_to :user_knowledge_domain
end
