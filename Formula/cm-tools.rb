class CmTools < Formula
  desc "Internal CLI tool for Commutatus — syncs AI workflow rules, skills, and workflows"
  homepage "https://github.com/commutatus/cm-tools"
  version "1.3.1"

  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/commutatus/homebrew-tools/releases/download/cm-tools-v1.3.1/cm-tools_darwin_arm64.tar.gz"
    sha256 "3f123896b24c27ac75c861dd8c1015f45c081abfbf6c97407f339147ed71ae60"
  elsif OS.mac? && Hardware::CPU.intel?
    url "https://github.com/commutatus/homebrew-tools/releases/download/cm-tools-v1.3.1/cm-tools_darwin_amd64.tar.gz"
    sha256 "a98da1695c69b3fee00300e6720231b35d01c21ee1c3f02cbb2151af4d96961d"
  elsif OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/commutatus/homebrew-tools/releases/download/cm-tools-v1.3.1/cm-tools_linux_arm64.tar.gz"
    sha256 "f9d01ef406c1abb231b512a56f1ed1053bf3c69d83315d8c6a42e6325f108fda"
  elsif OS.linux? && Hardware::CPU.intel?
    url "https://github.com/commutatus/homebrew-tools/releases/download/cm-tools-v1.3.1/cm-tools_linux_amd64.tar.gz"
    sha256 "874dc98d0f03634d84fa3b089251e9c890102cb9422f073a8eb90bc6220cd0a5"
  end

  def install
    bin.install "cm-tools"
  end
end