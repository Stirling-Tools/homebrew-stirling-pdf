cask "stirling-pdf" do
  version "2.10.1"
  sha256 "f3d60a82b2ed4bfcf4c6b915135d84b1b0d538f38553f86382a126f915028d10"

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
