class Application 
  def call(env)
    resp = Rack::Response.new
    
    
    resp.write "The hour is #{Time.now.hour}"
    
    if Time.now.hour >= 12
      resp.write "pm\n"
      resp.write "Good Afternoon!"
    else 
      resp.write "am\n"
      resp.write "Good Morning!"
    end
    
    resp.finish
  end
end