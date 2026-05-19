class CmTools < Formula
  desc "Internal CLI tool for Commutatus — syncs Windsurf rules, skills, and workflows"
  homepage "https://github.com/commutatus/cm-tools"
  version "0.1.9"

  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/commutatus/homebrew-tools/releases/download/cm-tools-v0.1.9/cm-tools_darwin_arm64.tar.gz"
    sha256 "1b0acc1a5a76bd711cee25c62118c21a8c9c8fc231f9793802b1eb0e4929b3e1"
  elsif OS.mac? && Hardware::CPU.intel?
    url "https://github.com/commutatus/homebrew-tools/releases/download/cm-tools-v0.1.9/cm-tools_darwin_amd64.tar.gz"
    sha256 "2e1e0f0648eb7ec7414d2a40ade232d3add218b9a58628399bfb521181e3e3b6"
  elsif OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/commutatus/homebrew-tools/releases/download/cm-tools-v0.1.9/cm-tools_linux_arm64.tar.gz"
    sha256 "743e029903ab45c27bf136d354517e4267550d34a789eff0deae50fe12589296"
  elsif OS.linux? && Hardware::CPU.intel?
    url "https://github.com/commutatus/homebrew-tools/releases/download/cm-tools-v0.1.9/cm-tools_linux_amd64.tar.gz"
    sha256 "ccb497ffa1b4ee085260775190c3a215eadddd1a4c1f60f9106ba6d7caa48758"
  end

  def install
    bin.install "cm-tools"
  end
end