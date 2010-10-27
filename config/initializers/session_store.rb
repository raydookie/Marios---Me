# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_mariosme_session',
  :secret      => 'd260af717a616c84c09b8a1d1306da650f470a562ea1a301c67bfe65dc13e816a57c263cd584d971d111bf0c2678820ea5ce3ea3ce9e1a85833419b4cf1568df'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
