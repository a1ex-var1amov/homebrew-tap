# Install:
#   brew tap a1ex-var1amov/tap
#   brew trust a1ex-var1amov/tap
#   brew install --cask opencast
# Apple Silicon only for v0.2.0. First launch: right-click → Open (not notarized).
cask "opencast" do
  version "0.2.0"
  sha256 "42b5175d3ed7169d6d49b450c49e317f62bb9028d9b04167a3a13794395a5029"

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