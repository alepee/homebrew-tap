cask "no-bleeding-eyes" do
  version "0.1.2"
  sha256 "5f9a6853705a871532507f84e7b43b236564793306705cc99f41d2426e687830"

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
