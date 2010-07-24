# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_descertificador_session',
  :secret      => 'd603f0e0f2d36550e3ef6ffb822b6593737ef2031e764dc1ba9e1265c81a2cefdee39272a07a07e0c44b1bf979e59f8665773c9b9f3eaad6300816f82bb9db8d'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
