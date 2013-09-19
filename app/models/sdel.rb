require 'digest/sha1'
class Sdel < ActiveRecord::Base
  attr_accessible :hashed_sdel

  before_save { self.hashed_sdel = self.class.hash(hashed_sdel) if hashed_sdel_changed? }
  
  def self.hash(sdel="")
  	Digest::SHA1.hexdigest(sdel)
  end

end
