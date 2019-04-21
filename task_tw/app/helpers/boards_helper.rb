module BoardsHelper
    def new_or_edit
    if action_name == 'new' || action_name == 'confirm'
        confirm_boards_path
    elsif action_name == 'edit'
        board_path
    end
    end
end
