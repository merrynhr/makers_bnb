describe Space do

  it 'adds a space to the database' do
    space = Space.create(name: 'London apartment', description: 'awesome', price: '500', date_avail: '2021-01-01', host_email: 'test@mail')
    expect(space.name).to eq('London apartment')
  end

  it 'filters a space by date range' do
    space = Space.create(name: 'London apartment', description: 'awesome', price: '500', date_avail: '2021-01-01', host_email: 'test@mail')
    space = Space.filter(date_avail: '2021-01-01')
    expect(space).to_not eq(nil)
  end
end