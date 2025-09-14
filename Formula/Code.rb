class Code < Formula
  desc "Terminal coding agent"
  homepage "https://github.com/just-every/code"
  version "v0.2.146"
  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/just-every/code/releases/download/v0.2.146/code-aarch64-apple-darwin.tar.gz"
      sha256 "cdd2799e957af98277272ce13d5e3bc08e0d15621c3de559a6614102fedc68be"
    else
      url "https://github.com/just-every/code/releases/download/v0.2.146/code-x86_64-apple-darwin.tar.gz"
      sha256 "e4e140d2c8c437c86a82468f0782412a6ea84a3c311dae270adf186fb249ffc4"
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
