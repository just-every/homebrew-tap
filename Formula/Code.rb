class Code < Formula
  desc "Terminal coding agent"
  homepage "https://github.com/just-every/code"
  version "v0.6.46"
  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/just-every/code/releases/download/v0.6.46/code-aarch64-apple-darwin.tar.gz"
      sha256 "a29eeb6c8c3e152e79965042b1f4decba29f5c7c70ecee7dee5170a7c9f2c6ad"
    else
      url "https://github.com/just-every/code/releases/download/v0.6.46/code-x86_64-apple-darwin.tar.gz"
      sha256 "4e3297957c8d6969bced2da7be96294a0264db0c3354b6e2a9ea13b10b3c78b7"
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
