class LibraryController < ApplicationController
    def index
        @library = Bookdetail.all
      end
    def show
        @library = Bookdetail.find(params[:id])
      end
    def new
    end
    def addbookdetail
        @library=Bookdetail.new(library_params)

        @library.save

        redirect_to "/library/new"
        
    end
    private
  def library_params
    params.require(:library).permit(:Book, :Author, :Isbi, :Description)
  end
end
