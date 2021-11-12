require 'rubygems'
require 'httparty'
require 'rest_client'
require 'json'
require 'net/http'
require 'uri'

class MockApi
    include HTTParty
      base_uri "http://localhost:8080"
      basic_auth 'user', 'pass'

    def get(path)
      response = self.class.get(path)
      puts response.body
        if response.code == 200
          print 'PASS - Status Code is '
          puts response.code
        else
          print 'FAIL - Status Code is '
          puts response.code
        end
    end

    def post(path)

      params={ "card-lock":{ "locking-reason": "Reason by mayank" } }
      #response=self.class.put(path, params)
      #puts response.body

      #http = URI.parse("http://localhost:8080")
      #http = Net::HTTP.new("http://localhost:8080")
      #response = Net::HTTP::Put(path, params)
      #puts response.body

      #uri = URI.parse("http://localhost:8080/user/qatest/card/1234123412341001/lock/c8222dfab33111e896f8529269fb1459")

      #header = {'Content-Type': 'text/json'}
      #header = { key1: 'text/json' }
      #headers['Content-Type'] = 'application/json'
      #user = { "card-lock":{ "locking-reason": "Reason by mayank" } }


      #http = Net::HTTP.new(uri.host, uri.port)
      #response.set_header('Content-Type', 'application/json')
      #request = Net::HTTP::Put.new(uri.request_uri,headers)
      #request.body = user.to_json

      #response = http.request(request)
      #puts response.body

      #response=self.class.put(path,options={"locking-reason": "Reason by mayank"})
      #puts response.body
      #
      #


=begin
      port = 8080
      host = "localhost"
      path = path

      req = Net::HTTP::Put.new(path, header = { 'Content-Type' => 'application/json'})
      req.body = "Reason by mayank"
      response = Net::HTTP.new(host, port).start {|http| http.request(req) }
      puts response.body
=end

#changed done in file 
    end



end
