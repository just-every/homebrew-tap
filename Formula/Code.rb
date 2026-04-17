class Code < Formula
  desc "Terminal coding agent"
  homepage "https://github.com/just-every/code"
  version "v0.6.93"
  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/just-every/code/releases/download/v0.6.93/code-aarch64-apple-darwin.tar.gz"
      sha256 "fe5107883f256f1bf9b9425076a21439e2f770127d2732ee3d27dc3710047014"
    else
      url "https://github.com/just-every/code/releases/download/v0.6.93/code-x86_64-apple-darwin.tar.gz"
      sha256 "82e759353ca42d0fbd2775bccfa1e977e3011d0aff1abcbff0c002dae0410d10"
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
