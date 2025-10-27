class Code < Formula
  desc "Terminal coding agent"
  homepage "https://github.com/just-every/code"
  version "v0.0.0"
  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/just-every/code/releases/download/v0.0.0/code-aarch64-apple-darwin.tar.gz"
      sha256 "2ae2e64f7fefe0003098143ae2aedf402e24e7c8d2c6ea8e1d07da79b6fc54d4"
    else
      url "https://github.com/just-every/code/releases/download/v0.0.0/code-x86_64-apple-darwin.tar.gz"
      sha256 "838ac543063c8b0c336a965039e26703d83f836c727e0337ca461bb722f71104"
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
