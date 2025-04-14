class CreateWhishlists < ActiveRecord::Migration[7.1]
  def change
    create_table :whishlists do |t|
      t.references :user, null: false, foreign_key: true
      t.references :property, null: false, foreign_key: true

      t.timestamps
    end

    add_index :whishlists, [:user_id, :property_id], unique: true
  end
end
