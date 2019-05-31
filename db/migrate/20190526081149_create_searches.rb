class CreateSearches < ActiveRecord::Migration[5.2]
  def change
    create_table :searches do |t|
      t.string :name
      t.integer :status
      t.integer :sex
      t.integer :min_age
      t.integer :max_age
      t.decimal :min_adult_price
      t.decimal :max_adult_price
      t.decimal :min_child_price
      t.decimal :max_child_price

      t.timestamps
    end
  end
end
