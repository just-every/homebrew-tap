class Code < Formula
  desc "Terminal coding agent"
  homepage "https://github.com/just-every/code"
  version "v0.2.94"
  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/just-every/code/releases/download/v0.2.94/code-aarch64-apple-darwin.tar.gz"
      sha256 "2243c4989e2dd32993a847eb42fbd77cfff2a8ae3c4c1403bb705105dc3f7ce5"
    else
      url "https://github.com/just-every/code/releases/download/v0.2.94/code-x86_64-apple-darwin.tar.gz"
      sha256 "f58c44b42d6632e5bbd2895d995bd4286342ae8032038a1380cbcfb7bf4f0337"
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
