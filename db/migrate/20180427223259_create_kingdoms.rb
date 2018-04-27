class CreateKingdoms < ActiveRecord::Migration[5.1]
  def change
    create_table :kingdoms do |t|
      t.string :name
      t.text :description
      t.numeric :gold
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
