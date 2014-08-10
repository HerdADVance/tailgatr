class AddColorsToSchools < ActiveRecord::Migration
  def change
    add_column :schools, :pcolor, :string

    add_column :schools, :scolor, :string
  end
end
