cask "stirling-pdf" do
  version "2.14.3"
  sha256 "25073f75260c75854af3c81b457958471142b204f3f37c1142b41c75c5704a55"

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
