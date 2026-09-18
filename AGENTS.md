## Instructions for LLMs

1. Make sure you load the file `docs/llms.md` and read it all. Never skip reading that file for any task.

## Test coverage

This project tracks coverage with SimpleCov, configured in `.simplecov`. Both line
and branch coverage are required to reach 100%, globally and for every single file.

Run `bin/ci` (or `bin/rails test`) before considering any work finished. The run
fails when coverage is below the minimum, and the HTML report at
`coverage/index.html` shows exactly which lines and branches are missing.

When a gap shows up, decide which of the two it is:

1. The code is not needed. Delete it, and the gap disappears with it.
2. The code is needed but untested. Write the missing test.

Never lower a minimum, exclude a path, or add a coverage exception to make a run
pass. If a gap looks impossible to close, stop and ask first.
