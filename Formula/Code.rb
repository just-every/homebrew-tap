class Code < Formula
  desc "Terminal coding agent"
  homepage "https://github.com/just-every/code"
  version "v0.2.99"
  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/just-every/code/releases/download/v0.2.99/code-aarch64-apple-darwin.tar.gz"
      sha256 "3006e4a86f85ba39de22a080ecbcdbcb543a0ee188a19ddb274e5d715ffe6c82"
    else
      url "https://github.com/just-every/code/releases/download/v0.2.99/code-x86_64-apple-darwin.tar.gz"
      sha256 "d6578451b872db39e96edbe19fa46e301ed5fd4e3d799acba71e2b2cabeb2cbe"
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
