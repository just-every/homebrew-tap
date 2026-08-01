class Code < Formula
  desc "Terminal coding agent"
  homepage "https://github.com/just-every/code"
  version "v0.6.163"
  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/just-every/code/releases/download/v0.6.163/code-aarch64-apple-darwin.tar.gz"
      sha256 "bbe94bcd9ac2a867e6420e3650c2a106e15fc4a05618a7d24262be4a1beb35fa"
    else
      url "https://github.com/just-every/code/releases/download/v0.6.163/code-x86_64-apple-darwin.tar.gz"
      sha256 "b6aa5acf523c68c5105cba2d3fe5410397b703892a8b8e5020f17ad58c9d39e4"
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
