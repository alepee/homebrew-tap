cask "how-was-your-day" do
  version "0.2.0"
  sha256 "db8465799b1c3917688b745bc593441c8ca4616f4111131d55dfd9dd71c629b3"

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
