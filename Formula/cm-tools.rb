class CmTools < Formula
  desc "Internal CLI tool for Commutatus — syncs AI workflow rules, skills, and workflows"
  homepage "https://github.com/commutatus/cm-tools"
  version "1.3.4"

  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/commutatus/homebrew-tools/releases/download/cm-tools-v1.3.4/cm-tools_darwin_arm64.tar.gz"
    sha256 "da997781ac78245566d91a55a1d5642e7ca76a25378a2a7258b36a4618929ccc"
  elsif OS.mac? && Hardware::CPU.intel?
    url "https://github.com/commutatus/homebrew-tools/releases/download/cm-tools-v1.3.4/cm-tools_darwin_amd64.tar.gz"
    sha256 "5e4b1fecf8e6f7934f095ffd5df477e3f43d5be5590e90680b38f81d62de6ab5"
  elsif OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/commutatus/homebrew-tools/releases/download/cm-tools-v1.3.4/cm-tools_linux_arm64.tar.gz"
    sha256 "98644436e4c1265151832c72323ca2c554c9fd800ba5d1bd55e232c5f949a29f"
  elsif OS.linux? && Hardware::CPU.intel?
    url "https://github.com/commutatus/homebrew-tools/releases/download/cm-tools-v1.3.4/cm-tools_linux_amd64.tar.gz"
    sha256 "3dfc06bca43c5414252b273153ede4241bdc945f2aedc9eeb2f9421defcd4fee"
  end

  def install
    bin.install "cm-tools"
  end
end