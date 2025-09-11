class Code < Formula
  desc "Terminal coding agent"
  homepage "https://github.com/just-every/code"
  version "v0.2.119"
  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/just-every/code/releases/download/v0.2.119/code-aarch64-apple-darwin.tar.gz"
      sha256 "90691ea948b2016b4cc2170b6ae01497f4cafa7d7a12d15dd90e3e2d850e080d"
    else
      url "https://github.com/just-every/code/releases/download/v0.2.119/code-x86_64-apple-darwin.tar.gz"
      sha256 "89b12ff1203fb69c33124e6517db3d7fe50f6ebeb15c2c5f3c58feb101e829ea"
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
