class Code < Formula
  desc "Terminal coding agent"
  homepage "https://github.com/just-every/code"
  version "v0.2.121"
  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/just-every/code/releases/download/v0.2.121/code-aarch64-apple-darwin.tar.gz"
      sha256 "4cc7762fc2125b4f0ace643dc24a6e77f9a4764df0b9b4fa5f7b3d8fd67d1d5d"
    else
      url "https://github.com/just-every/code/releases/download/v0.2.121/code-x86_64-apple-darwin.tar.gz"
      sha256 "a5c7f2373597e969ed60b4511eb55a35d9cf04359779b4de235a457edfe7b45b"
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
