class CreateTagmaps < ActiveRecord::Migration[6.1]
  def change
    create_table :tagmaps do |t|
      t.integer :post_id, null: false, foreign_key: true
      t.integer :tag_id, null: false, foreign_key: true

      t.timestamps
    end
  end
end
