class Code < Formula
  desc "Terminal coding agent"
  homepage "https://github.com/just-every/code"
  version "v0.6.44"
  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/just-every/code/releases/download/v0.6.44/code-aarch64-apple-darwin.tar.gz"
      sha256 "d3d576dcff88698002a38d7af584d3cc3644164a0a2dffb9e278707f11933499"
    else
      url "https://github.com/just-every/code/releases/download/v0.6.44/code-x86_64-apple-darwin.tar.gz"
      sha256 "00d5eb1277b32fb92caa3421e2701645fda09f86fb46699df008bd74ab8eb9f0"
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
