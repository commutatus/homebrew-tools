class CmTools < Formula
  desc "Internal CLI tool for Commutatus — syncs Windsurf rules, skills, and workflows"
  homepage "https://github.com/commutatus/cm-tools"
  version "0.1.8"

  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/commutatus/homebrew-tools/releases/download/cm-tools-v0.1.8/cm-tools_darwin_arm64.tar.gz"
    sha256 "dae95ae7c6ec8f192948581ed1b377e61082ef6d7569bd4b2f272bc8e0a4ea0f"
  elsif OS.mac? && Hardware::CPU.intel?
    url "https://github.com/commutatus/homebrew-tools/releases/download/cm-tools-v0.1.8/cm-tools_darwin_amd64.tar.gz"
    sha256 "c95d76bff8c69758bea19f45d77971e32bb067df78271dc7a9173fb7d221c161"
  elsif OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/commutatus/homebrew-tools/releases/download/cm-tools-v0.1.8/cm-tools_linux_arm64.tar.gz"
    sha256 "2c4e112edfd64b8762c72e399ded54db4524b45a9724c90559be91fe36e9b6bc"
  elsif OS.linux? && Hardware::CPU.intel?
    url "https://github.com/commutatus/homebrew-tools/releases/download/cm-tools-v0.1.8/cm-tools_linux_amd64.tar.gz"
    sha256 "c741a1597f3c1a7a5e3a6cb443c6bf68dcd6dd476790199d3c9ae53e88d67644"
  end

  def install
    bin.install "cm-tools"
  end
end