module Developers
  class BadgesComponent < ApplicationComponent
    delegate :featured?, to: :developer
    delegate :recently_active?, to: :developer

    private attr_reader :developer

    def initialize(developer)
      @developer = developer
    end
  end
end
