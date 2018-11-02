class ClientController < ApplicationController
    
    def home
        require 'twitter'
        client = Twitter::REST::Client.new do |config|
            config.consumer_key = "dJaGLikNUVQN8f8JMKs9rqY9k"
            config.consumer_secret = "sGNrb28QTMe41K1lfDgYYeUKFVtJ6MCpj4mCWo4m1Zcc7vc7LD"
            config.access_token = "866054735882842112-eV3q0dG3AHGqxaQHbXAZDfndVf8qwkB"
            config.access_token_secret = "rAS2pKxnv9gyN98X2JgOw74mwEaURhIEx6Diz4cZqc6wX"
      end
    end
end