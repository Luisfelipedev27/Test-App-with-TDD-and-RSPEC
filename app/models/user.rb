class User < ApplicationRecord
    validates :firstname, presence:true 
    validates :lastname, presence:true
    validates :email, presence:true, uniqueness: true

    #Esses campos não podem estar em branco 
    #O email deve ser único
end
