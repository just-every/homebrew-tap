class Code < Formula
  desc "Terminal coding agent"
  homepage "https://github.com/just-every/code"
  version "v0.6.65"
  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/just-every/code/releases/download/v0.6.65/code-aarch64-apple-darwin.tar.gz"
      sha256 "d837dde2d6b43040165b53821a515e92515975f34b3dc712dc94c99eabc103fd"
    else
      url "https://github.com/just-every/code/releases/download/v0.6.65/code-x86_64-apple-darwin.tar.gz"
      sha256 "21e22e27122c4532bfab14e3ace384ff698e3f0ec6b1082a54a96e5f81ea22cd"
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
