#!/usr/bin/env ruby
# encoding: utf-8
require 'apgdb'
conn = Oracle::Connection.new("CHEI212")
statement = conn.connect("che",ENV["PW"])
rs = statement.execute_query("select * from DRUCKER_f")
while (rs.next) do
  puts "DRUID: #{rs.getObject('DRU_ID')}, ALIAS: #{rs.getObject('ALIAS')}, BEZEICHNUNG: #{rs.getObject('BEZEICHNUNG')}"
end
conn.close
