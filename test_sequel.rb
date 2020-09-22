#!/usr/bin/env ruby
# encoding: utf-8
require 'apgdb'
conn = Sequel::Connection.new("CHEI212")
DB = conn.connect("che",ENV["PW"])
DB['select * from DRUCKER_f'].each do |row|
  p row
end
puts "The same ordered by alias"
DB[:drucker_f].order(:alias).each do |row|
  p row
end

puts "Getting specific"
statement = DB[:drucker_f].where(:bezeichnung => "ZHG_Montagne_C308_552379056" )
puts statement.first

puts "By Like wildcard"
DB['select * from DRUCKER_f t where t.bezeichnung like ?',"ZHG%"].each do |row|
  p row
end



