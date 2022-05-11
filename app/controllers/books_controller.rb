class BooksController < ApplicationController

    def index
        @q = Book.ransack(params[:q])
        @books = @q.result(distinct: true)
    end

    def new
        @book = Book.new
    end

    def create
        @book = Book.new(book_params)
        respond_to do |format|
            if @book.save
                format.html { redirect_to root_path, notice: "se guardó el libro"}
            else
                format.html { render new, status: :unprocessable_entity}
            end
        end
    end

    def edit
        @book = Book.find(params[:id])
    end

    def show
        @book = Book.find(params[:id]) 
    end

    def update
        @book = Book.find(params[:id])
        respond_to do |format|
            if @book.update(book_params)
                format.html { redirect_to root_path, notice: "se actualizó el libro"}
            else
                format.html { render :edit, status: :unprocessable_entity}
            end
        end
    end

    private

    def book_params
        params.require(:book).permit(
            :title, :author, :status, :borrow_date, :return_date, :friend
        )
    end
end
