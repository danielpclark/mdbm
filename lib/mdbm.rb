# Marshalling Database Manage
# Drop any object in and it'll be marshalled into the DBM
# For usage details see http://www.ruby-doc.org/stdlib-1.9.3/libdoc/dbm/rdoc/DBM.html

# Under The MIT License
# by Daniel P. Clark
# http://www.6ftdan.com

require 'mdbm/version'
require 'dbm'

class MDBM < DBM
  include MDBM_Version
	def []=(key,value)
		super(key, Marshal.dump(value))
	end
	def [](key)
		Marshal.load(super(key))
	end
end
