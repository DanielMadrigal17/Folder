class CreateTechnologies < ActiveRecord::Migration[7.0]
  def change
    create_table :technologies do |t|
      t.string :Name

      t.timestamps
    end
  end
end
