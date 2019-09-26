require 'pry'
require_relative "../config/environment.rb"
require 'active_support/inflector'

class InteractiveRecord
  def self.table_name
    # binding.pry
    self.to_s.downcase.pluralize
  end

  def self.column_names
    sql = "PRAGMA table_info('#{table_name}')"
    # sql =  "pragma table_info('students')" #hardcode
    # binding.pry
    
    # arr = []
    # DB[:conn].execute(sql).each {|hash| arr << hash['name']}
    # arr

    # results = DB[:conn].execute(sql)
    # new_arr = results.map {|hash| hash['name']}
    # new_arr

    DB[:conn].execute(sql).map {|hash| hash['name']}
  end

  # columns are #= [id, name, grade]
  def initialize(hash)
    # use keys in hash to find correct column
    # put values from hash in correct column name
    
    # KEEP IN MIND:
      #working w/a hash
      # need to iterate, key, value
      # look into the send RUBY method
  end
end

# STUDNET ~> CONSTANT

