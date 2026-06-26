VERSION="0.1.0"

class Herobi < Formula
  desc "Simple CLI tool to list files and directories"
  homepage "https://github.com/HRB213/herobi"
  version VERSION
  license "MIT"

  url "https://github.com/HRB213/herobi/releases/download/v0.1.0/herobi-0.1.0-arm64-darwin.tar.gz"
  sha256 "9ccf88188032718c10ca3db3e6a8cf1008f640893f28422b30ddfab3db953010"

  def install
    bin.install "herobi"
    bash_completion.install "completions/bash/herobi"
    zsh_completion.install "completions/zsh/_herobi"
    fish_completion.install "completions/fish/herobi"
  end

  test do
    system "#{bin}/herobi", "--version"
  end
end