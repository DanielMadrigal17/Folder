class CreateUserTypes < ActiveRecord::Migration[7.0]
  def change
    create_table :user_types do |t|
      t.string :Name

      t.timestamps
    end
  end
end
