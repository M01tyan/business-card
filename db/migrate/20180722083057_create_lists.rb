class CreateLists < ActiveRecord::Migration[5.2]
  def change
    create_table :lists do |t|
      t.string :of
      t.string :visiting
      t.string :companies
      t.string :company
      t.string :name

      t.timestamps
    end
  end
end
