cask "stirling-pdf" do
  arch arm: "aarch64", intel: "x86_64"

  version "2.10.0"

  on_arm do
    sha256 "2918ef73d55dc0e52c126806dc21f81be9503b8ea896968df59760cc5733d63a"
    url "https://github.com/Stirling-Tools/Stirling-PDF/releases/download/v#{version}/Stirling-PDF-macos-aarch64.dmg",
        verified: "github.com/Stirling-Tools/Stirling-PDF/"
  end
  on_intel do
    sha256 "6ca4a900236e2ce6689260ccd4126542c17ea9fbb0a976e0fe1449d9431025b5"
    url "https://github.com/Stirling-Tools/Stirling-PDF/releases/download/v#{version}/Stirling-PDF-macos-x86_64.dmg",
        verified: "github.com/Stirling-Tools/Stirling-PDF/"
  end

  name "Stirling-PDF"
  desc "Locally hosted PDF manipulation tool"
  homepage "https://www.stirling.com"

  app "Stirling-PDF.app"

  zap trash: [
    "~/Library/Application Support/stirling.pdf.dev",
    "~/Library/Logs/stirling.pdf.dev",
    "~/Library/Preferences/stirling.pdf.dev.plist",
    "~/Library/Saved Application State/stirling.pdf.dev.savedState",
    "~/Library/WebKit/stirling.pdf.dev",
  ]
end
