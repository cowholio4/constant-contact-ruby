require 'rubygems'
require 'httparty'

require 'constant_contact'
require 'constant_contact/base_resource'
require 'constant_contact/contact'
require 'constant_contact/contact_list'
require 'constant_contact/activity'

module ConstantContact

    include HTTParty
    format :xml
    headers 'Accept'        => 'application/atom+xml'
    headers 'Content-Type'  => 'application/atom+xml'
    
    class << self
      # Create a connection to the Constant Contact API using your login credentials
      def setup( user )
        base_uri "https://api.constantcontact.com/ws/customers/#{user.downcase}"
      end
    end

end
