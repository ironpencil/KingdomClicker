class CreateKingdoms < ActiveRecord::Migration[5.1]
  def change
    create_table :kingdoms do |t|
      t.string :name
      t.string :description
      t.numeric :gold

      t.timestamps
    end
  end
end
