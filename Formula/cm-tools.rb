class CmTools < Formula
  desc "Internal CLI tool for Commutatus — syncs AI workflow rules, skills, and workflows"
  homepage "https://github.com/commutatus/cm-tools"
  version "1.2.1"

  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/commutatus/homebrew-tools/releases/download/cm-tools-v1.2.1/cm-tools_darwin_arm64.tar.gz"
    sha256 "3f81bb37678133352d54e099b885c05cfbf11acc7069da85a7f840c66b6988cd"
  elsif OS.mac? && Hardware::CPU.intel?
    url "https://github.com/commutatus/homebrew-tools/releases/download/cm-tools-v1.2.1/cm-tools_darwin_amd64.tar.gz"
    sha256 "a363360115aa651f634fe65c0124faeecfa3cd51f61008bf8eb95a08086b7dd8"
  elsif OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/commutatus/homebrew-tools/releases/download/cm-tools-v1.2.1/cm-tools_linux_arm64.tar.gz"
    sha256 "e7528da9f3335af785e33556865d81f3f0b2d3df48e1f9552ac21fe02f52cda9"
  elsif OS.linux? && Hardware::CPU.intel?
    url "https://github.com/commutatus/homebrew-tools/releases/download/cm-tools-v1.2.1/cm-tools_linux_amd64.tar.gz"
    sha256 "034bb9c9e5b582264ca09d42cf3002f9b99a39f64efa9ac6503f50af6d7cbac1"
  end

  def install
    bin.install "cm-tools"
  end
end