module VisualReview
  class Client

    attr_reader :connection, :host, :port

    def initialize(options = {})
      @host = options[:host]
      @port = options[:port]
      set_connection
    end

    private
    def set_connection
      @connection = JSONClient.new
      @connection.base_url = "#{@host}:#{@port}"
    end
  end
end
