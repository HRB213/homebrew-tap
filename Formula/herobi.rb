VERSION="0.2.0"

class Herobi < Formula
  desc "Simple CLI tool to list files and directories"
  homepage "https://github.com/HRB213/herobi"
  version VERSION
  license "MIT"

  url "https://github.com/HRB213/herobi/releases/download/v0.2.0/herobi-0.2.0-arm64-darwin.tar.gz"
  sha256 "2cf5d055ac8b328ade54b40cfce5642c85f6286c1b0b666b77d640da9ec0303f"

  def install
    bin.install "herobi"
    #bash_completion.install "completions/bash/herobi"
    #zsh_completion.install "completions/zsh/_herobi"
    #fish_completion.install "completions/fish/herobi"
  end

  test do
    system "#{bin}/herobi", "--version"
  end
end