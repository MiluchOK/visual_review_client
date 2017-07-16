require 'httpclient'
require 'jsonclient'
require "visual_review/version"
require "visual_review/client"

module VisualReview
  class << self
    def setup(options={})
      VisualReview.client = VisualReview::Client.new(options)
    end

    def client=(new_client)
      Thread.current[:visual_review_client] = new_client
    end

    def client
      Thread.current[:visual_review_client]
    end
  end
end
