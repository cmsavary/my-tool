class CreateTools < ActiveRecord::Migration[7.0]
  def change
    create_table :tools do |t|
      t.string :detail
      t.integer :price

      t.timestamps
    end
  end
end
