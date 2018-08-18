SimpleCov.minimum_coverage 90
SimpleCov.minimum_coverage_by_file 80

SimpleCov.start 'rails' do
  add_group 'Controllers',  'app/controllers'
  add_group 'Business',     'app/business'
  add_group 'Serializers',  'app/serializers'
  add_group 'Entities',     'app/entities'
  add_group 'Repositories', 'app/repositories'
  add_group 'Services',     'app/services'
  add_group 'Libs',         'app/libs'
  
  add_filter '/features/'
  add_filter 'app/controllers/application_controller.rb'
  add_filter 'app/models/application_record.rb'
end
