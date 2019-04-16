class BoardsController < ApplicationController
def index
    @boards = Board.all
end

def new
    @board = Board.new
end

def edit
end

def show
end

end
