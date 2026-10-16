class Mcc < Formula
  desc "Index and report macOS disk usage (apps, caches, orphans, large items)"
  homepage "https://github.com/crisacm/mac-cache-cleaner"
  url "https://github.com/crisacm/mac-cache-cleaner/archive/refs/tags/v0.1.0.tar.gz"
  sha256 "0103767e4cc30ef87a9b6ddb432a68e801bbf437d8ec4b8177f57c6e61960155"
  license "MIT"
  head "https://github.com/crisacm/mac-cache-cleaner.git", branch: "main"

  depends_on "go" => :build
  depends_on :macos

  def install
    ldflags = "-X main.version=#{version}"
    system "go", "build", *std_go_args(ldflags: ldflags), "./cmd/mcc"
  end

  test do
    assert_match "mcc version", shell_output("#{bin}/mcc --version")
  end

  def caveats
    <<~EOS
      MCC only reads metadata and never deletes: cleanup moves items to the Trash.

      For full results, grant Full Disk Access to your terminal in
      System Settings > Privacy & Security > Full Disk Access.
    EOS
  end
end
