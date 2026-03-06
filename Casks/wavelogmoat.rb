cask "wavelogmoat" do
  version "0.1.0"
  sha256 :no_check # TODO: Replace with actual SHA256 of the DMG once first release is published

  url "https://github.com/dl5mn/WaveLogMoat/releases/download/v#{version}/WaveLogMoat-v#{version}.dmg"
  name "WaveLogMoat"
  desc "Native macOS menu bar app for automatic QSO logging from WSJT-X to Wavelog"
  homepage "https://github.com/dl5mn/WaveLogMoat"

  depends_on macos: ">= :sonoma"

  app "WaveLogMoat.app"

  zap trash: [
    "~/Library/Preferences/com.dl5mn.WaveLogMoat.plist",
    "~/Library/Caches/com.dl5mn.WaveLogMoat",
  ]
end
