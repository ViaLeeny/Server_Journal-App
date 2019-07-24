class ApplicationController < ActionController::API

  def issue_token(data)
    JWT.encode(data, secret)
  end


  def decode_token
      begin
      JWT.decode(token, secret).first
      rescue
      {}
      end 
  end 

  def token
      request.headers['Authorization']
  end 

  def current_user

    id = decode_token['id'].to_i
   
    u = User.find_by(id: id)
    return u 
  end 



  def secret
      'SHH'
  end 

end
