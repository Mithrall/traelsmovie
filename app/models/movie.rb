class Movie < ApplicationRecord
  validates :title, presence: true

#  validate :get_omdb_data  
  before_save :get_omdb_data

  def get_omdb_data
Rails.logger.debug "----------  "+"TESTING"+"  ----------------" 
   movie = OmdbService.new.find_by_title({ title: self.title })   
Rails.logger.debug "----------  "+movie.to_s+"  ----------------" 
      if movie.is_a? Omdb::Api::Error
        errors.add(:title, 'Omdb error')
      elsif movie.is_a? Omdb::Api::Movie
        self.title = movie.title
   	self.plot = movie.plot
	self.poster = movie.poster
	self.year = movie.year
      end
  end

end
