class Code < Formula
  desc "Terminal coding agent"
  homepage "https://github.com/just-every/code"
  version "v0.6.107"
  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/just-every/code/releases/download/v0.6.107/code-aarch64-apple-darwin.tar.gz"
      sha256 "c66578807cb40435de297e55c6ec485dcc7eec91a3422f81543f825e967a8677"
    else
      url "https://github.com/just-every/code/releases/download/v0.6.107/code-x86_64-apple-darwin.tar.gz"
      sha256 "f8fd6bc873c81fc36f0c4e97e83b65b4db4bbd6c91a20991b9ad848446addf66"
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
