#!/usr/bin/env ruby

require 'riak'

client      = Riak::Client.new(:host => "192.168.33.11", :pb_port => 8087)
bucket      = client.bucket_type("gsets").bucket("travel00")
gset        = Riak::Crdt::GrowOnlySet.new(bucket, "cities00")
print "#{gset}\n"
print "#{gset.members}\n"

# gset.add('Los Angeles')
# print "#{gset.members}\n"

# gset.remove('New York')
# print "#{gset.members}\n"

print "#{gset.include? 'Montreal'}\n"
# print "#{gset.include? 'Toronto'}\n"
# print "#{gset.include? 'Miami'}\n"
# print "#{gset.include? 'New York'}\n"
print "#{gset.include? 'Los Angeles'}\n"

print "#{gset.members.length}\n"
print "#{gset.empty?}\n"
