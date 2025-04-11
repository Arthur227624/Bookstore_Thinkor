class BooksController < ApplicationController
    def new 
        @book = Book.new
    end

    def create 
        @book = Book.new(book_params)

        if @book.save
            redirect_to @book, notice: 'Livro resgistrado com sucesso!'
        else
            render :new
        end
    end

    def index 
        @book = Book.all
    end

    def show 
        @book = Book.find(params[:id])
    end

    def edit 
        @book = Book.find(params[:id])
    end

    def update 
        @book = Book.find(params[:id])
        if @book.update(book_params)
            redirect_to @book, notice: 'Livro atualizado com sucesso!'
        else
            render :edit
        end 
    end

    def destroy 
        @book = Book.find(params[:id])
        @book.destroy
        redirect_to book_path, notice: 'Livro deletado com sucesso!'
    end

    private

    def book_params
        params.require(:book).permit(:name, :author, :pages)
    end
end
