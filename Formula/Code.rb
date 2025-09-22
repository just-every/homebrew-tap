class Code < Formula
  desc "Terminal coding agent"
  homepage "https://github.com/just-every/code"
  version "v0.2.162"
  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/just-every/code/releases/download/v0.2.162/code-aarch64-apple-darwin.tar.gz"
      sha256 "40ffa017c0db1b51e8bdcb7e0657e295f64ca7fa64520339a6d9dbcaded82f77"
    else
      url "https://github.com/just-every/code/releases/download/v0.2.162/code-x86_64-apple-darwin.tar.gz"
      sha256 "c0b60c84c67be48f7324e610fcde6b15a2514861f9f8b44ef3f05fde84730b3b"
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
