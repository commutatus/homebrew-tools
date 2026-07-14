class CmTools < Formula
  desc "Internal CLI tool for Commutatus — syncs AI workflow rules, skills, and workflows"
  homepage "https://github.com/commutatus/cm-tools"
  version "1.1.0"

  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/commutatus/homebrew-tools/releases/download/cm-tools-v1.1.0/cm-tools_darwin_arm64.tar.gz"
    sha256 "5782615296efff3f07433c882e69eb99dac5cda2c4c5d95e0119f52988a583dc"
  elsif OS.mac? && Hardware::CPU.intel?
    url "https://github.com/commutatus/homebrew-tools/releases/download/cm-tools-v1.1.0/cm-tools_darwin_amd64.tar.gz"
    sha256 "c3f8743e763678c0f3a04e156ecf87a3b25327ddd8ccc240eba6a5185c77209b"
  elsif OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/commutatus/homebrew-tools/releases/download/cm-tools-v1.1.0/cm-tools_linux_arm64.tar.gz"
    sha256 "b7330962905f165125ff3fd3fcb50ece24edeb15e5b10191f7b59b695ad2c59d"
  elsif OS.linux? && Hardware::CPU.intel?
    url "https://github.com/commutatus/homebrew-tools/releases/download/cm-tools-v1.1.0/cm-tools_linux_amd64.tar.gz"
    sha256 "db2127b2a8a5e1161928a59c941256855ff7308144a7e5d2f631215edf8d07ee"
  end

  def install
    bin.install "cm-tools"
  end
end