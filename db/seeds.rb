# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
# Lookup.create(lookup_name: 'FeedingType', lookup_key: '', lookup_value: '')

Lookup.create(lookup_name: 'FeedingType', lookup_key: 'Breast Feed', lookup_value: 'Breast Feed')
Lookup.create(lookup_name: 'FeedingType', lookup_key: 'Bottle', lookup_value: 'Bottle')
Lookup.create(lookup_name: 'FeedingType', lookup_key: 'Wets', lookup_value: 'Wets')
Lookup.create(lookup_name: 'FeedingType', lookup_key: 'Poops', lookup_value: 'Poops')
Lookup.create(lookup_name: 'FeedingType', lookup_key: 'N/A', lookup_value: 'N/A')



