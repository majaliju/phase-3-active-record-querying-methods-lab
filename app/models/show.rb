class Show < ActiveRecord::Base

  def self.highest_rating
    Show.maximum(:rating)
  end

  def self.most_popular_show
    Show.where("self_highest_rating")
    # this one is super close -- just gotta return the name from it
  end

  def self.lowest_rating
    Show.minimum(:rating)
  end

  def self.least_popular_show

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