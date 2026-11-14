class CmTools < Formula
  desc "Internal CLI tool for Commutatus — syncs AI workflow rules, skills, and workflows"
  homepage "https://github.com/commutatus/cm-tools"
  version "1.3.5"

  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/commutatus/homebrew-tools/releases/download/cm-tools-v1.3.5/cm-tools_darwin_arm64.tar.gz"
    sha256 "176d8bf3046496dfa696769c6f05ae75112749a5d754373910439ed962fbbb1b"
  elsif OS.mac? && Hardware::CPU.intel?
    url "https://github.com/commutatus/homebrew-tools/releases/download/cm-tools-v1.3.5/cm-tools_darwin_amd64.tar.gz"
    sha256 "591011a663c0f8957817fd018f9daa73c7c313bf0d5a57b18f761a4aa589f22c"
  elsif OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/commutatus/homebrew-tools/releases/download/cm-tools-v1.3.5/cm-tools_linux_arm64.tar.gz"
    sha256 "aecc00042ffe93421f64c631e1d78430c3bcc82fd6827e4733ef13b1e0058c47"
  elsif OS.linux? && Hardware::CPU.intel?
    url "https://github.com/commutatus/homebrew-tools/releases/download/cm-tools-v1.3.5/cm-tools_linux_amd64.tar.gz"
    sha256 "3671e0e2acad03de33dcc09f464156d6f22474ba7e48618a5f6364535a5d890b"
  end

  def install
    bin.install "cm-tools"
  end
end