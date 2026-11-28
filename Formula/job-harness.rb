class JobHarness < Formula
  desc "Local-first job search ledger, application tracker and MCP server for AI agents"
  homepage "https://github.com/machineyearningengineer/job-harness"
  # Version and checksums are rewritten by job-harness's release workflow.
  version "0.5.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/machineyearningengineer/job-harness/releases/download/v#{version}/job-harness-v#{version}-aarch64-apple-darwin.tar.gz"
      sha256 "941734037db026ea31a40bb76dbbf8c998b8911bb83a7793e5e8c78e184e776d" # aarch64-apple-darwin
    end
    on_intel do
      url "https://github.com/machineyearningengineer/job-harness/releases/download/v#{version}/job-harness-v#{version}-x86_64-apple-darwin.tar.gz"
      sha256 "bbf380139a3fde35520809f8284789daf13df6ab5b2b8f0b43c88405fbad2f80" # x86_64-apple-darwin
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/machineyearningengineer/job-harness/releases/download/v#{version}/job-harness-v#{version}-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "31fa305e2ec4c6d54b00a04a69d54f8aeeb8d1f424f0175db9c8d12d43fc4dad" # aarch64-unknown-linux-gnu
    end
    on_intel do
      url "https://github.com/machineyearningengineer/job-harness/releases/download/v#{version}/job-harness-v#{version}-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "adb4c78686a48fb332521c811310aac41e958985afb1335d5a37decf7cd0b86e" # x86_64-unknown-linux-gnu
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
