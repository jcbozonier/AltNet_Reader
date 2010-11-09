require 'sinatra'
require 'dm-migrations'
require 'dm-core'
set :show_exceptions, true

DataMapper.setup(:default, ENV['DATABASE_URL'] || 'sqlite::memory:')

require 'lib/model'
require 'lib/controller'