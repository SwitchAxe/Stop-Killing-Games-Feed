require "x"
load "secrets.rb" # contains access keys, tokens, secrets and whatnot
x_client = X::Client.new(**x_credentials)
