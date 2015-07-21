class Correspondent < ActiveRecord::Base
	has_many :letters
	belongs_to :user
end
