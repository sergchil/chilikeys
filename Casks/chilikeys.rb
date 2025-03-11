cask "chilikeys" do
  version "2.0.5"
  sha256 "489181bb0e9cd658b9d36d3fdc0301cf00c011fef170192b6b5bdd939ca78235"

  url "https://github.com/sergchil/chilikeys/releases/download/v#{version}/ChiliKeys-v#{version}.zip"
  name "ChiliKeys"
  desc "Advanced Armenian keyboard layout"
  homepage "https://github.com/sergchil/chilikeys"

  livecheck do
    url :url
    strategy :github_latest
  end

  artifact "chilikeys_armenian.bundle",
           target: "~/Library/Keyboard Layouts/chilikeys_armenian.bundle"

  artifact "chilikeys_russian.bundle",
           target: "~/Library/Keyboard Layouts/chilikeys_russian.bundle"

  zap trash: [
    "~/Library/Keyboard Layouts/chilikeys_armenian.bundle",
    "~/Library/Keyboard Layouts/chilikeys_russian.bundle"
  ]

  caveats <<~EOS
    To activate the keyboard layout:
      1. Open System Settings → Keyboard → Input Sources
      2. Click "+" and find "chilikeys_armenian" and chilikeys_russian in the list
      3. Select them and restart(Recomended) your Mac for the changes to take effect
  EOS
end
