class Api::V1::UsersController < ApplicationController
  
  def register
     user=User.new(user_params)
    if user.save
        render json:{status:"success",data:user},status: :created
    else
        render json:{status:"error",data:user.errors},status: :unprocessable_entity
    end
  end

   def login
      user = User.find_by(email: params[:email])
     

 
    # if user && user.password == params[:password]
    # const k=BCrypt::Password.new(user.password) == "francis"
   
      token = encode_user_data({ user_data: user.id })

      # return to user
      render json: { token: token,user_data: user.id  }
    # else
    #   render json: { message: "invalid credentials" }
    # end
  end
   private
  def user_params
    params.permit(:firstName,:lastName,:email,:password,:photo,:password_confirmation)
  end
end
