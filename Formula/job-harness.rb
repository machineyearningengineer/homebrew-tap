class JobHarness < Formula
  desc "Local-first job search ledger, application tracker and MCP server for AI agents"
  homepage "https://github.com/machineyearningengineer/job-harness"
  # Version and checksums are rewritten by job-harness's release workflow.
  version "0.5.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/machineyearningengineer/job-harness/releases/download/v#{version}/job-harness-v#{version}-aarch64-apple-darwin.tar.gz"
      sha256 "9b21fb459a2bdab996a79e1b867945781b67e2819cb2ff1f5e76f46280d069db" # aarch64-apple-darwin
    end
    on_intel do
      url "https://github.com/machineyearningengineer/job-harness/releases/download/v#{version}/job-harness-v#{version}-x86_64-apple-darwin.tar.gz"
      sha256 "dffe12d215a46d2881c988b64d8289fafe6144728d563046338f55e297818d81" # x86_64-apple-darwin
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/machineyearningengineer/job-harness/releases/download/v#{version}/job-harness-v#{version}-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "5f3545ced3e17af5d1bfcc90508b3f9eb9e8c46a0cc8d7484cfdb94c802a8866" # aarch64-unknown-linux-gnu
    end
    on_intel do
      url "https://github.com/machineyearningengineer/job-harness/releases/download/v#{version}/job-harness-v#{version}-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "d6c392152597837f763bc1a7a5d45f748e4a86ff226c40be382d924198e7d687" # x86_64-unknown-linux-gnu
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
