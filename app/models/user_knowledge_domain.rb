class UserKnowledgeDomain < ApplicationRecord
  belongs_to :user
  belongs_to :knowledge_domain
end
