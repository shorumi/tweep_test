# frozen_string_literal: true

require 'rails_helper'

RSpec.describe TweepsJob, type: :job do
  include ActiveJob::TestHelper

  subject(:job) do
    TweepsJob.perform_later
  end

  after(:each) do
    clear_enqueued_jobs
  end

  describe 'Validates background job', :vcr do
    it 'Enqueue job successfully' do
      ActiveJob::Base.queue_adapter = :test
      expect { job }.to have_enqueued_job(
        TweepsJob
      )
    end

    it 'Enqueue jobs on the Default list' do
      ActiveJob::Base.queue_adapter = :test
      expect { job }.to have_enqueued_job.on_queue('default')
    end

    it 'Queues the job' do
      expect { job }.to change(
        ActiveJob::Base.queue_adapter.enqueued_jobs, :size
      ).by(1)
    end
  end

  describe 'Perform the job', :vcr do
    before(:each) do
      subject.perform
    end
    it 'MostRelevant is persisted' do
      expect(MostRelevant.all.count).to eq(7)
    end
    it 'MostMention is persisted' do
      expect(MostMention.all.count).to eq(7)
    end
  end
end
