class CreateSchools < ActiveRecord::Migration
  def change
    create_table :schools do |t|
      t.string :name
      t.string :latlng
      t.string :city
      t.string :state
      t.string :conference
      t.string :image

      t.timestamps
    end
  end
end
