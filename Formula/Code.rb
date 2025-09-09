class Code < Formula
  desc "Terminal coding agent"
  homepage "https://github.com/just-every/code"
  version "v0.2.102"
  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/just-every/code/releases/download/v0.2.102/code-aarch64-apple-darwin.tar.gz"
      sha256 "b0dd31832f013dadb597b9e9eb51288ba7791ce4481f4e7ef869de50b07668af"
    else
      url "https://github.com/just-every/code/releases/download/v0.2.102/code-x86_64-apple-darwin.tar.gz"
      sha256 "2dd9d8b3f92cee9415868924929a66593d326f7bf4d5efce32c96038e83b8ab2"
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
