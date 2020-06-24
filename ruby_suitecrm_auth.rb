#!/usr/bin/env ruby

require 'httparty'

def authenticate_suitecrm
    response = HTTParty.post('http://localhost:8888/SuiteCRM-7.11.13/Api/access_token',body: {"grant_type":"password","client_id":"","client_secret":"","username":"","password":""})
    return response.parsed_response["access_token"]
end

puts authenticate_suitecrm



