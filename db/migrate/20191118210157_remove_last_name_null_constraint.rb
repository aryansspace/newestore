class RemoveLastNameNullConstraint < ActiveRecord::Migration[6.0]
  def change
    change_column :orders, :last_name, :string, :null => true
  end
end
