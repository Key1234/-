class RateController < ApplicationController
  def show_us
    uri_usd = URI.parse('https://query.yahooapis.com/v1/public/yql?q=select%20*%20from%20yahoo.finance.xchange%20where%20pair%20in%20(%22USDJPY%22)&format=json&env=store%3A%2F%2Fdatatables.org%2Falltableswithkeys')
    json_usd = Net::HTTP.get(uri_usd)
    @result_usd = JSON.parse(json_usd)
  end

  def show_asia
    uri_asia =
    URI.parse('https://query.yahooapis.com/v1/public/yql?q=select%20*%20from%20yahoo.finance.xchange%20where%20pair%20in%20(%22JPYCNY,JPYKRW,JPYIDR,JPYVND,JPYTHB,JPYMMK%22)&format=json&env=store%3A%2F%2Fdatatables.org%2Falltableswithkeys')
    json_asia = Net::HTTP.get(uri_asia)
    @result_asia = JSON.parse(json_asia)
  end
end
