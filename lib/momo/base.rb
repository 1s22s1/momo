# frozen_string_literal: true

module Momo
  class Base
    @@data = {}

    attr_accessor :id, :name

    def initialize(id, name)
      @id = id
      @name = name
    end

    class << self
      def find_by_id(id)
        arguments = @@data.detect { |hash| hash.fetch(:id) == id }

        arguments ? new(arguments.fetch(:id), arguments.fetch(:name)) : nil
      end
    end
  end
end
