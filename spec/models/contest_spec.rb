require 'rails_helper'

describe Contest, "#weigh_ins" do
  let(:contest){
    Contest.create(
    name: "Cruise_Lose",
    registration_fee: 50.0,
    begin_date: Time.now,
    end_date: (Time.now + 7776000.0)
    )}


  it "returns the amount of required weigh-ins" do
    duration = contest.end_date - contest.begin_date
    expect(contest.required_weigh_ins).to eq((duration / 7).floor)
    puts "weigh ins: " + contest.required_weigh_ins.to_s
  end

  # it "returns a schedule of weigh-in deadlines" do
  #   (contest.required_weigh_ins).times do
  #     weigh_in_deadlines[ ] <<

end
