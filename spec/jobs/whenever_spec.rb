# frozen_string_literal: true

require 'spec_helper'

describe 'Whenever Schedule' do
  # before do
  #   load 'Rakefile' # Makes sure rake tasks are loaded so you can
  #                   # assert in rake jobs
  # end
  it 'makes sure `runner` statements exist' do
    schedule = Whenever::Test::Schedule.new(file: 'config/schedule.rb')

    expect(schedule.jobs[:runner].count).to eq(1)

    # Executes the actual ruby statement to make sure
    # all constants and methods exist:
    # schedule.jobs[:runner].each { |job| instance_eval job[:task] }
  end
end
