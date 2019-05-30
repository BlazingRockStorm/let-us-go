class CreateJoinTableTagSearch < ActiveRecord::Migration[5.2]
  def change
    create_join_table :tags, :searches do |t|
      # t.index [:tag_id, :search_id]
      # t.index [:search_id, :tag_id]
    end
  end
end
