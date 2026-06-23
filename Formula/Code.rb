class Code < Formula
  desc "Terminal coding agent"
  homepage "https://github.com/just-every/code"
  version "v0.6.131"
  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/just-every/code/releases/download/v0.6.131/code-aarch64-apple-darwin.tar.gz"
      sha256 "4502564887b371d1005b19cffb5fc3ceb7313a113bca814243e70ed90a71a876"
    else
      url "https://github.com/just-every/code/releases/download/v0.6.131/code-x86_64-apple-darwin.tar.gz"
      sha256 "e7837faf07252f9f544f251c523da2e4cba79f4576251d9288fa247f4ae64624"
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
