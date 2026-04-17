cask "stirling-pdf" do
  arch arm: "aarch64", intel: "x86_64"

  version "2.7.3"

  on_arm do
    sha256 "PLACEHOLDER_ARM64_SHA256"
    url "https://github.com/Stirling-Tools/Stirling-PDF/releases/download/v#{version}/Stirling-PDF-macos-aarch64.dmg"
  end
  on_intel do
    sha256 "PLACEHOLDER_X86_64_SHA256"
    url "https://github.com/Stirling-Tools/Stirling-PDF/releases/download/v#{version}/Stirling-PDF-macos-x86_64.dmg"
  end

  name "Stirling-PDF"
  desc "Locally hosted PDF manipulation tool"
  homepage "https://stirlingtools.com"

  license :no_redistribute

  app "Stirling-PDF.app"

  zap trash: [
    "~/Library/Application Support/stirling.pdf.dev",
    "~/Library/Logs/stirling.pdf.dev",
    "~/Library/Preferences/stirling.pdf.dev.plist",
    "~/Library/Saved Application State/stirling.pdf.dev.savedState",
    "~/Library/WebKit/stirling.pdf.dev",
  ]
end
