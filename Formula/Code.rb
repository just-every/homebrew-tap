class Code < Formula
  desc "Terminal coding agent"
  homepage "https://github.com/just-every/code"
  version "v0.6.1"
  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/just-every/code/releases/download/v0.6.1/code-aarch64-apple-darwin.tar.gz"
      sha256 "05364014c4cab684423cc7beadd981f6173034004acf8bba907dd543966d89bf"
    else
      url "https://github.com/just-every/code/releases/download/v0.6.1/code-x86_64-apple-darwin.tar.gz"
      sha256 "821896ad4b7254afe3110381d7d590b8539b3de13b286d6f3da9d98208e1df8a"
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
