class Board < ActiveRecord::Base
	has_many :board_lists
	has_many :lists, through: :board_lists
end
