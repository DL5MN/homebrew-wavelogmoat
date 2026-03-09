cask "wavelogmoat" do
  version "0.3.3"
  sha256 "ddd40c4ac509dc09e9ef357d870c8936c9ea4eae0d696b784392e0dc89c5dce9"

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
