describe 'Run' do
  it 'should initiate a run' do
    body = VisualReview::Run.create('ToGet', 'LoloRun')
    expect(body['suiteId']).not_to be_nil
  end

  it 'should get a run' do
    body = VisualReview::Run.get('6')
    expect(body).not_to be_nil
    expect(body['id']).not_to be_nil
  end
end