require 'rails_helper'

describe User do 
  it "is valid when name, last name and email are present" do 
    user = User.new( firstname: 'Luis', 
     lastname: 'Felipe', 
     email: 'luisfelipe1582@hotmail.com' ) 
     
     expect(user).to be_valid 
    end 
end
    
describe User do
  it "not valid when first name is null" do 
    user = User.new(firstname: nil)
    user.valid? #O objeto User é válido ?
      expect(user.errors[:firstname]).to include("can't be blank")
      #EXPECT : traz um alerta e invoca o ERRORS method especificando o parâmetro e INCLUINDO um alerta caso não ocorra o esperado
    end
end

#Este teste evitará emails iguais
describe User do 
  it "is invalid if there is already a registered email address" do 
    user = User.create( firstname: 'Fernando', lastname: 'Almeida', email: 'fealmeida22@hotmail.com')
    user = User.new( firstname: 'Lucas', lastname: 'Henrique', email: 'fealmeida22@hotmail.com' )
    user.valid? 
      expect(user.errors[:email]).to include('has already been taken')
    end
end
