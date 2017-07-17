describe 'Screenshot' do
  it 'should add a screenshot to a run' do
    file = File.open('spec/fixtures/test_screenshot.png')
    body = VisualReview::Screenshot.add(25, file, {
        screenshotName: 'lol',
        meta: {},
        properties: {}
    })
    expect(body['imageId']).not_to be_nil
    expect(body['imageId']).not_to be_empty
  end

  it 'should get a screenshot' do
    body = VisualReview::Screenshot.get(25)
    expect(body).not_to be_nil
    expect(body).not_to be_empty
  end
end