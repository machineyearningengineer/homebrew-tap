class JobHarness < Formula
  desc "Local-first job search ledger, application tracker and MCP server for AI agents"
  homepage "https://github.com/machineyearningengineer/job-harness"
  # Version and checksums are rewritten by job-harness's release workflow.
  version "0.5.3"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/machineyearningengineer/job-harness/releases/download/v#{version}/job-harness-v#{version}-aarch64-apple-darwin.tar.gz"
      sha256 "8e809f7cec7dcc6b2833780639c24cdd15c5a26427423262590f83cc2d2fbc88" # aarch64-apple-darwin
    end
    on_intel do
      url "https://github.com/machineyearningengineer/job-harness/releases/download/v#{version}/job-harness-v#{version}-x86_64-apple-darwin.tar.gz"
      sha256 "00ac7dc938192d800806bc2f6f5629281319c2fa56bbed8252ee647bcdf3db19" # x86_64-apple-darwin
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/machineyearningengineer/job-harness/releases/download/v#{version}/job-harness-v#{version}-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "307e8c1b7c9df851764b534c997d4ebc83db36680cff192d3dbcb5e655cc4437" # aarch64-unknown-linux-gnu
    end
    on_intel do
      url "https://github.com/machineyearningengineer/job-harness/releases/download/v#{version}/job-harness-v#{version}-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "56d956262d059f102054d08bfb996b16fc7b070ab653d60ecbb47141d8f8e6e2" # x86_64-unknown-linux-gnu
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
