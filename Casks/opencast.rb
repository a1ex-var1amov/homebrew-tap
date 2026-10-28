cask "opencast" do
  version "0.2.5"
  sha256 "ec342828993978cf74d1a97023b92ccf4d2316567c9bd80b39525be9800e59ff"

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