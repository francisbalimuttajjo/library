class ApplicationController < ActionController::API
    rescue_from ActiveRecord::RecordNotFound,with: :record_not_found
    private
    def record_not_found(err)   
         render json:{status:"error",data:"#{err.message}"},status:404
    end

end
