get '/' do
  send_file(File.join(settings.public_folder, "home.html"))
end

get '/host' do
  json({
    server: {
      name: Socket.gethostname
    }
  })
end

get '/manifest.json' do
  manifest = {
    manifest: {
      artifacts: [
        {
          name: "foo",
          url: "http://central.maven.org/maven2/org/jruby/jruby-complete/9.1.2.0/jruby-complete-9.1.2.0.jar"
        }
      ]
    }
  }
  json(manifest)
end
