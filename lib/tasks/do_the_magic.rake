namespace :do_the_magic do
  desc "Updates the database"
  task update_database: :environment do
    Applications::Bi::UpdateDatabase.new.execute
    Applications::Bi::PopulateSummonersPerformance.new.execute
  end

end
