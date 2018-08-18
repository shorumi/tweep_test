class CreateMostMentions < ActiveRecord::Migration[5.2]
  def change
    create_table :most_mentions do |t|

      t.timestamps
    end
  end
end
