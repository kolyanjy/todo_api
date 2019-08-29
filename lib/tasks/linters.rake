namespace :linters do
  desc 'run linters'
  task run: :environment do
    exec 'rails_best_practices ; bundle-audit ; brakeman -q ; rubocop'
  end
end
