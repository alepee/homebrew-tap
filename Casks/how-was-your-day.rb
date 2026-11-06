cask "how-was-your-day" do
  version "0.5.0"
  sha256 "55d934f573310d3a21e52f5a32e65013181548f82d761edd340c0222ec3a5078"

  url "https://github.com/alepee/how-was-your-day/releases/download/v#{version}/HowWasYourDay.dmg"
  name "How Was Your Day"
  desc "Record, transcribe and review conversations locally"
  homepage "https://github.com/alepee/how-was-your-day"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on arch: :arm64
  depends_on macos: :tahoe

  app "How Was Your Day.app"

  uninstall quit: "dev.lepee.hwyd"

  caveats <<~EOS
    This experimental app is not notarized by Apple.
    On first launch, use System Settings > Privacy & Security > Open Anyway.
    Recordings are kept in ~/Library/Application Support/HWYD.
    Uninstalling does not delete recordings or voice enrollment data.
  EOS
end
