class Code < Formula
  desc "Terminal coding agent"
  homepage "https://github.com/just-every/code"
  version "v0.6.55"
  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/just-every/code/releases/download/v0.6.55/code-aarch64-apple-darwin.tar.gz"
      sha256 "8d6baf89f4ca81f95e80eaffc323355a260aeab2c28a49ca17f9b574c2a50fa7"
    else
      url "https://github.com/just-every/code/releases/download/v0.6.55/code-x86_64-apple-darwin.tar.gz"
      sha256 "34686a1395fdab53fcfafbadd30d8742a56d833a4d62296ef02468d2d4bac0a6"
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
