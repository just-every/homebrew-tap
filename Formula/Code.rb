class Code < Formula
  desc "Terminal coding agent"
  homepage "https://github.com/just-every/code"
  version "v0.6.5"
  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/just-every/code/releases/download/v0.6.5/code-aarch64-apple-darwin.tar.gz"
      sha256 "1b977a3b550c015d316d09daf820cadac2d4b28a10be7f4b778f92d6f791b6b5"
    else
      url "https://github.com/just-every/code/releases/download/v0.6.5/code-x86_64-apple-darwin.tar.gz"
      sha256 "39ae896bdc7299a1b426e94f41a885d5880edd6f51d2c62fb0da51c33cb28f6a"
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
