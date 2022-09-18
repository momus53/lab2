class Tweet < ApplicationRecord
    belongs_to :monster
    
    @tweet_content = ""

end