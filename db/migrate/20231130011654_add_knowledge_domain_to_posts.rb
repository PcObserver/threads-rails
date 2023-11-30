class AddKnowledgeDomainToPosts < ActiveRecord::Migration[7.1]
  def change
    add_reference :posts, :knowledge_domain, null: false, foreign_key: true, type: :uuid
  end
end
