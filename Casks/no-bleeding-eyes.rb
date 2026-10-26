cask "no-bleeding-eyes" do
  version "0.1.3"
  sha256 "f6a4a099ef4e910e3c93af3902edb98090679625b1d44c0557d58ed456b8b265"

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
