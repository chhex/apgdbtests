#!/usr/bin/env ruby
# encoding: utf-8
require 'apgdb'
conn = Sequel::Connection.new("CHEI212")
DB = conn.connect("che",ENV["PW"])

DB['select * from DRUCKER_f t where t.bezeichnung like ?',"ZHG%"].each do |row|
  p row
end



