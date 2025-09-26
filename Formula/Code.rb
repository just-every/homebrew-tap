class Code < Formula
  desc "Terminal coding agent"
  homepage "https://github.com/just-every/code"
  version "v0.2.167"
  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/just-every/code/releases/download/v0.2.167/code-aarch64-apple-darwin.tar.gz"
      sha256 "6fd7a1e370054a09d0c3511cc9aae8602c67a75ed3fe3c3a24a76cbf816f79ec"
    else
      url "https://github.com/just-every/code/releases/download/v0.2.167/code-x86_64-apple-darwin.tar.gz"
      sha256 "e53679cb710d79bf98e9f1f05b98691ce3ac644a14091cac815ffcbc1622c658"
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
