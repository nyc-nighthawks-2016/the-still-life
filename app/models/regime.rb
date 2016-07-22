class Regime < ActiveRecord::Base
  belongs_to :practice
  belongs_to :user
end
