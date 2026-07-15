class CmTools < Formula
  desc "Internal CLI tool for Commutatus — syncs AI workflow rules, skills, and workflows"
  homepage "https://github.com/commutatus/cm-tools"
  version "1.2.0"

  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/commutatus/homebrew-tools/releases/download/cm-tools-v1.2.0/cm-tools_darwin_arm64.tar.gz"
    sha256 "5fcaa2c681300a12ca8229311d46cb958f6e2b32bd97dc39b0ead3dd2f641057"
  elsif OS.mac? && Hardware::CPU.intel?
    url "https://github.com/commutatus/homebrew-tools/releases/download/cm-tools-v1.2.0/cm-tools_darwin_amd64.tar.gz"
    sha256 "021686e5692f19900a2dbde83851c7efa1cbb02a1f2ca1f667161047de1a48c2"
  elsif OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/commutatus/homebrew-tools/releases/download/cm-tools-v1.2.0/cm-tools_linux_arm64.tar.gz"
    sha256 "e1e904370b279c392c840b76cd9969825f85479a2104316e8447fe3b3b1dd076"
  elsif OS.linux? && Hardware::CPU.intel?
    url "https://github.com/commutatus/homebrew-tools/releases/download/cm-tools-v1.2.0/cm-tools_linux_amd64.tar.gz"
    sha256 "851fa00d6fa12f94c1015834aa60349741c8d79bc08b725f9525a9290eea2f89"
  end

  def install
    bin.install "cm-tools"
  end
end