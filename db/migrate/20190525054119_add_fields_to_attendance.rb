class AddFieldsToAttendance < ActiveRecord::Migration[5.2]
  def change
    add_column :attendances, :start_time, :datetime
    add_column :attendances, :end_time, :datetime
    add_column :attendances, :total_price, :integer
    add_column :attendances, :approve_status, :boolean
    add_column :attendances, :payment_status, :boolean
  end
end
