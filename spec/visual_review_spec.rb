require 'spec_helper'

describe "VisualReview" do
  it 'should be able to specify server info' do
    expect(VisualReview.client.class).to eq VisualReview::Client
  end
end