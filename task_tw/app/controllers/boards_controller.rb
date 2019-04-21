class BoardsController < ApplicationController
    before_action :set_baord, only: [:edit,:update,:destroy]
def index
    @boards = Board.all
end

def new
    if params[:back]
        @board = Board.new(boards_params)
    else
        @board = Board.new
    end
end

def create
    @board = Board.new(boards_params)
    if @board.save
    redirect_to boards_path,notice:"投稿しました！"
    else
    render 'new'
    end
end

def edit

end

def update
    if @board.update(boards_params)
     redirect_to boards_path,notice:"投稿を編集しました"
    else
     render 'edit'
    end
end

def destroy
    @board.destroy
    redirect_to boards_path,notice:"投稿を削除しました"
end

def confirm
    @board = Board.new(boards_params)
    render :new if @board.invalid?
end


private

def boards_params
    params.require(:board).permit(:content)
end

def set_baord
     @board = Board.find(params[:id])
end


end
