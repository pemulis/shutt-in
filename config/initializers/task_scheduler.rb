require 'rufus/scheduler'
scheduler = Rufus::Scheduler.start_new

scheduler.every '20m' do
  require 'net/http'
  require 'uri'
  url = 'http://shutt.in'
  Net::HTTP.get_response(URI.parse(url))
end
