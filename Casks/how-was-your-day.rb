cask "how-was-your-day" do
  version "0.18.0"
  sha256 "fc937e762759094e985ac2ca6e6d9b8451771f67a974f8bc37d4e9bcb7b242d4"

  url "https://github.com/alepee/how-was-your-day/releases/download/v#{version}/HowWasYourDay.dmg"
  name "How Was Your Day"
  desc "Record, transcribe and review conversations locally"
  homepage "https://github.com/alepee/how-was-your-day"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true
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
