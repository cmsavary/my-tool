class AddNameToTools < ActiveRecord::Migration[7.0]
  def change
    add_column :tools, :name, :string
  end
end
