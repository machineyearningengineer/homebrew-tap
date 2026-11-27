class JobHarness < Formula
  desc "Local-first job search ledger, application tracker and MCP server for AI agents"
  homepage "https://github.com/machineyearningengineer/job-harness"
  # Version and checksums are rewritten by job-harness's release workflow.
  version "0.4.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/machineyearningengineer/job-harness/releases/download/v#{version}/job-harness-v#{version}-aarch64-apple-darwin.tar.gz"
      sha256 "f6db80cc21f3607e02f5c2dd1bda9b78507bfebb3589701f022b940b36b31f3e" # aarch64-apple-darwin
    end
    on_intel do
      url "https://github.com/machineyearningengineer/job-harness/releases/download/v#{version}/job-harness-v#{version}-x86_64-apple-darwin.tar.gz"
      sha256 "f162ed8fe471ea23188af324f2bd4ec0b9acd7c0c8dbcc09f390307e436f8ca1" # x86_64-apple-darwin
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/machineyearningengineer/job-harness/releases/download/v#{version}/job-harness-v#{version}-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "77dae899694d3fb90fb28236faaf98f675e4488ea8f72fc385ca0daedf556de3" # aarch64-unknown-linux-gnu
    end
    on_intel do
      url "https://github.com/machineyearningengineer/job-harness/releases/download/v#{version}/job-harness-v#{version}-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "60c85a3046c791f494e984c896c2470bad9a8e35b4839c6948f0b3da3954ff5b" # x86_64-unknown-linux-gnu
    end
  end

  def install
    bin.install "job-harness"
    bin.install_symlink "job-harness" => "jh"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/jh --version")
  end
end
