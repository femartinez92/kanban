class List < ActiveRecord::Base
	has_one :board_list
	has_one :board, through: :board_list
end
