class Code < Formula
  desc "Terminal coding agent"
  homepage "https://github.com/just-every/code"
  version "v0.6.158"
  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/just-every/code/releases/download/v0.6.158/code-aarch64-apple-darwin.tar.gz"
      sha256 "aa4ef7809d35b9fba7476c2c44a677b068b50dc047df082d5dd25366390c19b9"
    else
      url "https://github.com/just-every/code/releases/download/v0.6.158/code-x86_64-apple-darwin.tar.gz"
      sha256 "7cbfdfd337a4543f184ad363a2e4025eafd55b2d04f3768c55b7cb72f0f529c0"
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
