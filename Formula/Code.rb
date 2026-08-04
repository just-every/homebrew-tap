class Code < Formula
  desc "Terminal coding agent"
  homepage "https://github.com/just-every/code"
  version "v0.6.167"
  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/just-every/code/releases/download/v0.6.167/code-aarch64-apple-darwin.tar.gz"
      sha256 "5591583a19f33f90d001fc88facff552c4ab636f24b4f9c895cbd3b08801b27e"
    else
      url "https://github.com/just-every/code/releases/download/v0.6.167/code-x86_64-apple-darwin.tar.gz"
      sha256 "cc9677354945d10ca7fec75d7621e27ac0cba536f78804dc8e004e0034cd22db"
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
