Bundler.require
require 'sinatra'
require 'bundler'
require_relative 'models/pig_latinize.rb'
require_relative 'models/caesar_cypher.rb'

class ApplicationController < Sinatra::Base

  get '/' do
    erb :index
  end

  post '/results' do
    @output = to_pig_latin(params[:sentence])
    @hello_name = params[:first_name].reverse
    erb :results
  end

  post '/results_cypher_encode' do
    @encoded = caesar_encode(params[:needs_encode], params[:encode_shift])
    erb :results_cypher_encode
  end

  post '/results_cypher_decode' do
    @decoded = caesar_decode(params[:needs_decode], params[:decode_shift])
    erb :results_cypher_decode
  end

end
