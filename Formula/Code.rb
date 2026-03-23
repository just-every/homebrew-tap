class Code < Formula
  desc "Terminal coding agent"
  homepage "https://github.com/just-every/code"
  version "v0.6.82"
  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/just-every/code/releases/download/v0.6.82/code-aarch64-apple-darwin.tar.gz"
      sha256 "c3621b98074ded71a02facf4b82f0a5f8052eebeaeeff7d5a8aefbc05e23757a"
    else
      url "https://github.com/just-every/code/releases/download/v0.6.82/code-x86_64-apple-darwin.tar.gz"
      sha256 "ff3c1c6a2909456b1080b5746608a19db5593f8fc7d0220ed3d0d1f6a2a3c2a2"
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
