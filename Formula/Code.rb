class Code < Formula
  desc "Terminal coding agent"
  homepage "https://github.com/just-every/code"
  version "v0.6.74"
  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/just-every/code/releases/download/v0.6.74/code-aarch64-apple-darwin.tar.gz"
      sha256 "b983317b15416a079ebe49a77bf29aea76eb93eba2d3232a53ebaed623e41335"
    else
      url "https://github.com/just-every/code/releases/download/v0.6.74/code-x86_64-apple-darwin.tar.gz"
      sha256 "00e088077e2a1f0dc8c55e6055291468f9950cb12dbbd0ca0c08da79d7798fb7"
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
