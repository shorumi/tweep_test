# frozen_string_literal: true

def load_most_relevant
  1.upto(4) do |i|
    FactoryBot.create(
      :most_relevant_traits,
      trait_row(i)
    )
  end
end

def trait_row(trait_number)
  trait_number = format('%02i', trait_number)
  "row#{trait_number}".to_sym
end
