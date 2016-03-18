#!/usr/bin/env ruby
# encoding: UTF-8

class Genre
  attr_accessor :name
  attr_reader :songs
  @@all = []

  def initialize(name)
    @name = name
    @songs = []
  end

  def self.all
    @@all
  end

  def self.destroy_all
    @@all.clear
  end

  def save
    @@all << self
    self
  end

  def self.create(name)
    Genre.new(name).save
  end

  def artists
    [].tap {|result| @songs.map{|s| result << s.artist}}.uniq
  end
end

