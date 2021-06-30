describe Space do

  it 'adds a space to the database' do
    space = Space.create(name: 'London apartment', description: 'awesome', price: '500')
    expect(space.name).to eq('London apartment')
  end
end







# describe '.create' do
#   it 'creates a new bookmark' do
#     bookmark = Bookmark.create(url: 'http://www.testbookmark.com', title: 'Test Bookmark')
#     persisted_data = persisted_data(id: bookmark.id)

#     expect(bookmark).to be_a Bookmark
#     expect(bookmark.id).to eq persisted_data['id']
#     expect(bookmark.title).to eq 'Test Bookmark'
#     expect(bookmark.url).to eq 'http://www.testbookmark.com'
#   end
# end