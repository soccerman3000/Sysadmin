class Ownership < ActiveRecord::Base
  belongs_to :server
  belongs_to :owner
end
