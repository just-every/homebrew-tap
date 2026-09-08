class Code < Formula
  desc "Terminal coding agent"
  homepage "https://github.com/just-every/code"
  version "v0.6.182"
  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/just-every/code/releases/download/v0.6.182/code-aarch64-apple-darwin.tar.gz"
      sha256 "e2bee80b9e3f22d4126aecaa48fb4dae0584eef581064e3f43a9c655c267e85e"
    else
      url "https://github.com/just-every/code/releases/download/v0.6.182/code-x86_64-apple-darwin.tar.gz"
      sha256 "c5f1b40fc587d843ba3228e3517a0c88e6b252b67b2e627f070ed5342476b0f4"
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
