class CreateUserKnowledgeDomainVotes < ActiveRecord::Migration[7.1]
  def change
    create_table :user_knowledge_domain_votes, id: :uuid do |t|
      t.references :voter, null: false, foreign_key: { to_table: :users }, type: :uuid
      t.references :user_knowledge_domain, null: false, foreign_key: true, type: :uuid

      t.timestamps
    end
  end
end
