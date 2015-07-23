ActiveRecord::Base.establish_connection(
:adapter => "postgresql",
:database => "landlord"
)

after do
  ActiveRecord::Base.connection.close
end
