cask "stirling-pdf" do
  version "3.0.0"
  sha256 "057fad6f16c3091ac902d93ba6a63243f1f90c3a77b82c1cb0e68da4bd0ece66"

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
