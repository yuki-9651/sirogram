class CreateCastles < ActiveRecord::Migration[6.1]
  def change
    create_table :castles do |t|
      t.string :name
      t.float :latitude
      t.float :longitude
      t.string :url

      t.timestamps
    end
  end
end
