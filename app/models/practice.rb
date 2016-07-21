class Practice < ActiveRecord::Base
	has_many :users
	has_many :regimes
	has_many :resources
end
