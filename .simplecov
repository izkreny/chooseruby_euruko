# frozen_string_literal: true

SimpleCov.load_profile "rails"

# The JSON report is what `bin/simplecov ratchet` reads to tighten the baseline.
SimpleCov.formats :html, :json

# The target is 100% line and branch coverage, globally and per file.
#
# Every file that existed when coverage was first measured carries its own floor
# in `.simplecov_baseline.yml` instead, so it can never get worse while the suite
# catches up. A file with no entry there, which means every new file, has to meet
# the 100% per-file minimum below.
#
# The overall minimums are where the suite stands today. The baseline exempts
# files from the per-file minimum only, so these cannot sit at 100 until the
# coverage is really there. Raise them as the baseline tightens.
SimpleCov.coverage :line do
  minimum 47
  minimum 100, per: :file
end

SimpleCov.coverage :branch do
  ignore :eval_generated

  minimum 33
  minimum 100, per: :file
end
