class AddProviderIdToEvent < ActiveRecord::Migration[5.2]
  def change
    add_column :events, :provider_id, :integer, foreign_key: true
  end
end
