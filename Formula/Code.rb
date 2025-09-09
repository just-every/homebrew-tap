class Code < Formula
  desc "Terminal coding agent"
  homepage "https://github.com/just-every/code"
  version "v0.2.101"
  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/just-every/code/releases/download/v0.2.101/code-aarch64-apple-darwin.tar.gz"
      sha256 "0f5492422500722ad561806654184529047e5a5593d128f1751d8ca42b560d6f"
    else
      url "https://github.com/just-every/code/releases/download/v0.2.101/code-x86_64-apple-darwin.tar.gz"
      sha256 "aaa7e4105c42fe33a73ddb62e3b152889f1165510b9a6e3dcc3e178fee6d382d"
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
