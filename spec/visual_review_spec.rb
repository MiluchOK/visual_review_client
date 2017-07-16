require 'spec_helper'

describe "VisualReview" do
  it 'should be able to specify server info' do
    host = "http://example.com"
    port = 7000
    VisualReview.setup({
        host: host,
        port: port
    })
    expect(VisualReview.client.class).to eq VisualReview::Client
  end
end