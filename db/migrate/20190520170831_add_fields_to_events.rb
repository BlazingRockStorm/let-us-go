class AddFieldsToEvents < ActiveRecord::Migration[5.2]
  def change
    remove_column :events, :start
    remove_column :events, :end
    add_column :events, :indoor_status, :string
    add_column :events, :sex_status, :string
    add_column :events, :adult_price, :integer
    add_column :events, :child_price, :integer
  end
end
