class CreateDesignerApplications < ActiveRecord::Migration[5.0]
  def change
    create_table :designer_applications do |t|
      t.string :name
      t.date :birthday
      t.string :rut
      t.string :email
      t.string :address
      t.string :education_level
      t.string :degree
      t.integer :years_of_experience
      t.text :about
      t.integer :status

      t.timestamps
    end
  end
end
