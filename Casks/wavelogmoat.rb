cask "wavelogmoat" do
  version "0.3.0"
  sha256 "2a7ea013a751a64573384affc2dea018a51907e6e5416e14b36b01e4543192e4"

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
