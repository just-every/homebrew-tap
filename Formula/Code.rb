class Code < Formula
  desc "Terminal coding agent"
  homepage "https://github.com/just-every/code"
  version "v0.6.115"
  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/just-every/code/releases/download/v0.6.115/code-aarch64-apple-darwin.tar.gz"
      sha256 "e22f0567c2dbb88c28a777ea0926eef231d81ca0f79c780e207620933777d91b"
    else
      url "https://github.com/just-every/code/releases/download/v0.6.115/code-x86_64-apple-darwin.tar.gz"
      sha256 "bcac0ec28445384ec0c6de72953aafd4efec44b1b4593f27294deb2aca497571"
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
