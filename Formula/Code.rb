class Code < Formula
  desc "Terminal coding agent"
  homepage "https://github.com/just-every/code"
  version "v0.6.4"
  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/just-every/code/releases/download/v0.6.4/code-aarch64-apple-darwin.tar.gz"
      sha256 "5287b4588fc00a2d4ba5fed5bdd5f8c1ba7b1c00188d8d202721ae8a4aad93a8"
    else
      url "https://github.com/just-every/code/releases/download/v0.6.4/code-x86_64-apple-darwin.tar.gz"
      sha256 "b337c764365653b624f1519d8a00587c6950f70ee4d2174cea1cc02d020f95fb"
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
