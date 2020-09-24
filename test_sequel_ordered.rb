#!/usr/bin/env ruby
# encoding: utf-8
require 'apgdb'
conn = Sequel::Connection.new("CHEI212")
DB = conn.connect(ENV["PW"],ENV["PW"])
DB[:drucker_f].order(:alias).each do |row|
  p row
end



