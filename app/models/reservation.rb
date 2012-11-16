class Reservation < ActiveRecord::Base
  attr_accessible :booked_for, :hour, :party_size, :user_id
  
  belongs_to :user
  
  validate :less_than_max_occupancy
  
  def less_than_max_occupancy
    other_people = Reservation.where(:booked_for => self.booked_for, :hour => self.hour).sum(:party_size)
    
    if other_people + self.party_size > 30
      errors.add(:base, "Sorry, too many people!")
    end
  end
  
end
