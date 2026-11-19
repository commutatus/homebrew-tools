class CmTools < Formula
  desc "Internal CLI tool for Commutatus — syncs AI workflow rules, skills, and workflows"
  homepage "https://github.com/commutatus/cm-tools"
  version "1.3.6"

  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/commutatus/homebrew-tools/releases/download/cm-tools-v1.3.6/cm-tools_darwin_arm64.tar.gz"
    sha256 "d34ac9f2a944816617b17fe3c7f26de9459a032214a513cb2645ae6025ec8cb4"
  elsif OS.mac? && Hardware::CPU.intel?
    url "https://github.com/commutatus/homebrew-tools/releases/download/cm-tools-v1.3.6/cm-tools_darwin_amd64.tar.gz"
    sha256 "983acd30ddcaf372c54108783a5d184c226236d3d8c20227503090617c10d2e4"
  elsif OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/commutatus/homebrew-tools/releases/download/cm-tools-v1.3.6/cm-tools_linux_arm64.tar.gz"
    sha256 "cad68285a4e3d2fe73fc609f7579d8ae8b871e9065a0e04add6149a4f0334ba8"
  elsif OS.linux? && Hardware::CPU.intel?
    url "https://github.com/commutatus/homebrew-tools/releases/download/cm-tools-v1.3.6/cm-tools_linux_amd64.tar.gz"
    sha256 "5e8dbb4fa08ac664b0ecccd34ba660a57a6956988d3ada1c619ae6ffebcabe9b"
  end

  def install
    bin.install "cm-tools"
  end
end