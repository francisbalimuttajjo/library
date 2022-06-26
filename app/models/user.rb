

require 'bcrypt'
class User < ApplicationRecord
    
    has_secure_password
    validates :firstName ,presence:{message:"FirstName is required"}
    validates :lastName ,presence:{message:"lastName is required"}
    validates :password ,presence:{message:"password is required"}, length: {minimum: 6,message:"Password is too short"}
    validates :email , format:{ with: /(\A([a-z]*\s*)*\<*([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\>*\Z)/i,message:"Invalid Email Provided" }   ,presence:{message:"Email is required"},uniqueness:{message:"Email is already taken"}

  
end
