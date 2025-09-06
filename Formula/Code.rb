class Code < Formula
  desc "Terminal coding agent"
  homepage "https://github.com/just-every/code"
  version "v0.2.70"
  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/just-every/code/releases/download/v0.2.70/code-aarch64-apple-darwin.tar.gz"
      sha256 "164b5a3a0536660bfc5ececa4aea3e520f47b5d93db276e5fd2e4db97191891c"
    else
      url "https://github.com/just-every/code/releases/download/v0.2.70/code-x86_64-apple-darwin.tar.gz"
      sha256 "0b2a1f6461e7b856f9812cb09cc9573ce974ccda16db3d2dcca1cdf4f3252cae"
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
