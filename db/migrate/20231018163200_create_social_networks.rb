class CreateSocialNetworks < ActiveRecord::Migration[7.0]
  def change
    create_table :social_networks do |t|
      t.string :url

      t.timestamps
    end
  end
end
