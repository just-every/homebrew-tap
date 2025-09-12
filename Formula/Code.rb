class Code < Formula
  desc "Terminal coding agent"
  homepage "https://github.com/just-every/code"
  version "v0.2.134"
  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/just-every/code/releases/download/v0.2.134/code-aarch64-apple-darwin.tar.gz"
      sha256 "c09b17963bebea3ca2176a284906f4d47b11d5eb6768357076f650f5bb671b33"
    else
      url "https://github.com/just-every/code/releases/download/v0.2.134/code-x86_64-apple-darwin.tar.gz"
      sha256 "342276ab0dd09fbde8c3f21231e603f0d29692a1fd950f79ed762f8484d9b576"
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
