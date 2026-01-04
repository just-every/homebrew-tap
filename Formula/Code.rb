class Code < Formula
  desc "Terminal coding agent"
  homepage "https://github.com/just-every/code"
  version "v0.6.31"
  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/just-every/code/releases/download/v0.6.31/code-aarch64-apple-darwin.tar.gz"
      sha256 "aea0ecc9bf1e98b0909ab472eb11846a4ee28f9f0aa88fdf2da0c70a9d8bae4f"
    else
      url "https://github.com/just-every/code/releases/download/v0.6.31/code-x86_64-apple-darwin.tar.gz"
      sha256 "65ebb3082d55a4e385f6d2daf00d533397664aa45589600619e34f3293cd6565"
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
