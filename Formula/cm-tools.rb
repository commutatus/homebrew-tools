class CmTools < Formula
  desc "Internal CLI tool for Commutatus — syncs AI workflow rules, skills, and workflows"
  homepage "https://github.com/commutatus/cm-tools"
  version "1.0.0"

  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/commutatus/homebrew-tools/releases/download/cm-tools-v1.0.0/cm-tools_darwin_arm64.tar.gz"
    sha256 "ce2ad697031bf4dd7ee153e9a4e0d2ae19e1717c1625d6bf37093beec5696eed"
  elsif OS.mac? && Hardware::CPU.intel?
    url "https://github.com/commutatus/homebrew-tools/releases/download/cm-tools-v1.0.0/cm-tools_darwin_amd64.tar.gz"
    sha256 "05c6ebd4adc8fb0269a4985a7e288ced1e2ec44c9a1acb4585588c79c3f21893"
  elsif OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/commutatus/homebrew-tools/releases/download/cm-tools-v1.0.0/cm-tools_linux_arm64.tar.gz"
    sha256 "c851a4c312e75bf4b9586485d0722e3ce71e353efe0ecc971e678ca15d80d4b5"
  elsif OS.linux? && Hardware::CPU.intel?
    url "https://github.com/commutatus/homebrew-tools/releases/download/cm-tools-v1.0.0/cm-tools_linux_amd64.tar.gz"
    sha256 "3c5714f547da206172d440ca17ae3298608847fb2c94f0b2203ad160c6141fca"
  end

  def install
    bin.install "cm-tools"
  end
end