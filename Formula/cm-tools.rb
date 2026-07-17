class CmTools < Formula
  desc "Internal CLI tool for Commutatus — syncs AI workflow rules, skills, and workflows"
  homepage "https://github.com/commutatus/cm-tools"
  version "1.3.2"

  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/commutatus/homebrew-tools/releases/download/cm-tools-v1.3.2/cm-tools_darwin_arm64.tar.gz"
    sha256 "5e0093c0aad0180e78d06651e190370eb1a6b86322cd682d1e8e0f0c3cc88584"
  elsif OS.mac? && Hardware::CPU.intel?
    url "https://github.com/commutatus/homebrew-tools/releases/download/cm-tools-v1.3.2/cm-tools_darwin_amd64.tar.gz"
    sha256 "3f2f87259ed528362969526379ffa288e390bf0369ef4cf10812df650338f47f"
  elsif OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/commutatus/homebrew-tools/releases/download/cm-tools-v1.3.2/cm-tools_linux_arm64.tar.gz"
    sha256 "d648334d394089921553fbc7394dffb4bdd0b1a6d32c0aee9009ea14df447bd5"
  elsif OS.linux? && Hardware::CPU.intel?
    url "https://github.com/commutatus/homebrew-tools/releases/download/cm-tools-v1.3.2/cm-tools_linux_amd64.tar.gz"
    sha256 "5740df10b5763376ea231ea1d60fbd8a8b02d7f20e77097ae93d1c5181965183"
  end

  def install
    bin.install "cm-tools"
  end
end