class Server < ActiveRecord::Base
  attr_accessible :status, :place, :name, :model, :features, :serial_number, :date_adq, :ip, :dir_ilo, :hard_disks, :user, :os, :lic_ilo
end
