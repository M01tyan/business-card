class CreateVisitCompanies < ActiveRecord::Migration[5.2]
  def change
    create_table :visit_companies do |t|
      t.string :company
      t.string :name

      t.timestamps
    end
  end
end
