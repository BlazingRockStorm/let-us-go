class ChangeDataTypesInEvents < ActiveRecord::Migration[5.2]
  def change
    change_column :events, :sex_status, :integer
    change_column :events, :indoor_status, :integer
  end
end
