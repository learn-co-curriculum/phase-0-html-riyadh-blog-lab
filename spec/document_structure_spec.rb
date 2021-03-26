RSpec.describe "Well-Formed HTML Document" do
  # The goal is to use the W3C Validator to ensure the content is valid.
  # This is an early stage lab and students aren't used to HTML debugging via
  # test suite. We use this to activate `learn`

  it 'has a valid document structure' do
    index_file_found = File.exists?("index.html")
    expect(index_file_found).to be, "Make sure you have an index.html file"
  end

  context 'within <body>' do
      it 'the wrapper class section contains the correct header sizes and text content' do
        title_box = parsed_html.search('.wrapper').first

        expect(title_box.children.any? {|ch| ch.name == "h1"}).to be == true, "No 'h1' tag(s) found"
        expect(title_box.children.select {|ch| ch.name == "h1"}.first.children.first.text).to be == "Welcome to Riyadh", "Your 'h1' tag should contain the text 'Welcome to Riyadh'"

        expect(title_box.children.any? {|ch| ch.name == "h2"}).to be == true, "No 'h2' tag found"
        expect(title_box.children.select {|ch| ch.name == "h2"}.first.children.first.text).to be == "Where A Traditional Past Meets A Modern Future.", "Your 'h2' tag should contain the text 'Where A Traditional Past Meets A Modern Future.'"

      end


      it 'the content section contains the correct header sizes, text content, links and images' do
        content_section = parsed_html.search('#content').first

        expect(content_section.children.any? {|ch| ch.name == "h3"}).to be == true, "No 'h3' tags found"
        headers = content_section.children.select {|ch| ch.name == "h3"}
        expect(headers.length).to be >= 3, "Make sure to include all three 'h3' tags"
        expect(headers[0].children[0].text).to eq("Travel")
        expect(headers[1].children[0].text).to eq("History")
        expect(headers[2].children[0].text).to eq("Sources")

        expect(content_section.children.any? {|ch| ch.name == "p"}).to be == true, "No 'p' tags found"
        paragraphs = content_section.children.select {|ch| ch.name == "p"}
        expect(paragraphs.length).to be >= 3, "Make sure to include all three 'p' tags"
        expect(paragraphs[0].children[0].text).to match(/Once a mudbrick waystation/)
        expect(paragraphs[1].children[0].text).to match(/Riyadh/)
        expect(paragraphs[2].children[0].text).to match(/The city is divided into 15 municipal districts/)

        expect(content_section.children.any? {|ch| ch.name == "img"}).to be == true, "No 'img' tags found"
        images = content_section.children.select {|ch| ch.name == "img"}
        expect(images.length).to be >= 3, "Make sure to include all three 'img' tags"
        expect(images[0].attributes["src"].value).to eq("./images/transportation/transit.jpg")
        expect(images[1].attributes["src"].value).to eq("./images/garden.jpg")
        expect(images[2].attributes["src"].value).to eq("./images/transportation/camels-in-truck.jpg")

        expect(content_section.children.any? {|ch| ch.name == "a"}).to be == true, "No 'a' tags found"
        links = content_section.children.select {|ch| ch.name == "a"}
        expect(links.length).to be >= 2, "Make sure to include both 'a' tags"
        expect(links[0].attributes["href"].value).to eq("http://www.lonelyplanet.com/saudi-arabia/riyadh")
        expect(links[1].attributes["href"].value).to eq("http://en.wikipedia.org/wiki/Riyadh")
      
      end

  end

end
