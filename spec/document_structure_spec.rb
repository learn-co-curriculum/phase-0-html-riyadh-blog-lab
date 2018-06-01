RSpec.describe "Well-Formed HTML Document" do
  # The goal is to use the W3C Validator to ensure the content is valid.
  # This is an early stage lab and students aren't used to HTML debugging via
  # test suite. We use this to activate `learn`

  it 'has a valid document structure' do
    index_file_found = File.exists?("index.html")
    expect(index_file_found).to be, "Make sure you have an index.html file"
  end
end
