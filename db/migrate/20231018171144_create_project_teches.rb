class CreateProjectTeches < ActiveRecord::Migration[7.0]
  def change
    create_table :project_teches do |t|
      t.references :Technology, null: false, foreign_key: true
      t.references :Projects, null: false, foreign_key: true

      t.timestamps
    end
  end
end
