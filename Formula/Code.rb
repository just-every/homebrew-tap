class Code < Formula
  desc "Terminal coding agent"
  homepage "https://github.com/just-every/code"
  version "v0.5.7"
  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/just-every/code/releases/download/v0.5.7/code-aarch64-apple-darwin.tar.gz"
      sha256 "cbba1166cd3b94a6783dfcc9390875d7220385337fe47894e75e252e381b6cb1"
    else
      url "https://github.com/just-every/code/releases/download/v0.5.7/code-x86_64-apple-darwin.tar.gz"
      sha256 "2d7b06563cf943e847d246e5a3fe37b4679378100ed8e62253c12e8c95a5fecc"
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
