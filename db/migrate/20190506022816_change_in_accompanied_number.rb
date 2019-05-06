class ChangeInAccompaniedNumber < ActiveRecord::Migration[5.2]
  def change
    remove_column :attendances, :accompanied_number
    add_column :attendances, :adults_number, :integer
    add_column :attendances, :children_number, :integer
  end
end
