# frozen_string_literal: true

class ExhibitionComponent < ViewComponent::Base
#   erb_template <<-ERB
#     <span title="<%= @exhibition %>"><%= content %></span>
#   ERB

  def initialize(exhibition:)
    @exhibition = exhibition
  end
end
