class Robot < ActiveRecord::Base
  def self.by_created_at
  	order(created_at: :desc)
  end
end
