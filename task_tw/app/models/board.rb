class Board < ApplicationRecord
    validates :content, presence:true, length:{in:1..140}
end
