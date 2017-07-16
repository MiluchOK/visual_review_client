require 'spec_helper'

describe "VisualReview" do
  it 'should be able to specify server info' do
    host = "http://example.com"
    port = 32769
    VisualReview.setup({
        host: host,
        port: port
    })
    expect(VisualReview.client.class).to eq VisualReview::Client
  end

  it 'should allow to call an api' do
    #Client usage example
    host = "http://localhost"
    port = 32769
    client = VisualReview.setup({
                           host: host,
                           port: port
                       })
    client.connection.get '/api/projects'
  end
end