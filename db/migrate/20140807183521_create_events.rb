class CreateEvents < ActiveRecord::Migration
  def change
    create_table :events do |t|
      t.string :name
      t.datetime :date
      t.text :description
      t.belongs_to :tailgate

      t.timestamps
    end
  end
end
