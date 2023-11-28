class CreateKnowledgeDomains < ActiveRecord::Migration[7.1]
  def change
    create_table :knowledge_domains, id: :uuid do |t|
      t.string :name

      t.timestamps
    end
  end
end
