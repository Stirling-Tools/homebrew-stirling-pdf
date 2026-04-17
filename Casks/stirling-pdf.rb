cask "stirling-pdf" do
  arch arm: "aarch64", intel: "x86_64"

  version "2.9.2"

  on_arm do
    sha256 "38cdedd27b559556bed2bf5a28303bca8b26cee2351fd13b86e4f4cbc5a9b95e"
    url "https://github.com/Stirling-Tools/Stirling-PDF/releases/download/v#{version}/Stirling-PDF-macos-aarch64.dmg",
        verified: "github.com/Stirling-Tools/Stirling-PDF/"
  end
  on_intel do
    sha256 "4070495dcc283cdafc9cba3fe363cdadb31f7932fb33bfbe1b4f7540661f9c11"
    url "https://github.com/Stirling-Tools/Stirling-PDF/releases/download/v#{version}/Stirling-PDF-macos-x86_64.dmg",
        verified: "github.com/Stirling-Tools/Stirling-PDF/"
  end

  name "Stirling-PDF"
  desc "Locally hosted PDF manipulation tool"
  homepage "https://www.stirlingpdf.com"

  app "Stirling-PDF.app"

  zap trash: [
    "~/Library/Application Support/stirling.pdf.dev",
    "~/Library/Logs/stirling.pdf.dev",
    "~/Library/Preferences/stirling.pdf.dev.plist",
    "~/Library/Saved Application State/stirling.pdf.dev.savedState",
    "~/Library/WebKit/stirling.pdf.dev",
  ]
end
