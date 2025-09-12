class Code < Formula
  desc "Terminal coding agent"
  homepage "https://github.com/just-every/code"
  version "v0.2.135"
  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/just-every/code/releases/download/v0.2.135/code-aarch64-apple-darwin.tar.gz"
      sha256 "1e96113f43ebeb5fa93d2f7b46a703dee477dd4086dbedc98e05c1d5628ef647"
    else
      url "https://github.com/just-every/code/releases/download/v0.2.135/code-x86_64-apple-darwin.tar.gz"
      sha256 "33c32fb26b25a4e65f922e4128f0ea7317fbf3538cfdf8dcf8a8a19241e0d340"
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
