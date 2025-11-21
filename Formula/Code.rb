class Code < Formula
  desc "Terminal coding agent"
  homepage "https://github.com/just-every/code"
  version "v0.5.0"
  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/just-every/code/releases/download/v0.5.0/code-aarch64-apple-darwin.tar.gz"
      sha256 "b077282ca4bd82d7382822e71748ef277f06d830e894b859bdc80877965773d4"
    else
      url "https://github.com/just-every/code/releases/download/v0.5.0/code-x86_64-apple-darwin.tar.gz"
      sha256 "e071291149c304513692bd2ef28dc124d3515b8020477725c0176bad1791ff66"
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
