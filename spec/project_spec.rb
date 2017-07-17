describe 'Project' do
  it 'should get all projects' do
    body = VisualReview::Project.get_all
    expect(body[0]['name']).to eq 'Dashboard'
  end

  it 'should get a project' do
    project = VisualReview::Project.get(4)
    expect(project['name']).to eq 'ToGet'
  end
end