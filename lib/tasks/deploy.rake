namespace :deploy do
  desc 'Deploy to staging'
  task :staging do
    Paratrooper::Deploy.new('ooslego-staging', tag: 'staging').deploy
  end

  desc 'Deploy to production'
  task :production do
    Paratrooper::Deploy.new('ooslego', tag: 'production', match_tag: 'staging').deploy
  end
end
