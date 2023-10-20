# frozen_string_literal: true

class CommentComponent < ViewComponent::Base
  erb_template <<-ERB
    <span title="<%= @body %>"><%= content %></span>
  ERB

  def initialize(body:)
    @body = body
  end

end
