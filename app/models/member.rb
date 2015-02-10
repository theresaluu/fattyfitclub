class Member < ActiveRecord::Base
  # Associations
  has_many :weigh_ins, dependent: :destroy
  has_many :contests, through: :teams

  def weight_loss
    self.initial_weight - self.final_weight
  end

  def body_fat_loss
    self.initial_body_fat - self.final_body_fat
  end
end
