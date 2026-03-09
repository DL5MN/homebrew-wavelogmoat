cask "wavelogmoat" do
  version "0.3.1"
  sha256 "438c001ca38e32052650e2ed044154405aaeb6b45bd49bc78419d594051eff04"

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
