cask "job-harness-desktop" do
  arch arm: "aarch64", intel: "x86_64"

  # Version and checksums are rewritten by job-harness's release workflow.
  version "0.5.3"
  sha256 arm:   "2ef8b9f54e0ea3296687a44130a790b8e09f6e3af5946d17724ac7129af6cf6a", # aarch64-apple-darwin
         intel: "986d122dc1769ee3768afdefe0b46e7cfd2e4c1686978ea2a4aa436879294655"  # x86_64-apple-darwin

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
