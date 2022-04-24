require "rubygems"
require "geminabox"

Geminabox.data = "/home/ruby/www/gemserver/data"
Geminabox.build_legacy = false
# Geminabox.rubygems_proxy = true
# Geminabox.allow_remote_failure = true
run Geminabox
