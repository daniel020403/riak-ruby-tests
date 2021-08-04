#!/usr/bin/env ruby

require 'riak'

client      = Riak::Client.new(:host => "192.168.33.11", :pb_port => 8087)
bucket      = client.bucket_type("sets").bucket("travel")
set         = Riak::Crdt::Set.new(bucket, "cities")
print "#{set.members}\n"

# set.add('Montreal')
# print "#{set.members}\n"

set.remove('Montreal')
print "#{set.members}\n"

print "#{set.include? 'Montreal'}\n"
print "#{set.include? 'Toronto'}\n"

print "#{set.members.length}\n"
print "#{set.empty?}\n"
