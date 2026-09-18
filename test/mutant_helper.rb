# frozen_string_literal: true

# Mutant requires every test file itself, so the test directory has to be on the
# load path the way `bin/rails test` puts it there.
$LOAD_PATH.unshift(__dir__)

require "test_helper"

# Mutant matches subjects against loaded constants, so the app has to be loaded
# rather than waiting on Rails' lazy autoloading.
Rails.application.eager_load!
