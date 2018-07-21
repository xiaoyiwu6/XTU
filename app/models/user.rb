class User < ApplicationRecord
	has_many :rposts
	has_many :reviews
end
