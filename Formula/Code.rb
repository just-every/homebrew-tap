class Code < Formula
  desc "Terminal coding agent"
  homepage "https://github.com/just-every/code"
  version "v0.4.8"
  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/just-every/code/releases/download/v0.4.8/code-aarch64-apple-darwin.tar.gz"
      sha256 "d19046b54a5164b087e0830b4d35ed05cafe7483efb37409df320005c14c4451"
    else
      url "https://github.com/just-every/code/releases/download/v0.4.8/code-x86_64-apple-darwin.tar.gz"
      sha256 "276d8a1c7b9b65776cdbfcf46a25e7ea526b5babf10b74073c01a802380c87ff"
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
