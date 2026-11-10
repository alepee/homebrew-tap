cask "no-bleeding-eyes" do
  version "0.1.4"
  sha256 "ae6273e7e92c3e1a6a71369e842b3192b0227d9b445c9a2d9d4c7ae446c4fedd"

  url "https://github.com/alepee/no-bleeding-eyes/releases/download/v#{version}/NoBleedingEyes.dmg"
  name "No Bleeding Eyes"
  desc "Switch appearance, wallpaper and screen warmth with the sun"
  homepage "https://no-bleeding-eyes.lepee.dev/"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: :ventura

  app "NoBleedingEyes.app"

  uninstall quit: "com.alepee.NoBleedingEyes"

  zap trash: "~/Library/Preferences/com.alepee.NoBleedingEyes.plist"

  caveats <<~EOS
    No Bleeding Eyes is not notarized by Apple. On first launch, macOS blocks it:
    open System Settings › Privacy & Security and click "Open Anyway".
  EOS
end
