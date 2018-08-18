class CreateMostMentions < ActiveRecord::Migration[5.2]
  def change
    create_table :most_mentions do |t|
      t.integer   :followers_count
      t.string    :screen_name
      t.string    :profile_link
      t.datetime  :created_at
      t.string    :link
      t.integer   :retweet_count
      t.string    :text
      t.integer   :favourite_count

      t.timestamps
    end
  end
end
