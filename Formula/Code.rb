class Code < Formula
  desc "Terminal coding agent"
  homepage "https://github.com/just-every/code"
  version "v0.2.130"
  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/just-every/code/releases/download/v0.2.130/code-aarch64-apple-darwin.tar.gz"
      sha256 "789dcb13bb31b1079db7fcaad7fcdd6e27fc747227781c2c65f7b5c11206ffd0"
    else
      url "https://github.com/just-every/code/releases/download/v0.2.130/code-x86_64-apple-darwin.tar.gz"
      sha256 "5d2339282ec0bc2b750d847a9f26a476408fe6086b66cc162153db48b444642f"
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
