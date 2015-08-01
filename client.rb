#!/usr/bin/env ruby
# author: takano32
#

require 'drb/drb'

uri = 'druby://localhost:8282'
DRb.start_service
zabbix = DRbObject.new_with_uri(uri)
puts zabbix.get_associations

