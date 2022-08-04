class Show < ActiveRecord::Base

  def self.highest_rating
    Show.maximum(:rating)
  end

  def self.most_popular_show
    self.order(:rating).last

    # best_show = Show.highest_rating
    # Show.find_by(rating: best_show)
    # found this closest workaround 
  end

  def self.lowest_rating
    Show.minimum(:rating)
  end

  def self.least_popular_show
    self.order(:rating).first
    # found this better method 

    # worst_show = Show.highest_rating
    # Show.find_by(rating: worst_show)
    # this one is similar to the second one -- just gotta return name, apply to method above
    
  end

  def self.ratings_sum
    Show.sum(:rating)
  end

  def self.popular_shows
    Show.where("rating > 5")
  end

  def self.shows_by_alphabetical_order
    Show.order("name ASC")
  end
end