cask "no-bleeding-eyes" do
  version "0.1.1"
  sha256 "83529b5eef9fd87e22ddf3a93e0f3b09a38c6ae961ea428f46ae0bf7df16b185"

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
