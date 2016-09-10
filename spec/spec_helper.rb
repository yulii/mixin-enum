$LOAD_PATH.unshift File.expand_path('../../lib', __FILE__)
require 'mixin/enum'
require 'coveralls'
Coveralls.wear!

Dir[File.expand_path('../../examples', __FILE__) << '/*.rb'].each do |file|
  require file
end
