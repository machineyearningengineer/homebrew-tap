class JobHarness < Formula
  desc "Local-first job search ledger, application tracker and MCP server for AI agents"
  homepage "https://github.com/machineyearningengineer/job-harness"
  # Version and checksums are rewritten by job-harness's release workflow.
  version "0.6.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/machineyearningengineer/job-harness/releases/download/v#{version}/job-harness-v#{version}-aarch64-apple-darwin.tar.gz"
      sha256 "3fc7d48c18e1ad1c9c5dfdd972a8ebf68d2cebc077ac87e90383a3d3305357f7" # aarch64-apple-darwin
    end
    on_intel do
      url "https://github.com/machineyearningengineer/job-harness/releases/download/v#{version}/job-harness-v#{version}-x86_64-apple-darwin.tar.gz"
      sha256 "e9a593f97ac799241badf7104f238b7f8cb4466d501406b25f561e64befc400f" # x86_64-apple-darwin
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/machineyearningengineer/job-harness/releases/download/v#{version}/job-harness-v#{version}-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "c3e212bb2f11f477e1b681e62aae4791bd03474a714e56152e44f3e0bddedda7" # aarch64-unknown-linux-gnu
    end
    on_intel do
      url "https://github.com/machineyearningengineer/job-harness/releases/download/v#{version}/job-harness-v#{version}-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "c1a904c26e479036b76d2eaa803c3ce7eaeaa596c46e35542f7f39158d632096" # x86_64-unknown-linux-gnu
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
