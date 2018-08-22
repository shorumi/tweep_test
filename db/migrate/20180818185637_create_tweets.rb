class CreateTweets < ActiveRecord::Migration[5.2]
  def change
    create_table :tweets do |t|
      t.integer     :retweets_count
      t.integer     :favourites_count
      t.string      :text, limit: 255
      t.datetime    :tweet_created_at
      t.string      :tweet_link
      t.integer     :tweet_external_id, null: false, unique: true
      t.belongs_to  :user, index: true

      t.timestamps
    end
  end
end
