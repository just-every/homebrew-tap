class Code < Formula
  desc "Terminal coding agent"
  homepage "https://github.com/just-every/code"
  version "v0.6.193"
  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/just-every/code/releases/download/v0.6.193/code-aarch64-apple-darwin.tar.gz"
      sha256 "2c52d6a234cbc8854b1640730bcbf8eed6553295708675c334511df49a276816"
    else
      url "https://github.com/just-every/code/releases/download/v0.6.193/code-x86_64-apple-darwin.tar.gz"
      sha256 "acfc496704256367d412f79a6abd1ed8eccd1eac623a1f7cefc1a3b112de3950"
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
