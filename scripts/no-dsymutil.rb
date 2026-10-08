# Local build workaround for Ruby 4 native extensions on this macOS toolchain.
# It only affects child Ruby processes launched with RUBYOPT during `bundle install`.
require "rbconfig"

RbConfig::CONFIG["POSTLINK"] = "true"
RbConfig::MAKEFILE_CONFIG["POSTLINK"] = "true"
