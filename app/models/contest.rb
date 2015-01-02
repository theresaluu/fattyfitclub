class Contest < ActiveRecord::Base
  def required_weigh_ins
    duration = self.end_date - self.begin_date
    (duration / 7).floor
  end
end
