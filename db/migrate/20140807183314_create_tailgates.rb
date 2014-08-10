class CreateTailgates < ActiveRecord::Migration
  def change
    create_table :tailgates do |t|
      t.string :name
      t.string :latlng
      t.string :location
      t.text :description
      t.string :youtube
      t.belongs_to :school
      t.belongs_to :user

      t.timestamps
    end
  end
end
