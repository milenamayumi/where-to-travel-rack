require 'rack'
require 'json'

CONTINENTS = ['América', 'Europa', 'África', 'Ásia', 'Oceania', 'Antártida']

app = proc do |env|
  [200, { 'Content-Type' => 'application/json' }, [{ destination: CONTINENTS.sample }.to_json]]
end

Rack::Handler::WEBrick.run app
