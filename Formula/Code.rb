class Code < Formula
  desc "Terminal coding agent"
  homepage "https://github.com/just-every/code"
  version "v0.4.9"
  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/just-every/code/releases/download/v0.4.9/code-aarch64-apple-darwin.tar.gz"
      sha256 "33ab3835dc9d4a5f4db9b7e1626f6ee9082bb4a6dd298a63ab0e928639430872"
    else
      url "https://github.com/just-every/code/releases/download/v0.4.9/code-x86_64-apple-darwin.tar.gz"
      sha256 "94cf82b53078b39e99032e3ee6457640eeb54d359c48837b89122215006f535c"
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
