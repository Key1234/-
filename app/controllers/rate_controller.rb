class RateController < ApplicationController
  def show
    uri = URI.parse('https://query.yahooapis.com/v1/public/yql?q=select%20*%20from%20yahoo.finance.xchange%20where%20pair%20in%20(%22USDJPY%22)&format=json&env=store%3A%2F%2Fdatatables.org%2Falltableswithkeys')
    json = Net::HTTP.get(uri)
    @result = JSON.parse(json)
    p @result
  end
end
