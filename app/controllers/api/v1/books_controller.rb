  class Api::V1::BooksController < ApplicationController

  def index
     books=Book.order('created_at DESC');
     total=books.length
    # render json:{status:"success",total:total,data:books},status:200
    render json:{status:"success",data:{total:total,books:books}},status:200
  end
  def show
    book=Book.find(params[:id])
      render json:{status:"success",data:book},status:200
      
  end


  def create
    book=Book.new(book_params)
    if book.save
        render json:{status:"success",data:book},status:200
    else
        render json:{status:"error",data:book.errors},status: :unprocessable_entity
    end
  end

  def destroy
        book=Book.find(params[:id])
        book.destroy
      render json:{status:"success",data:'delete successfull'},status:200 
  end

  def update
        book=Book.find(params[:id])
             
        book.update(book_params)        
     
        render json:{status:"success",data:'success'},status:200
  
  end

  private
  def book_params
    params.permit(:title,:author)
  end

end