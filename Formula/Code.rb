class Code < Formula
  desc "Terminal coding agent"
  homepage "https://github.com/just-every/code"
  version "v0.6.135"
  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/just-every/code/releases/download/v0.6.135/code-aarch64-apple-darwin.tar.gz"
      sha256 "3c4e5081af7cad1b7509511cc0d16acb3194261a69d3641ef7a94f58569edd15"
    else
      url "https://github.com/just-every/code/releases/download/v0.6.135/code-x86_64-apple-darwin.tar.gz"
      sha256 "0d1bcb2b2144b19de05cc19c9832380edbad11fecf96d986cc093ede476e239d"
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
