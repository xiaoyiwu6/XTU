class Review < ApplicationRecord
	belongs_to :rpost
	belongs_to :user
end
