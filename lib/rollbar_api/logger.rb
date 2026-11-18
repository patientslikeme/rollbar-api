# frozen_string_literal: true

require 'logger'

module RollbarApi
  @logger = Logger.new($stdout)
  def self.logger=(logger)
    @logger = logger
  end

  def self.logger
    @logger
  end
end
