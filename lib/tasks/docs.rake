namespace :docs do
  desc 'generate docs for api'
  task generate: :environment do
    exec 'rspec -f Dox::Formatter --order defined --tag dox --out spec/docs/docs.md &&
                aglio -i spec/docs/docs.md -o public/docs.html'
  end
end
