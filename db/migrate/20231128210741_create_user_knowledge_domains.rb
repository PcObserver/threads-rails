class CreateUserKnowledgeDomains < ActiveRecord::Migration[7.1]
  def change
    create_table :user_knowledge_domains, id: :uuid do |t|
      t.references :user, null: false, foreign_key: true, type: :uuid
      t.references :knowledge_domain, null: false, foreign_key: true, type: :uuid
      t.integer :stars, null: false, default: 0

      t.timestamps
    end
  end
end
