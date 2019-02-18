class CreateGames < ActiveRecord::Migration[5.2]
  def change
    create_table :games do |t|
      t.string :name
      t.text :description
      t.string :state
      t.float :price
      t.references :buyer, foreign_key: { to_table: :users }
      t.date :transaction_date
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
