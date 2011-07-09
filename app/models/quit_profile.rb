class QuitProfile < ActiveRecord::Base
 
  validates_presence_of :cigarettes_per_day, :cigarettes_per_pack, :cost_per_pack, :quit_date
  validates_numericality_of :cigarettes_per_day, :cigarettes_per_pack, :cost_per_pack, :quit_date, :allow_nil => true
  belongs_to :user
  
  def money_saved
    days_quit * cigarettes_per_day * cigarette_unit_price
  end
  
  def cigarette_unit_price
    (cost_per_pack / cigarettes_per_pack).round(2)
  end
  
  def days_quit
    ((Time.now - quit_date)/1.day).to_i
  end

  def cigarettes_not_smoked
    (cigarettes_per_day * days_quit).to_i
  end
  
  def current_time_plus_life_saved
    Time.now + (cigarettes_not_smoked * 7.minutes)
  end
end
