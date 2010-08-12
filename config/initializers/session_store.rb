# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_mbcontainer_session',
  :secret      => '3c65a2f96fe5f297d6411e4eb9910940caaeb15a2b41f2b8ca5f15fc32c62fb4ff163655d60bd3d0c67baeddfa69a0fcbf7c4151df27cc7a440e97aca2b374fb'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
