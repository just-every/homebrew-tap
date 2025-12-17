class Code < Formula
  desc "Terminal coding agent"
  homepage "https://github.com/just-every/code"
  version "v0.6.7"
  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/just-every/code/releases/download/v0.6.7/code-aarch64-apple-darwin.tar.gz"
      sha256 "58ba789de5eec73191a894c229fd7469fefa30c6074594eebab5fe4792c97ded"
    else
      url "https://github.com/just-every/code/releases/download/v0.6.7/code-x86_64-apple-darwin.tar.gz"
      sha256 "cfee92294b80e59de446ae1487851ab79a5433cbfc8c3ef50d3c83d71edad16d"
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
