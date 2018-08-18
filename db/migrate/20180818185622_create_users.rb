class CreateUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :users do |t|
      t.string :screen_name
      t.integer :followers_count
      t.string  :profile_link
      t.timestamps
    end
  end
end
