class Code < Formula
  desc "Terminal coding agent"
  homepage "https://github.com/just-every/code"
  version "v0.6.113"
  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/just-every/code/releases/download/v0.6.113/code-aarch64-apple-darwin.tar.gz"
      sha256 "316caa32718cc40ee108d7197a15dd504bc04253a635575df53d76eefab459d2"
    else
      url "https://github.com/just-every/code/releases/download/v0.6.113/code-x86_64-apple-darwin.tar.gz"
      sha256 "1424b476bb869846ab57f517bb0c71bb2ed43379188adc8cb08a248083cd801b"
    end
  end

  def install
    bin.install Dir["code-*"].first => "code"
    # Provide a compatibility shim
    (bin/"coder").write <<~EOS
      #!/bin/bash
      exec "#{bin}/code" "$@"
    EOS
  end

  test do
    system "#{bin}/code", "--help"
  end
end
