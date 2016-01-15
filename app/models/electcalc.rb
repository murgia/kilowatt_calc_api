class Electcalc < ActiveRecord::Base
  has_many :estimates
  attr_accessor :t_energy

  def total_energy
    estimates = self.estimates
    cumulative_energy = 0

    estimates.each do |estimate|
      power = estimate.appliance.power
      quantity = estimate.quantity
      yearly_power = power*quantity*12
      cumulative_energy += yearly_power
    end
    cumulative_energy
  end

  def total_cost
    yearly_cost = total_energy * avg_cost
    yearly_cost
  end

end
