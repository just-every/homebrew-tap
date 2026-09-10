class Code < Formula
  desc "Terminal coding agent"
  homepage "https://github.com/just-every/code"
  version "v0.6.184"
  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/just-every/code/releases/download/v0.6.184/code-aarch64-apple-darwin.tar.gz"
      sha256 "e5a940a1ac6d533ac8e3656e105a8dee6a38c41cb5914710418e49f43f40e2c0"
    else
      url "https://github.com/just-every/code/releases/download/v0.6.184/code-x86_64-apple-darwin.tar.gz"
      sha256 "e6da5811432514d159008d9568e20b70510b08670380889a9a023d220c3b3c37"
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
