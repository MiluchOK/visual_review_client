describe 'Suite' do
  it 'should get all suites' do
    body = VisualReview::Suite.get_all(4)
    expect(body).not_to be_nil
    expect(body).not_to be_empty
  end

  it 'should get a suite' do
    body = VisualReview::Suite.get(4, 5)
    expect(body).not_to be_nil
    expect(body).not_to be_empty
    expect(body).not_to eq 'Resource not found.'
  end

  # it 'should get a suite status' do
  #   body = VisualReview::Suite.get_status(4, 5)
  #   expect(body).not_to be_nil
  #   expect(body).not_to be_empty
  #   expect(body).not_to eq 'Resource not found.'
  # end
end