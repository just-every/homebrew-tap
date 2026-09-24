class Code < Formula
  desc "Terminal coding agent"
  homepage "https://github.com/just-every/code"
  version "v0.6.192"
  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/just-every/code/releases/download/v0.6.192/code-aarch64-apple-darwin.tar.gz"
      sha256 "e09f1dd5a7abf803d00ff2d86f276e5617bdafde2b1ecea7e291d1b6d104fcb9"
    else
      url "https://github.com/just-every/code/releases/download/v0.6.192/code-x86_64-apple-darwin.tar.gz"
      sha256 "e045157d211c37ddad0d4cc9036ee1f17a4cea349085692c00b1552f3a5457f9"
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
