cask "stirling-pdf" do
  version "2.10.0"
  sha256 "0000000000000000000000000000000000000000000000000000000000000000"

  url "https://github.com/Stirling-Tools/Stirling-PDF/releases/download/v#{version}/Stirling-PDF-macos-universal.dmg",
      verified: "github.com/Stirling-Tools/Stirling-PDF/"

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
