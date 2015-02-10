class Contest < ActiveRecord::Base
  # Associations
  has_many :members, through: :teams

  def required_weigh_ins
    duration = self.end_date - self.begin_date
    (duration / 7).floor
  end
end
