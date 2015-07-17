require "rubocop_prefer_binstubs/version"
require "rubocop"

module RuboCop
  module Cop
    module Lint
      class Binstubs < Cop
        def on_str(node)
          return unless node.to_a.join.include?("bundle exec")
          msg = "You reference bundle exec... use a binstub!"
          add_offense(node, :expression, msg)
        end
      end
    end
  end
end

