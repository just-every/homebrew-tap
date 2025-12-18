class Code < Formula
  desc "Terminal coding agent"
  homepage "https://github.com/just-every/code"
  version "v0.6.9"
  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/just-every/code/releases/download/v0.6.9/code-aarch64-apple-darwin.tar.gz"
      sha256 "f2ad980401e24dc70d1cb352bea8a8056b21fed3e7bc734fa7dbb5d69e5fd277"
    else
      url "https://github.com/just-every/code/releases/download/v0.6.9/code-x86_64-apple-darwin.tar.gz"
      sha256 "88bb02bf828cbf8b5d26842d97b4b78c8962b84c3f02edac3c6f90cdd00bb99b"
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
