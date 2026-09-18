class CmTools < Formula
  desc "Internal CLI tool for Commutatus — syncs AI workflow rules, skills, and workflows"
  homepage "https://github.com/commutatus/cm-tools"
  version "1.3.3"

  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/commutatus/homebrew-tools/releases/download/cm-tools-v1.3.3/cm-tools_darwin_arm64.tar.gz"
    sha256 "bb302584741c01d0af7ca3bc533aab02edc313dce6789e690fc51836d04b5cbb"
  elsif OS.mac? && Hardware::CPU.intel?
    url "https://github.com/commutatus/homebrew-tools/releases/download/cm-tools-v1.3.3/cm-tools_darwin_amd64.tar.gz"
    sha256 "4a5ca7d49e9cb742ee504b32ab18e03d2b49ab17131b0b1537af074823693450"
  elsif OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/commutatus/homebrew-tools/releases/download/cm-tools-v1.3.3/cm-tools_linux_arm64.tar.gz"
    sha256 "3e7d039603c0cad8a9eb27f3a0c461faf9e9e14dfb99ebf0509adab69d958ff2"
  elsif OS.linux? && Hardware::CPU.intel?
    url "https://github.com/commutatus/homebrew-tools/releases/download/cm-tools-v1.3.3/cm-tools_linux_amd64.tar.gz"
    sha256 "eb90547d35aa06f62804503d64011334eca78fd5be831cd3f55f5534882e5122"
  end

  def install
    bin.install "cm-tools"
  end
end