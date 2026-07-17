class CmTools < Formula
  desc "Internal CLI tool for Commutatus — syncs AI workflow rules, skills, and workflows"
  homepage "https://github.com/commutatus/cm-tools"
  version "1.3.0"

  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/commutatus/homebrew-tools/releases/download/cm-tools-v1.3.0/cm-tools_darwin_arm64.tar.gz"
    sha256 "2eced2c263d7970fb77834d618036ce0c4ceb303ad00424476adb5a279952447"
  elsif OS.mac? && Hardware::CPU.intel?
    url "https://github.com/commutatus/homebrew-tools/releases/download/cm-tools-v1.3.0/cm-tools_darwin_amd64.tar.gz"
    sha256 "89889d8afcf95812532c3f3e35bdb048ec4af747773acbbd70561b2ad1a78640"
  elsif OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/commutatus/homebrew-tools/releases/download/cm-tools-v1.3.0/cm-tools_linux_arm64.tar.gz"
    sha256 "43b7b16634ec9fdb0ddc8cf294368f4cdcc153002c49d689e13e7234b9fada7d"
  elsif OS.linux? && Hardware::CPU.intel?
    url "https://github.com/commutatus/homebrew-tools/releases/download/cm-tools-v1.3.0/cm-tools_linux_amd64.tar.gz"
    sha256 "7d9cdaca496dae188431b5f602b402e319503338b008bbad62b92565dc3d0bd5"
  end

  def install
    bin.install "cm-tools"
  end
end