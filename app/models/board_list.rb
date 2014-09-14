class BoardList < ActiveRecord::Base
	belongs_to :board
	belongs_to :list
end
