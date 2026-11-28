cask "job-harness-desktop" do
  arch arm: "aarch64", intel: "x86_64"

  # Version and checksums are rewritten by job-harness's release workflow.
  version "0.6.0"
  sha256 arm:   "65cc296e374e49ade13bb6993ca119bed04286bf9ae8f2b2a32c3883ae8e973c", # aarch64-apple-darwin
         intel: "897bd19beaaa9f41ff7060f7715e419a50d22708b49ef9b005fb6e719449d6e2"  # x86_64-apple-darwin

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
