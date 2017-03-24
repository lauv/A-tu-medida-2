class CreateUserMemberships < ActiveRecord::Migration[5.0]
  def change
    create_table :user_memberships do |t|
      t.date :start_date
      t.string :end_date
      t.references :user, foreign_key: true
      t.references :membership, foreign_key: true

      t.timestamps
    end
  end
end
