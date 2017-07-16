module VisualReview
  class Client
    def initialize(options = {})
      @host = options[:host]
      @port = options[:port]
      set_connection
    end

    private
    def set_connection
      @connection = HTTPClient.new
      @connection.base_url = "#{@host}:#{@port}"
    end
  end
end
