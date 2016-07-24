class Resource < ActiveRecord::Base
	scope :readings, -> { where(type: 'Reading') }
  scope :recordings, -> { where(type: 'Audio') }
  scope :videos,  -> { where(type: 'Video') }
  scope :images, -> { where(type: 'Image') }
  scope :links, -> { where(type: 'Link') }

  has_many :bookmarks
	has_many :users, through: :bookmarks
	belongs_to :practice


  def self.types
    %w(Reading Audio Video Image Link)
  end
end
