# frozen_string_literal: true

class Components::Base < Phlex::HTML
  include Components

  # Include any helpers you want to be available across all components
  include Phlex::Rails::Helpers::Routes

  CACHE = Phlex::FIFOCacheStore.new(
    max_bytesize: 20_000_000 # 20MB
  )

  def cache_store
    CACHE
  end

  # def cache_store
  #   Rails.cache
  # end

  if Rails.env.development?
    def before_template
      comment { "Before #{self.class.name}" }
      super
    end
  end
end
