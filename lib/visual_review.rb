require 'httpclient'
require 'jsonclient'
require "visual_review/version"
require "visual_review/client"
require "visual_review/models/project"
require "visual_review/models/run"
require "visual_review/models/suite"
require "visual_review/models/screenshot"

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
