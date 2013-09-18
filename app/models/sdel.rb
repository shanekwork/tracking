require 'digest/sha1'
class Sdel < ActiveRecord::Base
  attr_accessible :hashed_sdel
  
  def self.hash(sdel="")
  	Digest::SHA1.hexdigest(sdel).to_s
  end

end
