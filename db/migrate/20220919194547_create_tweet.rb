class CreateTweet < ActiveRecord::Migration[7.0]
  def change
    create_table :tweets do |t|
      t.string :monster
      t.text :tweet_content

      t.timestamps
    end
  end
end
