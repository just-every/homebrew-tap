class Code < Formula
  desc "Terminal coding agent"
  homepage "https://github.com/just-every/code"
  version "v0.2.137"
  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/just-every/code/releases/download/v0.2.137/code-aarch64-apple-darwin.tar.gz"
      sha256 "eacb61b4c5a7fa9049ea9c73326234afd4cf7449f56a05bf7600e2b1ec46e5f3"
    else
      url "https://github.com/just-every/code/releases/download/v0.2.137/code-x86_64-apple-darwin.tar.gz"
      sha256 "ab6053630ea6777b34387f6166993fb2c522d8462a93b69d5658f6cc22df4ca6"
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
