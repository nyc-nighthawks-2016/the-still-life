class Resource < ActiveRecord::Base
	scope :readings, -> { where(type: 'Reading') }
  scope :recordings, -> { where(type: 'Audio') }
  scope :videos,  -> { where(type: 'Video') }
  scope :images, -> { where(type: 'Image') }
  scope :links, -> { where(type: 'Link') }

  has_many :bookmarks
	has_many :users, through: :bookmarks
	belongs_to :practice
	has_attached_file :upload

	validates_attachment :upload,
                     content_type: { content_type: ["image/jpeg", "image/gif", "image/png", "audio/mpeg3", "application/pdf"] }


  def self.types
    %w(Reading Audio Video Image Link)
  end

end
