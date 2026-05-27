cask "memi-studio" do
  version "1.0.3"

  on_arm do
    sha256 "2fe6f1cf73de2ec9c475ad61a1b42a1f33a16402d032072a34137d2c29560382"

    url "https://github.com/sarveshsea/memi-studio/releases/download/v#{version}/Memoire.Studio_#{version}_aarch64.dmg",
        verified: "github.com/sarveshsea/memi-studio/"
  end
  on_intel do
    sha256 "1a755914de035129c0eaa4f864f94e70ecb6005243d26a88b22b9692327e2080"

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
  depends_on macos: :big_sur

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
