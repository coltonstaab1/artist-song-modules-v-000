require 'pry'
require_relative '../lib/memorable.rb'

class Song
  extend Memorable

  attr_accessor :name
  attr_reader :artist

  @@songs = []

  def initialize
    @@songs << self
  end
=begin
  def self.find_by_name(name)
    @@songs.detect{|a| a.name}
  end
=end
  def artist=(artist)
    @artist = artist
  end
=begin
  def self.reset_all
    @@songs.clear
  end
=end
  def to_param
    name.downcase.gsub(' ', '-')
  end
=begin
  def self.count
    self.all.count
  end
=end
  def self.all
    @@songs
  end
end
