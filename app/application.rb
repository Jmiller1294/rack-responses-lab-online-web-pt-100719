class Application 
  def call(env)
    resp = Rack::Response.new
    
    time = Time.new
    resp.write "#{time.to_i}"
    
    if time.to_i >= 12
      resp.write "Good Afternoon!"
    else 
      resp.write "Good Morning!"
    end
    
    resp.finish
  end
end