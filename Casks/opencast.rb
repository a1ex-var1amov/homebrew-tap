# Install:
#   brew tap a1ex-var1amov/tap
#   brew trust a1ex-var1amov/tap
#   brew install --cask opencast
cask "opencast" do
  version "0.2.10"
  sha256 "bd805d66032764531015f24478f882c78a36289fccb2bd6a1e574b090188b393"

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
