class CreatePics < ActiveRecord::Migration
  def change
    create_table :pics do |t|
      t.string :image
      t.belongs_to :tailgate

      t.timestamps
    end
  end
end
