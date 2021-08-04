#!/usr/bin/env ruby

require 'riak'

client      = Riak::Client.new(:host => "192.168.33.11", :pb_port => 8087)
bucket      = client.bucket_type("sets").bucket("travel")
cities      = bucket.get("cities")
print "#{cities}\n"
