cask "job-harness-desktop" do
  arch arm: "aarch64", intel: "x86_64"

  # Version and checksums are rewritten by job-harness's release workflow.
  version "0.5.1"
  sha256 arm:   "8f49f7a93e341f0a4e8c40de7b3dd844c9d4044877dc6ced181227b9d1d9f898", # aarch64-apple-darwin
         intel: "bc4c86847de0353d9cbabfad9a8b152e95335bf54e5c081c8202d47da2895b60"  # x86_64-apple-darwin

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
