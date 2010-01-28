# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_gowaller_session',
  :secret      => 'a7effa1c7674d956c2f85ca55dd302fa73249f49be278642cbca309184298fa149c3b5cc82d3cb28a578366fef62d34cb485482cae1609298f3b249b85eab924'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
