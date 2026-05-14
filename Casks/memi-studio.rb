cask "memi-studio" do
  version "1.0.1"

  on_arm do
    sha256 "34cf8f052864220de58f251a80cba56f14b1fe3f58c6626815db78ac5e9e2675"

    url "https://github.com/sarveshsea/memi-studio/releases/download/v#{version}/Memoire.Studio_#{version}_aarch64.dmg",
        verified: "github.com/sarveshsea/memi-studio/"
  end
  on_intel do
    sha256 "f7b3cf8ae0379ca95ea08c1d6109069aba9b8635dcbf7a37bf6e5f8799a62027"

    url "https://github.com/sarveshsea/memi-studio/releases/download/v#{version}/Memoire.Studio_#{version}_x64.dmg",
        verified: "github.com/sarveshsea/memi-studio/"
  end

  name "Mémoire Studio"
  desc "Agent shell for Codex and Claude Code"
  homepage "https://github.com/sarveshsea/memi-studio"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true
  depends_on macos: ">= :big_sur"

  app "Mémoire Studio.app"

  zap trash: [
    "~/Library/Application Support/cv.memoire.studio",
    "~/Library/Caches/cv.memoire.studio",
    "~/Library/HTTPStorages/cv.memoire.studio",
    "~/Library/Logs/cv.memoire.studio",
    "~/Library/Preferences/cv.memoire.studio.plist",
    "~/Library/Saved Application State/cv.memoire.studio.savedState",
    "~/Library/WebKit/cv.memoire.studio",
  ]
end
