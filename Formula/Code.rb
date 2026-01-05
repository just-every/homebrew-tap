class Code < Formula
  desc "Terminal coding agent"
  homepage "https://github.com/just-every/code"
  version "v0.6.36"
  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/just-every/code/releases/download/v0.6.36/code-aarch64-apple-darwin.tar.gz"
      sha256 "35f549afa2374d98352ff91316435c230874279a42703cda447caca5e9696df3"
    else
      url "https://github.com/just-every/code/releases/download/v0.6.36/code-x86_64-apple-darwin.tar.gz"
      sha256 "672652c7d317c4e8479c59e4af933b48cccd33a30fe22702bd0e564492262406"
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
