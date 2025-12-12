class Code < Formula
  desc "Terminal coding agent"
  homepage "https://github.com/just-every/code"
  version "v0.6.2"
  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/just-every/code/releases/download/v0.6.2/code-aarch64-apple-darwin.tar.gz"
      sha256 "4eb0df28f9ae02ada37c0a6178bdffe3dcc528829ca9326213151f8f2d5ae77c"
    else
      url "https://github.com/just-every/code/releases/download/v0.6.2/code-x86_64-apple-darwin.tar.gz"
      sha256 "0cf45ce86a0870f63fdfa2d55d54bf4585d88e81de48486b845debce42976eee"
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
