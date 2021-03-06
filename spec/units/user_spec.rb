require 'database_connection'

describe User do
  before(:each) do
    @connection = PG.connect(dbname: 'bnb_test')
    @connection.exec('TRUNCATE TABLE users;')
  end

  it 'adds a user to the database' do
    user = User.sign_up(name: 'John', email: 'john@gmail.com', password: '123')
    expect(user.name).to eq('John')
  end

end