class Code < Formula
  desc "Terminal coding agent"
  homepage "https://github.com/just-every/code"
  version "v0.6.162"
  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/just-every/code/releases/download/v0.6.162/code-aarch64-apple-darwin.tar.gz"
      sha256 "893fdf72444eeb7480674632985f4ba30dcf00c15db3cf4d6b8b317192c66c30"
    else
      url "https://github.com/just-every/code/releases/download/v0.6.162/code-x86_64-apple-darwin.tar.gz"
      sha256 "09ed916dc4b034a2bf362fba934c8632b2185137d7773083716ac5a906a12ecb"
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
