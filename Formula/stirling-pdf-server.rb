class StirlingPdfServer < Formula
  desc "Locally hosted, web-based PDF manipulation tool (server variant)"
  homepage "https://www.stirling.com"
  version "2.9.2"

  url "https://github.com/Stirling-Tools/Stirling-PDF/releases/download/v#{version}/Stirling-PDF-with-login.jar"
  sha256 "3d51a002193cbe4f5530f1e29b6acd986545e77b8a07427e9954ab8bcef21986"

  license "MIT"

  depends_on "openjdk"

  def install
    libexec.install "Stirling-PDF-with-login.jar" => "stirling-pdf-server.jar"
    (bin/"stirling-pdf-server").write <<~EOS
      #!/bin/bash
      exec "#{Formula["openjdk"].opt_bin}/java" -jar "#{libexec}/stirling-pdf-server.jar" "$@"
    EOS
  end

  def plist
    <<~EOS
      <?xml version="1.0" encoding="UTF-8"?>
      <!DOCTYPE plist PUBLIC "-//Apple//DTD PLIST 1.0//EN" "http://www.apple.com/DTDs/PropertyList-1.0.dtd">
      <plist version="1.0">
        <dict>
          <key>Label</key>
          <string>#{plist_name}</string>
          <key>ProgramArguments</key>
          <array>
            <string>#{Formula["openjdk"].opt_bin}/java</string>
            <string>-jar</string>
            <string>#{libexec}/stirling-pdf-server.jar</string>
          </array>
          <key>RunAtLoad</key>
          <true/>
          <key>KeepAlive</key>
          <true/>
          <key>StandardOutPath</key>
          <string>#{var}/log/stirling-pdf-server.log</string>
          <key>StandardErrorPath</key>
          <string>#{var}/log/stirling-pdf-server.log</string>
          <key>WorkingDirectory</key>
          <string>#{var}/stirling-pdf-server</string>
        </dict>
      </plist>
    EOS
  end

  def post_install
    (var/"stirling-pdf-server").mkpath
    (var/"log").mkpath
  end

  test do
    assert_predicate libexec/"stirling-pdf-server.jar", :exist?
    system bin/"stirling-pdf-server", "--version"
  end
end
