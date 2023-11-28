class CreateComments < ActiveRecord::Migration[7.1]
  def change
    create_table :comments, id: :uuid do |t|
      t.string :description
      t.references :post, null: false, foreign_key: { to_table: :posts }, type: :uuid
      t.references :author, null: false, foreign_key: { to_table: :users }, type: :uuid

      t.timestamps
    end
  end
end
