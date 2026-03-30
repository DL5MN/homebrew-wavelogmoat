cask "wavelogmate" do
  version "1.1.1"
  sha256 "d0e46fad7afcbb4769080bcfab4fb43c85b27dbb8cd5bc860b449b9154c0991b"

  url "https://github.com/dl5mn/WaveLogMate/releases/download/v#{version}/WaveLogMate-v#{version}.dmg"
  name "WaveLogMate"
  desc "Native macOS menu bar app for automatic QSO logging from WSJT-X to Wavelog"
  homepage "https://github.com/dl5mn/WaveLogMate"

  depends_on macos: ">= :sonoma"

  app "WaveLogMate.app"

  zap trash: [
    "~/Library/Preferences/de.dl5mn.WaveLogMate.plist",
    "~/Library/Caches/de.dl5mn.WaveLogMate",
  ]
end
