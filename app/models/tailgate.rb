class Tailgate < ActiveRecord::Base
  belongs_to :school
  belongs_to :host
  has_many :events
end
