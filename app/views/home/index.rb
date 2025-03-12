# frozen_string_literal: true

class Views::Home::Index < Views::Base
  def view_template
    cache do
      h1 { "Home::Index" }
      p { "Find me in " }
    end
  end
end
