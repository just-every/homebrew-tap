class Code < Formula
  desc "Terminal coding agent"
  homepage "https://github.com/just-every/code"
  version "v0.6.119"
  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/just-every/code/releases/download/v0.6.119/code-aarch64-apple-darwin.tar.gz"
      sha256 "056e15af46c629344b1fb9a1d7bc06b0240b7c4a995c300fb424606331966d19"
    else
      url "https://github.com/just-every/code/releases/download/v0.6.119/code-x86_64-apple-darwin.tar.gz"
      sha256 "328c6e556520a97f586d4b662401c14da89771180321db480c8c086f2d8c440a"
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
