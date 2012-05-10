class Server < ActiveRecord::Base
  has_many :owners, :through => :ownerships
  has_many :ownerships
  attr_accessible :status, :place, :name, :model, :features, :serial_number, :date_adq, :ip, 
                  :dir_ilo, :hard_disks, :user, :os, :lic_ilo, :owner_tokens
  
  validates :place, :name, :model, :features, :serial_number, :date_adq, :ip, 
            :dir_ilo, :hard_disks, :user, :os, :lic_ilo, :presence => true
  
  attr_reader :owner_tokens   
  
  scope :inactive, lambda {
    where(:status => false)
  }
  
  scope :active, lambda {
    where(:status => true)
  }       
  
  def owner_tokens=(ids)
    self.owner_ids = ids.split(",")
  end
end
