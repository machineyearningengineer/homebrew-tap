cask "job-harness" do
  arch arm: "aarch64", intel: "x86_64"

  # Version and checksums are rewritten by job-harness's release workflow.
  version "0.4.0"
  sha256 arm:   "d3df6980a938a7f5d6f7abb04a01af8993d2499accb458cb6c452f691ece9b40", # aarch64-apple-darwin
         intel: "58489526b10d60ac402e44ec151b02dbc98a7ffd03d34f716ab935c6958ceb61"  # x86_64-apple-darwin

  url "https://github.com/machineyearningengineer/job-harness/releases/download/v#{version}/Job-Harness-v#{version}-#{arch}-apple-darwin.app.zip"
  name "Job Harness"
  desc "Desktop workbench for a local-first job search ledger"
  homepage "https://github.com/machineyearningengineer/job-harness"

  app "Job Harness.app"

  caveats <<~EOS
    Job Harness.app is not signed with an Apple Developer ID. The first time, right-click it
    in /Applications and choose Open, or run:
      xattr -d com.apple.quarantine "/Applications/Job Harness.app"
  EOS
end
