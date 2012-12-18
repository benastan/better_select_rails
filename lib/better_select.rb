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

  private

  def self.asset_pipeline?
    defined?(::Rails) && ::Rails.version >= '3.1.0'
  end

  def self.compass?
    defined?(::Compass)
  end

  def self.register_compass_extension
    base = File.join(File.dirname(__FILE__), '..')
    styles = File.join(base, 'vendor', 'assets', 'stylesheets')
    ::Compass::Frameworks.register('better_select', :stylesheets_directory => styles)
  end

  def self.register_rails_engine
    require 'better_select/engine'
  end
end
