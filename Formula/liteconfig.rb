# Homebrew formula template for liteconfig.
#
# Public install:
#   brew tap liteconfig/tap
#   brew install liteconfig
#
# Release automation renders this template into
# liteconfig/homebrew-tap/Formula/liteconfig.rb using the GitHub release assets
# and SHA256SUMS manifest from the tagged build.

class Liteconfig < Formula
  desc "Fast TUI for syncing AI coding agent configs, skills, MCP, and rules"
  homepage "https://github.com/liteconfig/liteconfig"
  version "0.1.0"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/liteconfig/liteconfig/releases/download/v#{version}/liteconfig-v#{version}-aarch64-apple-darwin.tar.gz"
      sha256 "5846a9642ae393b83a258ee5176da7e5afc1015ffe6fd5a1ce7ba22221dd3e3f"
    end
    on_intel do
      url "https://github.com/liteconfig/liteconfig/releases/download/v#{version}/liteconfig-v#{version}-x86_64-apple-darwin.tar.gz"
      sha256 "4c38e64a9cf39cccab78248c0f1f02faece236b6c04435c1f6aeb4e1d74d708d"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/liteconfig/liteconfig/releases/download/v#{version}/liteconfig-v#{version}-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "4cde6be8fd25eb6f000d97e31fab2c1b085f6bf7f9280c9aece269b06c93897b"
    end
    on_intel do
      url "https://github.com/liteconfig/liteconfig/releases/download/v#{version}/liteconfig-v#{version}-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "70dd33247bf57fc5cb8d764565d6b8e5772709d489746d554a2737ebccebbcf4"
    end
  end

  def install
    bin.install "liteconfig"
  end

  test do
    assert_match "liteconfig", shell_output("#{bin}/liteconfig --version")
  end
end
