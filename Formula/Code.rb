class Code < Formula
  desc "Terminal coding agent"
  homepage "https://github.com/just-every/code"
  version "v0.2.117"
  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/just-every/code/releases/download/v0.2.117/code-aarch64-apple-darwin.tar.gz"
      sha256 "71dd452e9440bcd1b95758c5a0bf5abf81f0896f4baf66d5f6e55070781381ab"
    else
      url "https://github.com/just-every/code/releases/download/v0.2.117/code-x86_64-apple-darwin.tar.gz"
      sha256 "a5bcb603e5f31780886b1923a05664879bd81971d2aba041c43611ec15381ff8"
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
