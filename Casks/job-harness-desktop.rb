cask "job-harness-desktop" do
  arch arm: "aarch64", intel: "x86_64"

  # Version and checksums are rewritten by job-harness's release workflow.
  version "0.4.2"
  sha256 arm:   "4d069af05dab065948e7a25795377179a481260e79b7729636ad102869a71a06", # aarch64-apple-darwin
         intel: "896536ba95be4dc7374b8cc333ffffb16c649805cccfe6eb3a6fc518760e9b4e"  # x86_64-apple-darwin

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
