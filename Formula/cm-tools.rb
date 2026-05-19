class CmTools < Formula
  desc "Internal CLI tool for Commutatus — syncs Windsurf rules, skills, and workflows"
  homepage "https://github.com/commutatus/cm-tools"
  version "0.1.1"

  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/commutatus/homebrew-tools/releases/download/cm-tools-v0.1.1/cm-tools_darwin_arm64.tar.gz"
    sha256 "b1bd706951812a0b73ccead50ef5692fe145cd4df5f8bac7687405940a898518"
  elsif OS.mac? && Hardware::CPU.intel?
    url "https://github.com/commutatus/homebrew-tools/releases/download/cm-tools-v0.1.1/cm-tools_darwin_amd64.tar.gz"
    sha256 "c184464cc8da7cff5a9ee32974433aaa78fbf4e4e9c17826293814be7b0112c4"
  elsif OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/commutatus/homebrew-tools/releases/download/cm-tools-v0.1.1/cm-tools_linux_arm64.tar.gz"
    sha256 "placeholder_linux_arm64_sha256"
  elsif OS.linux? && Hardware::CPU.intel?
    url "https://github.com/commutatus/homebrew-tools/releases/download/cm-tools-v0.1.1/cm-tools_linux_amd64.tar.gz"
    sha256 "placeholder_linux_amd64_sha256"
  end

  def install
    bin.install "cm-tools"
  end
end