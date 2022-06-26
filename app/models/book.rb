class Book < ApplicationRecord
        validates :title ,presence:{message:"Title is required"},uniqueness:{message:"Book with title already exists"}
    validates :author ,presence:{message:"Author is required"}
end
