namespace :dev do
  desc "Starts the rails and React Create App apps"
  task start: :environment do
    exec 'foreman start -p 3000 -f Procfile.dev'
  end
end
