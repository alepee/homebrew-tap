cask "how-was-your-day" do
  version "0.11.0"
  sha256 "90dc1ab375511dbbd0013ffdd9d03e645deb732fad82d01f417ecdfa3828748f"

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
    This experimental app is signed with Developer ID and notarized by Apple.
    Recordings are kept in ~/Library/Application Support/HWYD.
    Uninstalling does not delete recordings or voice enrollment data.
  EOS
end
