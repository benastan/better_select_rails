require "better_select/version"

module BetterSelect
  class FrameworkNotFound < StandardError; end

  def self.load!
    if compass? && asset_pipeline?
      register_compass_extension
      register_rails_engine
    elsif compass?
      register_rails_engine
    elsif asset_pipeline?
      register_compass_extension
    else
      raise BetterSelect::FrameworkNotFound < StandardError
    end
  end
end
