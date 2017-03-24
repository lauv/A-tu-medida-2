class CreateWorks < ActiveRecord::Migration[5.0]
  def change
    create_table :works do |t|
      t.float :price
      t.integer :status
      t.date :start_date
      t.date :end_date
      t.text :description
      t.integer :designer_id
      t.references :user, foreign_key: true

      t.timestamps
    end
    add_foreign_key :works, :users, column: :designer_id
  end
end



#Para agregar el designer id como referencia de user id se creó el designer id como int y luego se agrego la referencia foreign key