require 'rails_helper'

describe Member, "#weight_and_body_fat_loss" do
  let(:member){ Member.create(
    name: 'Theresa',
    initial_weight: 148.8,
    initial_body_fat: 31,
    final_weight: 135.0,
    final_body_fat: 25)}

  it "returns the difference of intial_weight and final_weight" do
    expect(member.weight_loss).to eq(member.initial_weight - member.final_weight)
  end

  it "returns the difference of initial_body_fat and final_body_fat" do
    expect(member.body_fat_loss).to eq(member.initial_body_fat - member.final_body_fat)
  end
end
