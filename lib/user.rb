require 'pg'

class User 
    
  attr_reader :id, :name, :email, :password

  def initialize(id:, name:, email:, password:)
    @id = id
    @name = name
    @email = email
    @password = password
  end 

  def self.sign_up(name:, email:, password:)
    # if ENV['ENVIRONMENT'] =='test'
    #   connection = PG.connect(dbname: 'bnb_users_test')      
    # else
    #   connection = PG.connect(dbname: 'bnb_users')   
    # end
    
    result = DatabaseConnection.query("INSERT INTO users (name, email, password) VALUES('#{name}', '#{email}', '#{password}') RETURNING id, name, email, password;")
    User.new(id: result[0]['id'], name: result[0]['name'], email: result[0]['email'], password: result[0]['password'])
  end

end