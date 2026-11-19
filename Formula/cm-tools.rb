class CmTools < Formula
  desc "Internal CLI tool for Commutatus — syncs AI workflow rules, skills, and workflows"
  homepage "https://github.com/commutatus/cm-tools"
  version "1.3.8"

  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/commutatus/homebrew-tools/releases/download/cm-tools-v1.3.8/cm-tools_darwin_arm64.tar.gz"
    sha256 "f73ffeb296f9732caed7326f74c03469b4ac0df1b639073b9d7b6fe28ab1f4a7"
  elsif OS.mac? && Hardware::CPU.intel?
    url "https://github.com/commutatus/homebrew-tools/releases/download/cm-tools-v1.3.8/cm-tools_darwin_amd64.tar.gz"
    sha256 "58b482dc2bd6dcbe8f4ad4a5184d968a91ea9c257e835d94bd742537d16cc032"
  elsif OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/commutatus/homebrew-tools/releases/download/cm-tools-v1.3.8/cm-tools_linux_arm64.tar.gz"
    sha256 "87dd4f8de9bd2147d5908115559c2a69cd11fdf4995f450209624d73d371fb59"
  elsif OS.linux? && Hardware::CPU.intel?
    url "https://github.com/commutatus/homebrew-tools/releases/download/cm-tools-v1.3.8/cm-tools_linux_amd64.tar.gz"
    sha256 "97b74dd1eb4ef1373eadddc7363c09392caafef882528a1422ecd557b3b99670"
  end

  def install
    bin.install "cm-tools"
  end
end