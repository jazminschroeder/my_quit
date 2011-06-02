class QuitProfile < ActiveRecord::Base
  validates_presence_of :cigarettes_per_day, :cigarettes_per_pack, :cost_per_pack, :quit_date
  validates_numericality_of :cigarettes_per_day, :cigarettes_per_pack, :cost_per_pack, :quit_date, :allow_nil => true
  belongs_to :user
end
