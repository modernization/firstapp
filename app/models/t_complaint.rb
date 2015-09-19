class TComplaint < ActiveRecord::Base
validates_presence_of :cmpnumber, :cmpfirst, :cmplast, :cmpdetails

end
