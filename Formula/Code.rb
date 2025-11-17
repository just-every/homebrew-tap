class Code < Formula
  desc "Terminal coding agent"
  homepage "https://github.com/just-every/code"
  version "v0.4.17"
  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/just-every/code/releases/download/v0.4.17/code-aarch64-apple-darwin.tar.gz"
      sha256 "2dd2d00a7f1d4caeb9a0cdf7446b94acfab4f860a0eeb6a70a95a406a9fa6de6"
    else
      url "https://github.com/just-every/code/releases/download/v0.4.17/code-x86_64-apple-darwin.tar.gz"
      sha256 "f46e17ced87b459c36a782dae931a74ebb60b49d699f3f6dc336e6cefdcd63eb"
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
