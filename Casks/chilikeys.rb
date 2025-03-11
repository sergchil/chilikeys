cask "chilikeys" do
  version "2.0.8"
  sha256 "83fd34012dd9a912df50937e008eaed62efe7979228a5cfe9e022034a0293b5f"

  url "https://github.com/sergchil/chilikeys/releases/download/v#{version}/ChiliKeys-v#{version}.zip"
  name "ChiliKeys"
  desc "Advanced Armenian keyboard layout"
  homepage "https://github.com/sergchil/chilikeys"

  livecheck do
    url :url
    strategy :github_latest
  end

  artifact "layouts/chilikeys_armenian.bundle",
           target: "~/Library/Keyboard Layouts/chilikeys_armenian.bundle"

  artifact "layouts/chilikeys_russian.bundle",
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
