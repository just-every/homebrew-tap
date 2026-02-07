class Code < Formula
  desc "Terminal coding agent"
  homepage "https://github.com/just-every/code"
  version "v0.6.60"
  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/just-every/code/releases/download/v0.6.60/code-aarch64-apple-darwin.tar.gz"
      sha256 "d424c81fdd4bb8a60b506f9c16ed0248e12f419ba1e48041375ea56932087f1f"
    else
      url "https://github.com/just-every/code/releases/download/v0.6.60/code-x86_64-apple-darwin.tar.gz"
      sha256 "dfbff7674948f881be03faa85863fad5418daa8959efbabd3e4505a744a8f88c"
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
