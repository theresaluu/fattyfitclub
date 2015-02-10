class Team < ActiveRecord::Base
  # Associations
  belongs_to :members
  belongs_to :contest
end
