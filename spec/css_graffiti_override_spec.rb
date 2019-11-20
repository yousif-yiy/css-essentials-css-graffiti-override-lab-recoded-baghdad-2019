RSpec.describe 'index.html' do
  it 'exists' do
    file = File.exists?("index.html")
    expect(file).to be_truthy, "The index.html file must exist"
  end
end

RSpec.describe 'css/cleanup.css' do
  it 'exists' do
    file = File.exists?("css/cleanup.css")
    expect(file).to be_truthy, "The cleanup.css file must exist"
  end

  it 'has overrides added' do
    minimum_bytes = 300
    size = File.size("css/cleanup.css")
    expect(size).to be > minimum_bytes, "You should have at least 300 bytes worth of updates to css/cleanup.css"
  end
end
