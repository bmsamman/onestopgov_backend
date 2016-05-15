require 'feedjira'
module Services
  class HoustonAlertsController < ApplicationController
    layout false

    def create
      url = 'http://alerts.weather.gov/cap/wwaatmget.php?x=TXC225&y=0'
      feed = Feedjira::Feed.fetch_and_parse url
      content = feed.entries.map{|entry| "#{entry.title}\n------\n#{entry.summary}"}.join("\n\n")
      render text: content
    end
  end
end
