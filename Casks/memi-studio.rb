cask "memi-studio" do
  version "0.18.0"

  on_arm do
    sha256 "0a6567b35e804c31781e882da23ab063871e55679a712a57a745117bf8fc828a"
    url "https://github.com/sarveshsea/memi-studio/releases/download/v#{version}/Memoire.Studio_#{version}_aarch64.dmg",
        verified: "github.com/sarveshsea/memi-studio/"
  end

  on_intel do
    sha256 "15269b503a3b53a4fd0f262335ceeef11560b57a0d8a8fad727a1d2ab121bbe4"
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
