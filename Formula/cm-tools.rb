class CmTools < Formula
  desc "Internal CLI tool for Commutatus — syncs AI workflow rules, skills, and workflows"
  homepage "https://github.com/commutatus/cm-tools"
  version "1.0.1"

  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/commutatus/homebrew-tools/releases/download/cm-tools-v1.0.1/cm-tools_darwin_arm64.tar.gz"
    sha256 "815f405f80f193192f6727bcc2d7305ba0cf0e7d5866ee8467aa25287c5dad28"
  elsif OS.mac? && Hardware::CPU.intel?
    url "https://github.com/commutatus/homebrew-tools/releases/download/cm-tools-v1.0.1/cm-tools_darwin_amd64.tar.gz"
    sha256 "7e131f6813c812596aafa925755ea615b33eed7a58f58362e823f74b3c541b47"
  elsif OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/commutatus/homebrew-tools/releases/download/cm-tools-v1.0.1/cm-tools_linux_arm64.tar.gz"
    sha256 "f44ee949c74985e548ac6e01a9547183725174a46760e99df79544ab503131b3"
  elsif OS.linux? && Hardware::CPU.intel?
    url "https://github.com/commutatus/homebrew-tools/releases/download/cm-tools-v1.0.1/cm-tools_linux_amd64.tar.gz"
    sha256 "7dd8c8948f3eac9cc7a15c736095798221e5813ead0190400839ab41c1c76c82"
  end

  def install
    bin.install "cm-tools"
  end
end