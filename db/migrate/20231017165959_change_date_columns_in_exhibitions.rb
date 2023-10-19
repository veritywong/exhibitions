class ChangeDateColumnsInExhibitions < ActiveRecord::Migration[7.1]
  def change
    change_column :exhibitions, :start_date, :string
    change_column :exhibitions, :end_date, :string
  end
end
