#!/usr/bin/env ruby
# encoding: utf-8
require 'apgdb'
conn = Sequel::Connection.new("CHEI212")
DB = conn.connect(ENV["PW"],ENV["PW"])
puts "Getting specific"
statement = DB[:drucker_f].where(:bezeichnung => "ZHG_Montagne_C308_552379056" )
puts statement.first




