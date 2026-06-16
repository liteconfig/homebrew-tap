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
      sha256 "aafe7cc761fde1180a09a73522941a80a9f7ca1cb901fc258df87de7966403b4"
    end
    on_intel do
      url "https://github.com/liteconfig/liteconfig/releases/download/v#{version}/liteconfig-v#{version}-x86_64-apple-darwin.tar.gz"
      sha256 "ef02ce39ba1f38c5c6a74986c4a2528e06e93a9b7ee98c6ddc1be1f919e79391"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/liteconfig/liteconfig/releases/download/v#{version}/liteconfig-v#{version}-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "f3d3fba3c5e9a026d4b9d5e81e9a27a286d378c19b54d0173d83318fd69b137d"
    end
    on_intel do
      url "https://github.com/liteconfig/liteconfig/releases/download/v#{version}/liteconfig-v#{version}-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "12dac8c633f7746a994ec05df65ba8003c1867e55aa235eefdb2198de8b33d8f"
    end
  end

  def install
    bin.install "liteconfig"
  end

  test do
    assert_match "liteconfig", shell_output("#{bin}/liteconfig --version")
  end
end
