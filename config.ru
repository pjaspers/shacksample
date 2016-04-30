require "shack"

app = Rack::Builder.new do
  use Shack::Middleware, ENV["SHA"]
  run -> (env) { [200, {"Content-Type" => "text/html"}, ["<html><body>KAAAHN</body></html>"]] }
end

Rack::Server.start app: app
