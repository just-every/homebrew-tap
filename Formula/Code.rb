class Code < Formula
  desc "Terminal coding agent"
  homepage "https://github.com/just-every/code"
  version "v0.6.57"
  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/just-every/code/releases/download/v0.6.57/code-aarch64-apple-darwin.tar.gz"
      sha256 "6a21c0f228427468568b3ebdc01bb1f9b1ce9d1ce2e200d8a5603ef12972646e"
    else
      url "https://github.com/just-every/code/releases/download/v0.6.57/code-x86_64-apple-darwin.tar.gz"
      sha256 "fdac8389ed655004a185038e9675c3af90851c4b6ea73e2b2966bee9d2c5c2dd"
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
