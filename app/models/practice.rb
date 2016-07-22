class Practice < ActiveRecord::Base
	has_many :users
	has_many :regimes
	has_many :resources

	scope :chants, -> { where(category: 'Chant') }
	scope :body, -> { where(category: 'Body') }
	scope :seated, -> { where(category: 'Seated Meditation') }
	scope :service, -> { where(category: 'Service') }

end
