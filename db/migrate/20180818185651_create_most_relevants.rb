class CreateMostRelevants < ActiveRecord::Migration[5.2]
  def change
    create_table :most_relevants do |t|

      t.timestamps
    end
  end
end
