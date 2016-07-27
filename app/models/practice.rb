class Practice < ActiveRecord::Base
	has_many :users
	has_many :regimes
	has_many :resources

	scope :chants, -> { where(category: 'Chant') }
	scope :body, -> { where(category: 'Body') }
	scope :seated, -> { where(category: 'Seated Meditation') }
	scope :service, -> { where(category: 'Service') }

	delegate :readings, :recordings, :videos, :images, :links, to: :resources

 def suggestion

  case self.category 
    when 'Chant'
      "Repeat the phrase for the duration of your practice"
    when 'Body'
       "Focus on the breath during physical activity"
    when 'Seated Meditation'
       "Sit steadily with a straight spine"
    when 'Service'
       "Serve others with no expectation of result or recognition"
   end
   
 end 
end
