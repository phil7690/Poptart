
#!/usr/bin/env ruby

require 'csv'

# This assumes:
#   - Ruby 1.9's CSV library, if you are using 1.8, use FasterCSV.
#

# https://raw.github.com/hadley/data-baby-names/master/baby-names.csv
csv_fname = "set_pieces.csv"

# the key is the column in the csv to check, the value is what to match in that
# column




puts "What are you looking for? "
  type = gets.chomp
  if search_criteria[type] == nil
    puts "That movie does not exist"
  else
    puts "What is the new rating you'd like to give to this movie?"
    thing = gets.chomp
    search_criteria[type] = thing
    puts "#{title} has been updated with new rating of #{rating}."
  end

  search_criteria =  { 'name' => 'kat', 'type' => 'flat' }


#  search_criteria.each_key {
#      |z| puts "#{z} : "
#      user_input = gets.chomp
#      questions = %w{name type}
#     answers = questions.inject({}) { |hash, question|
#       print "#{question}: "
#       answer = gets.chomp
#       break hash if answer == "q"
#       hash[question] = answer
#       hash
#     }
#     p answers

#    }


# https://stackoverflow.com/questions/23400944/creating-an-array-of-hashes-from-user-input-in-ruby

#   - The CSV has a header line, if not look at :headers option in CSV.new
#     http://ruby-doc.org/stdlib-1.9.3/libdoc/csv/rdoc/CSV.html#method-c-new
options = { :headers    => :first_row,
            :converters => [ :numeric ] }

# we'll save the matches here
matches = nil

# save a copy of the headers
headers = nil

CSV.open( csv_fname, "r", options ) do |csv|

  # Since CSV includes Enumerable we can use 'find_all'
  # which will return all the elements of the Enumerble for
  # which the block returns true

  matches = csv.find_all do |row|
    match = true
    search_criteria.keys.each do |key|
      match = match && ( row[key] == search_criteria[key] )
    end
    match
  end
  headers = csv.headers
end

matches.each do |row|
  parts = headers.map { |h| "#{h}: #{row[h]}".ljust(20) }
  puts parts.join(" ")
  # row = row[12]
#  puts row
end

# dump the results, sorted by percent column descending
# matches.sort_by { |r| r['percent'] }.reverse.each do |row|
  #parts = headers.map { |h| "#{h}: #{row[h]}".ljust(20) }
#  puts parts.join(" ")
  #end
