cask "wavelogmoat" do
  version "0.2.0"
  sha256 "4fb41ebb3954553a613dcf9babb7493b5048cdaada7c25d7b9b7dd9a33b7d441"

  url "https://github.com/dl5mn/WaveLogMoat/releases/download/v#{version}/WaveLogMoat-v#{version}.dmg"
  name "WaveLogMoat"
  desc "Native macOS menu bar app for automatic QSO logging from WSJT-X to Wavelog"
  homepage "https://github.com/dl5mn/WaveLogMoat"

  depends_on macos: ">= :sonoma"

  app "WaveLogMoat.app"

  zap trash: [
    "~/Library/Preferences/de.dl5mn.WaveLogMoat.plist",
    "~/Library/Caches/de.dl5mn.WaveLogMoat",
  ]
end
