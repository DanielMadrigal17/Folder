class CreateTypesUsers < ActiveRecord::Migration[7.0]
  def change
    create_table :types_users do |t|
      t.references :Users, null: false, foreign_key: true
      t.references :UserTypes, null: false, foreign_key: true

      t.timestamps
    end
  end
end
