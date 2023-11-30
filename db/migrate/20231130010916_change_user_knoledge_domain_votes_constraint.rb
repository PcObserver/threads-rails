class ChangeUserKnoledgeDomainVotesConstraint < ActiveRecord::Migration[7.1]
  def change
    remove_foreign_key :user_knowledge_domain_votes, :user_knowledge_domains
    add_foreign_key :user_knowledge_domain_votes, :user_knowledge_domains, on_delete: :cascade
  end
end
