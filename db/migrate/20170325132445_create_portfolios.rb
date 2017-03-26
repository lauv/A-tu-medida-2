class CreatePortfolios < ActiveRecord::Migration[5.0]
  def change
    create_table :portfolios do |t|
      t.string :description
      t.string :photo1
      t.string :photo2
      t.string :photo3

      t.timestamps
    end
  end
end
