# Install:
#   brew tap a1ex-var1amov/tap
#   brew trust a1ex-var1amov/tap
#   brew install --cask opencast
# Apple Silicon only. First launch: right-click → Open (not notarized).
cask "opencast" do
  version "0.2.8"
  sha256 "3815ee04c5e08261dced83cab2fb2fe121a1612bbc1b86e23e192313348b9a7a"

  url "https://github.com/a1ex-var1amov/opencast/releases/download/v#{version}/OpenCast-#{version}.dmg"
  name "OpenCast"
  desc "Open-source keyboard launcher with bring-your-own AI"
  homepage "https://github.com/a1ex-var1amov/opencast"

  depends_on macos: :sonoma
  depends_on arch: :arm64

  app "OpenCast.app"

  uninstall quit: "dev.opencast.launcher"

  zap trash: [
    "~/.config/opencast",
    "~/Library/Preferences/dev.opencast.launcher.plist",
  ]
end
