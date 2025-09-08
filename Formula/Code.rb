class Code < Formula
  desc "Terminal coding agent"
  homepage "https://github.com/just-every/code"
  version "v0.2.96"
  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/just-every/code/releases/download/v0.2.96/code-aarch64-apple-darwin.tar.gz"
      sha256 "1d3b4ad59b48381ca57ee2d2d70f869325fea6a5bb6c56cf8f1ed906c5316e58"
    else
      url "https://github.com/just-every/code/releases/download/v0.2.96/code-x86_64-apple-darwin.tar.gz"
      sha256 "69928ad4e4e1d9282e793893a791f90b4c9f33872763a93a689b2846d5d51f12"
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
