class Code < Formula
  desc "Terminal coding agent"
  homepage "https://github.com/just-every/code"
  version "v0.6.138"
  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/just-every/code/releases/download/v0.6.138/code-aarch64-apple-darwin.tar.gz"
      sha256 "9d58ade1cab92a009e6abfbabcd91ad25dacf5840d5dbca2c0a192ea32092c21"
    else
      url "https://github.com/just-every/code/releases/download/v0.6.138/code-x86_64-apple-darwin.tar.gz"
      sha256 "1103e5d072c3851b5e9c8c2e075b0ee70667b10c59f369325d23fe920b9a525d"
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
