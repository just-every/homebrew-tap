class Code < Formula
  desc "Terminal coding agent"
  homepage "https://github.com/just-every/code"
  version "v0.6.15"
  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/just-every/code/releases/download/v0.6.15/code-aarch64-apple-darwin.tar.gz"
      sha256 "a1583214bd12d7a9228029dfeedb237d48100c356e0e7fec6157781d33e5f1cf"
    else
      url "https://github.com/just-every/code/releases/download/v0.6.15/code-x86_64-apple-darwin.tar.gz"
      sha256 "4e689cecdad8cf801e65305fb55c8da986c7d7a720d39d121d5634e25e0634d3"
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
