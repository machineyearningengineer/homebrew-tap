cask "job-harness-desktop" do
  arch arm: "aarch64", intel: "x86_64"

  # Version and checksums are rewritten by job-harness's release workflow.
  version "0.5.0"
  sha256 arm:   "4a7278c7e484e53721702f0a742a9f7bf0a5d7baff717afbdca14a5a037571e5", # aarch64-apple-darwin
         intel: "286760fe083445b4a7d23e2befcaa7d2c9c97729c77f332108bd175379040770"  # x86_64-apple-darwin

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
