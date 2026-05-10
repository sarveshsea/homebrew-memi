cask "memi-studio" do
  version "1.0.0"

  on_arm do
    sha256 "b6c96f24642c16a62287ac93f47ef480411ad0e86f8b3fe54c312a847a70e122"
    url "https://github.com/sarveshsea/memi-studio/releases/download/v#{version}/Memoire.Studio_#{version}_aarch64.dmg",
        verified: "github.com/sarveshsea/memi-studio/"
  end

  on_intel do
    sha256 "88bbc33195bde4a23f1596edaaedbab98c7d4fb6a9449e8c22b2ec8ecd29003d"
    url "https://github.com/sarveshsea/memi-studio/releases/download/v#{version}/Memoire.Studio_#{version}_x64.dmg",
        verified: "github.com/sarveshsea/memi-studio/"
  end

  name "Mémoire Studio"
  desc "Native macOS agent shell for Codex, Claude Code, OpenCode, Hermes, Ollama, Gemini, and Mémoire-native"
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
    "~/Library/Preferences/cv.memoire.studio.plist",
    "~/Library/Saved Application State/cv.memoire.studio.savedState",
    "~/Library/Logs/cv.memoire.studio",
    "~/Library/HTTPStorages/cv.memoire.studio",
    "~/Library/WebKit/cv.memoire.studio",
  ]
end
