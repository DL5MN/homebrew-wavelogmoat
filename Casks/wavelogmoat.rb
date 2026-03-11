cask "wavelogmoat" do
  version "0.5.0"
  sha256 "a4bd37f12b15b9201167230ab278bee46194dc48428b90a30f23e00a243fed99"

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
