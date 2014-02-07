require 'state_machine'
require 'the_sortable_tree'

require 'the_comments/config'
require 'the_comments/version'

_root_ = File.expand_path('../../',  __FILE__)

module TheComments
  class Engine < Rails::Engine; end
end

# Loading of concerns
require "#{_root_}/config/routes.rb"
require "#{_root_}/lib/the_comments/concerns/controllers/controller.rb"

%w[ comment_states comment user commentable ].each do |concern|
  require "#{_root_}/lib/the_comments/concerns/models/#{concern}.rb"
end