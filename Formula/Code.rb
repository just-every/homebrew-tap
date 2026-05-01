class Code < Formula
  desc "Terminal coding agent"
  homepage "https://github.com/just-every/code"
  version "v0.6.97"
  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/just-every/code/releases/download/v0.6.97/code-aarch64-apple-darwin.tar.gz"
      sha256 "0675cbd5c8e43896b4aa17fe90630f917c4d468b45e18632a1ec6056954ea714"
    else
      url "https://github.com/just-every/code/releases/download/v0.6.97/code-x86_64-apple-darwin.tar.gz"
      sha256 "eb687ca4fbd3713c4590bc8f792f9bde79cc5f40d3efefe0690c8da622324935"
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
