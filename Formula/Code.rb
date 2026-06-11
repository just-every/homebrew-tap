class Code < Formula
  desc "Terminal coding agent"
  homepage "https://github.com/just-every/code"
  version "v0.6.111"
  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/just-every/code/releases/download/v0.6.111/code-aarch64-apple-darwin.tar.gz"
      sha256 "11c8afdb2a083c8b82a31e861150e3ca599dddf94121a70835ee763b38ce6262"
    else
      url "https://github.com/just-every/code/releases/download/v0.6.111/code-x86_64-apple-darwin.tar.gz"
      sha256 "81258daf820a7d61fdf997e821eaac5c9b7fc5b2507a921e36718c5709c96757"
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
