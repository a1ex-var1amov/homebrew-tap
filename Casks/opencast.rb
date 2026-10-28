# Install:
#   brew tap a1ex-var1amov/tap
#   brew trust a1ex-var1amov/tap
#   brew install --cask opencast
# Apple Silicon only. First launch: right-click → Open (not notarized).
cask "opencast" do
  version "0.2.6"
  sha256 "e1d6ae9f0681f02925415149cb0246e9a98a0f82e48adc59a4cf7f022fb2a973"

  url "https://github.com/a1ex-var1amov/opencast/releases/download/v#{version}/OpenCast-#{version}.dmg"
  name "OpenCast"
  desc "Open-source keyboard launcher with bring-your-own AI"
  homepage "https://github.com/a1ex-var1amov/opencast"

  depends_on macos: ">= :sonoma"
  depends_on arch: :arm64

  app "OpenCast.app"

  uninstall quit: "dev.opencast.launcher"

  zap trash: [
    "~/.config/opencast",
    "~/Library/Preferences/dev.opencast.launcher.plist",
  ]
end
