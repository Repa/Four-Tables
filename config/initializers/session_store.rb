# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_one_table_session',
  :secret      => 'bf7b7de8433a40bfc98a0f7b51c0cc816ce9d505b83656c63bbeec8b79c991d8e0b973f3a13151833d5f32f7c0a0e287b72c7a5b39b41d693f366e678891d1f6'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
