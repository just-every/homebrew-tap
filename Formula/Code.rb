class Code < Formula
  desc "Terminal coding agent"
  homepage "https://github.com/just-every/code"
  version "v0.6.34"
  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/just-every/code/releases/download/v0.6.34/code-aarch64-apple-darwin.tar.gz"
      sha256 "8721feee82133200fff58a6eb627f661805c65932ce861ae0ec7ebd3210f2bca"
    else
      url "https://github.com/just-every/code/releases/download/v0.6.34/code-x86_64-apple-darwin.tar.gz"
      sha256 "d33bb18dc03199592c408eb290394acea1a11e88e5a0896ff6150a70bcd6b639"
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
