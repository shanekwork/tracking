class Sord < ActiveRecord::Base
  attr_accessible :sord, :user_id
  belongs_to :user
end
