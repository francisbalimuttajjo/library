  class Api::V1::BooksController < ApplicationController

  def index
     books=Book.order('created_at DESC');
     total=books.length
    render json:{status:"success",data:{total:total,books:books}},status: :ok
  end

  def show
    book=Book.find(params[:id])
      render json:{status:"success",data:book},status: :ok
      
  end


  def create
    book=Book.new(book_params)
    if book.save
        render json:{status:"success",data:book},status: :created
    else
        render json:{status:"error",data:book.errors},status: :unprocessable_entity
    end
  end

  def destroy
        Book.find(params[:id]).destroy!
              render json:{status:"success",data:'delete successfull'},status: :ok
  end

  def update
        book=Book.find(params[:id])
             
        book.update(book_params)        
     
        render json:{status:"success",data:'update successfull'},status: :ok
  
  end

  private
  def book_params
    params.permit(:title,:author)
  end

end