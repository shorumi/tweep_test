# frozen_string_literal: true

class TweepBuilder
  attr_reader :argument

  def initialize(argument)
    @argument = argument['statuses']
  end

  def call
    build_tweep
  end

  private

  def tweep_hash
    { document:      argument['document'],
      customer_name: argument['customer_name'],
      market:        argument['market'],
      volume:        argument['volume'],
      qty_trades:    argument['qty_trades'],
      period_date:   argument['period_date'] }
  end

  def build_tweep
    Tweep.new(tweep_hash)
  end
end
