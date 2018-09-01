#ruby

#require 'bundler/setup'
require 'sinatra'
require 'nokogiri'
require 'open-uri'
require 'json'

module CatBot
  class Web < Sinatra::Base

    before do
      return 401 unless request["token"] == ENV['SLACK_TOKEN']
    end

    post "/cat" do
      @cats = []
      begin
        url = 'http://api.thecatapi.com/api/images/get?format=xml&size=full&results_per_page=1'
        doc = Nokogiri::HTML(open(url))
        doc.css('url').each do |kitty|
          @cats << kitty.content
        end
      rescue => e
        p e.message
        halt
      end
      status 200
      reply = { username: 'catapi', icon_emoji: ':cat2:', text: @cats.first }
      return reply.to_json
    end
    post "/hats" do
      @cats = []
      begin
        url = 'http://api.thecatapi.com/api/images/get?format=xml&size=full&category=hats&results_per_page=1'
        doc = Nokogiri::HTML(open(url))
        doc.css('url').each do |kitty|
          @cats << kitty.content
        end
      rescue => e
        p e.message
        halt
      end
      status 200
      reply = { username: 'catapi', icon_emoji: ':cat2:', text: @cats.first }
      return reply.to_json
    end
    post "/space" do
      @cats = []
      begin
        url = 'http://api.thecatapi.com/api/images/get?format=xml&size=full&category=space&results_per_page=1'
        doc = Nokogiri::HTML(open(url))
        doc.css('url').each do |kitty|
          @cats << kitty.content
        end
      rescue => e
        p e.message
        halt
      end
      status 200
      reply = { username: 'catapi', icon_emoji: ':cat2:', text: @cats.first }
      return reply.to_json
    end
    post "/funny" do
      @cats = []
      begin
        url = 'http://api.thecatapi.com/api/images/get?format=xml&size=full&category=funny&results_per_page=1'
        doc = Nokogiri::HTML(open(url))
        doc.css('url').each do |kitty|
          @cats << kitty.content
        end
      rescue => e
        p e.message
        halt
      end
      status 200
      reply = { username: 'catapi', icon_emoji: ':cat2:', text: @cats.first }
      return reply.to_json
    end
    post "/glasses" do
      @cats = []
      begin
        url = 'http://api.thecatapi.com/api/images/get?format=xml&size=full&category=sunglasses&results_per_page=1'
        doc = Nokogiri::HTML(open(url))
        doc.css('url').each do |kitty|
          @cats << kitty.content
        end
      rescue => e
        p e.message
        halt
      end
      status 200
      reply = { username: 'catapi', icon_emoji: ':cat2:', text: @cats.first }
      return reply.to_json
    end
    post "/boxes" do
      @cats = []
      begin
        url = 'http://api.thecatapi.com/api/images/get?format=xml&size=full&category=boxes&results_per_page=1'
        doc = Nokogiri::HTML(open(url))
        doc.css('url').each do |kitty|
          @cats << kitty.content
        end
      rescue => e
        p e.message
        halt
      end
      status 200
      reply = { username: 'catapi', icon_emoji: ':cat2:', text: @cats.first }
      return reply.to_json
    end
    post "/sinks" do
      @cats = []
      begin
        url = 'http://api.thecatapi.com/api/images/get?format=xml&size=full&category=sinks&results_per_page=1'
        doc = Nokogiri::HTML(open(url))
        doc.css('url').each do |kitty|
          @cats << kitty.content
        end
      rescue => e
        p e.message
        halt
      end
      status 200
      reply = { username: 'catapi', icon_emoji: ':cat2:', text: @cats.first }
      return reply.to_json
    end
    post "/ties" do
      @cats = []
      begin
        url = 'http://api.thecatapi.com/api/images/get?format=xml&size=full&category=ties&results_per_page=1'
        doc = Nokogiri::HTML(open(url))
        doc.css('url').each do |kitty|
          @cats << kitty.content
        end
      rescue => e
        p e.message
        halt
      end
      status 200
      reply = { username: 'catapi', icon_emoji: ':cat2:', text: @cats.first }
      return reply.to_json
    end
    post "/kittens" do
      @cats = []
      begin
        url = 'http://api.thecatapi.com/api/images/search?format=xml&size=full&category=kittens&results_per_page=1'
        doc = Nokogiri::HTML(open(url))
        doc.css('url').each do |kitty|
          @cats << kitty.content
        end
      rescue => e
        p e.message
        halt
      end
      status 200
      reply = { username: 'catapi', icon_emoji: ':cat2:', text: @cats.first }
      return reply.to_json
    end
    post "/clothes" do
      @cats = []
      begin
        url = 'http://api.thecatapi.com/api/images/get?format=xml&size=full&category=clothes&results_per_page=1'
        doc = Nokogiri::HTML(open(url))
        doc.css('url').each do |kitty|
          @cats << kitty.content
        end
      rescue => e
        p e.message
        halt
      end
      status 200
      reply = { username: 'catapi', icon_emoji: ':cat2:', text: @cats.first }
      return reply.to_json
    end
  end
end
