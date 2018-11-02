class Testimony < ActiveRecord::Base
    attr_accessor :content, :screen_name, :tweet_id
    
    def self.pull_tweets
        Twitter.favorites('GusBus64', count: 10).each do |tweet|
            unless exists?(tweet_id: tweet.id)
            create!(
                tweet_id: tweet.id,
                content: tweet.text,
                screen_name: tweet.user.screen_name,
                )
            end
        end
    end
end
