class Code < Formula
  desc "Terminal coding agent"
  homepage "https://github.com/just-every/code"
  version "v0.6.78"
  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/just-every/code/releases/download/v0.6.78/code-aarch64-apple-darwin.tar.gz"
      sha256 "472e2a9fd9f71ce2f569dc6c04b1fb9068a023bfcab9ab7f883e47884a5b3e55"
    else
      url "https://github.com/just-every/code/releases/download/v0.6.78/code-x86_64-apple-darwin.tar.gz"
      sha256 "3f57cdd007cb34b6064dee40b350f1220c1928b616e5216f01cc9bfd570eca0e"
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
