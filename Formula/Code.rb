class Code < Formula
  desc "Terminal coding agent"
  homepage "https://github.com/just-every/code"
  version "v0.2.110"
  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/just-every/code/releases/download/v0.2.110/code-aarch64-apple-darwin.tar.gz"
      sha256 "8986adcdcd55033cb0dd9d904a4a238f629043f9b1aa5c03f21ac9c35688c45f"
    else
      url "https://github.com/just-every/code/releases/download/v0.2.110/code-x86_64-apple-darwin.tar.gz"
      sha256 "4c8f2dc9af896d916337198435391966f682796d64702f0064e16a466d9e09b1"
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
