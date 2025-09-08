class Code < Formula
  desc "Terminal coding agent"
  homepage "https://github.com/just-every/code"
  version "v0.2.89"
  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/just-every/code/releases/download/v0.2.89/code-aarch64-apple-darwin.tar.gz"
      sha256 "a243d54b1c945df947aef22c94ebfe73ad32f22b3eadf397781234cd4d4c56c6"
    else
      url "https://github.com/just-every/code/releases/download/v0.2.89/code-x86_64-apple-darwin.tar.gz"
      sha256 "fe2bb55f48509280d112de19d56092f4c83911325471aab7772b1ad38943a8cd"
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
