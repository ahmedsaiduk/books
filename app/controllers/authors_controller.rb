class AuthorsController < ApplicationController

  def show
    @author = Author.find(params[:last_name])
  end

  def new
    @author = Author.new
  end

  def create
    @author = Author.new(author_params)
    if @author.save
      redirect_to author_name_url(@author), notice: 'new_author_has_been_created'
    else
      render :new
    end
  end

  private

  def author_params
    params.require(:author).permit(:first_name, :last_name)
  end
end
