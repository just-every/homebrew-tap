class Code < Formula
  desc "Terminal coding agent"
  homepage "https://github.com/just-every/code"
  version "v0.2.185"
  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/just-every/code/releases/download/v0.2.185/code-aarch64-apple-darwin.tar.gz"
      sha256 "da481ec5ab4fdf5291df3cfc27e277094a16fdea1a97f560b103bf315b282a7c"
    else
      url "https://github.com/just-every/code/releases/download/v0.2.185/code-x86_64-apple-darwin.tar.gz"
      sha256 "c20747713f3af5dce7c0470346f5226d51866f0db9454269ff3f5a281dcdca8e"
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
