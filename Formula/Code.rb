class Code < Formula
  desc "Terminal coding agent"
  homepage "https://github.com/just-every/code"
  version "v0.2.172"
  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/just-every/code/releases/download/v0.2.172/code-aarch64-apple-darwin.tar.gz"
      sha256 "763134024e85aeb16e669169681a437991aac055d56e52fc18522d89d622661f"
    else
      url "https://github.com/just-every/code/releases/download/v0.2.172/code-x86_64-apple-darwin.tar.gz"
      sha256 "2663144c5d634ad321786931e69f6573baa4555f11378abafb43c9e88399a4b6"
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
