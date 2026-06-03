class CmTools < Formula
  desc "Internal CLI tool for Commutatus — syncs Windsurf rules, skills, and workflows"
  homepage "https://github.com/commutatus/cm-tools"
  version "0.1.10"

  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/commutatus/homebrew-tools/releases/download/cm-tools-v0.1.10/cm-tools_darwin_arm64.tar.gz"
    sha256 "f2e95189c905f7f6869bb70b4cc2c10ccba66b971727be34b76da9605f2c9483"
  elsif OS.mac? && Hardware::CPU.intel?
    url "https://github.com/commutatus/homebrew-tools/releases/download/cm-tools-v0.1.10/cm-tools_darwin_amd64.tar.gz"
    sha256 "f71e81920a3206da12cf562376151f4dfea396f9f0ce589747b662f389bc13fb"
  elsif OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/commutatus/homebrew-tools/releases/download/cm-tools-v0.1.10/cm-tools_linux_arm64.tar.gz"
    sha256 "a32047e4faa390ff857997796855355c941e21715a9092ffda385d1c4782a3b4"
  elsif OS.linux? && Hardware::CPU.intel?
    url "https://github.com/commutatus/homebrew-tools/releases/download/cm-tools-v0.1.10/cm-tools_linux_amd64.tar.gz"
    sha256 "397a73daf8487c9fd89a164f1361f2ecd01ad1e63d5e28edc8a7dfd8d7fc96b7"
  end

  def install
    bin.install "cm-tools"
  end
end