class Code < Formula
  desc "Terminal coding agent"
  homepage "https://github.com/just-every/code"
  version "v0.2.123"
  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/just-every/code/releases/download/v0.2.123/code-aarch64-apple-darwin.tar.gz"
      sha256 "3aa9379d512494dfc961ae74a307c5ca2e886bebc1c43cd3eee18724f6ab20d1"
    else
      url "https://github.com/just-every/code/releases/download/v0.2.123/code-x86_64-apple-darwin.tar.gz"
      sha256 "f9e03f1183e318a0efc70c70e7d3fc628b8865d0d95c52e2eff1ff5de7b30f63"
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
