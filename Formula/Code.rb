class Code < Formula
  desc "Terminal coding agent"
  homepage "https://github.com/just-every/code"
  version "v0.6.159"
  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/just-every/code/releases/download/v0.6.159/code-aarch64-apple-darwin.tar.gz"
      sha256 "64a7fa4f2036e5d968cc721420bae4f930c760f943e80405e760383b301bb425"
    else
      url "https://github.com/just-every/code/releases/download/v0.6.159/code-x86_64-apple-darwin.tar.gz"
      sha256 "9c0ad0fa595de4ba55e852e91dad2bca1078a854dbe2d065280ae4304ae23fa3"
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
