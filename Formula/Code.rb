class Code < Formula
  desc "Terminal coding agent"
  homepage "https://github.com/just-every/code"
  version "v0.6.50"
  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/just-every/code/releases/download/v0.6.50/code-aarch64-apple-darwin.tar.gz"
      sha256 "bf403b90c368bfa2647bfd21960ec96f4f0090508a6dc7c43e3392a09c87751a"
    else
      url "https://github.com/just-every/code/releases/download/v0.6.50/code-x86_64-apple-darwin.tar.gz"
      sha256 "d247778db3e7ac435713919662b07accdc3c10842f18b49c8737040bcf28b032"
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
