class Code < Formula
  desc "Terminal coding agent"
  homepage "https://github.com/just-every/code"
  version "v0.2.182"
  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/just-every/code/releases/download/v0.2.182/code-aarch64-apple-darwin.tar.gz"
      sha256 "6cf83e1f1fd66e402ae1a57fd58ecfbdabb2ed7aefab28f6732aa2c106b1cddb"
    else
      url "https://github.com/just-every/code/releases/download/v0.2.182/code-x86_64-apple-darwin.tar.gz"
      sha256 "5252fd98698153e938da1b97853b39e5d884bd12f32f056c2c6cd65757182d94"
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
