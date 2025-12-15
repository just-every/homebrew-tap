class Code < Formula
  desc "Terminal coding agent"
  homepage "https://github.com/just-every/code"
  version "v0.6.6"
  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/just-every/code/releases/download/v0.6.6/code-aarch64-apple-darwin.tar.gz"
      sha256 "4a9abc63354f271d575bd84c28d5e7f4f3d5bf6e3253d5e125e31508ecdc769e"
    else
      url "https://github.com/just-every/code/releases/download/v0.6.6/code-x86_64-apple-darwin.tar.gz"
      sha256 "d13356080f2c350c255844e2ec6b0740cc4358f3beeef05623c0f2d42ff9b964"
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
