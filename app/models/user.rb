class User < ActiveRecord::Base
  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i

  before_save { self.email = email.downcase }
  validates :first_name, :last_name, presence: true
  validates :username, :email, uniqueness: true
  validates :email,  format: { with: VALID_EMAIL_REGEX }
  validates :password, length: { minimum: 6 }
  validates :gender, presence: true
  validates_inclusion_of :age, :in => 5..150
  validates :about_me, length: {maximum: 1000}
  # has_attached_file :avatar, :styles => { :medium => "300x300>", :thumb => "100x100#" }, :default_url => "/images/:style/missing.png"
  # validates_attachment_content_type :avatar, :content_type => /\Aimage\/.*\Z/
  has_secure_password

  belongs_to :practice
  has_many :regimes, through: :practice
  has_many :bookmarks
  has_many :resources, through: :bookmarks
end
