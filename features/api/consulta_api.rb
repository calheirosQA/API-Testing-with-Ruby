# frozen_string_literal: true

module Req_http
  include HTTParty

  base_url 'https://viacep.com.br/ws'

  format :json
  headers Accept: 'application/vnd.taskmanager.v2',

          'Content-Type': 'application/json'
end
