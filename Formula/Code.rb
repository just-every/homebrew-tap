class Code < Formula
  desc "Terminal coding agent"
  homepage "https://github.com/just-every/code"
  version "v0.6.179"
  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/just-every/code/releases/download/v0.6.179/code-aarch64-apple-darwin.tar.gz"
      sha256 "faf9f7145363beaae1d47593c3e8b954f42e18b46407f39185a06bbc6b64d0c6"
    else
      url "https://github.com/just-every/code/releases/download/v0.6.179/code-x86_64-apple-darwin.tar.gz"
      sha256 "06c0976898bf58e5005cc097a0a2e7c192623c28277e2657281d72fab2bc1431"
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
