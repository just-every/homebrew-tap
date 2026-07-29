class Code < Formula
  desc "Terminal coding agent"
  homepage "https://github.com/just-every/code"
  version "v0.6.157"
  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/just-every/code/releases/download/v0.6.157/code-aarch64-apple-darwin.tar.gz"
      sha256 "bc9373416b49ff39cbc59836e9ce323e20549254786cac3d9e00ab479d7bc4e0"
    else
      url "https://github.com/just-every/code/releases/download/v0.6.157/code-x86_64-apple-darwin.tar.gz"
      sha256 "0385e90337c6c4d150a6b82d4e595f5b1258f55eed0fad11b7ac72045afc2e50"
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
