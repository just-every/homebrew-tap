class Code < Formula
  desc "Terminal coding agent"
  homepage "https://github.com/just-every/code"
  version "v0.4.11"
  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/just-every/code/releases/download/v0.4.11/code-aarch64-apple-darwin.tar.gz"
      sha256 "7a8599dcae7f2b4ae16a0f68f6b7d79ad550d0e0e40af76c3fcd0a0225988452"
    else
      url "https://github.com/just-every/code/releases/download/v0.4.11/code-x86_64-apple-darwin.tar.gz"
      sha256 "c4c57dfeccadb89ac4fad247568a927a19e5f80c8d40ee975704e5126722c575"
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
