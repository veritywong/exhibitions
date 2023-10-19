class CreateExhibitions < ActiveRecord::Migration[7.1]
  def change
    create_table :exhibitions do |t|
      t.string :title
      t.string :start_date
      t.string :end_date
      t.string :location
      t.string :image
      t.string :url

      t.timestamps
    end
  end
end
