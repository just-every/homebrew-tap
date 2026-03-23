class Code < Formula
  desc "Terminal coding agent"
  homepage "https://github.com/just-every/code"
  version "v0.6.81"
  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/just-every/code/releases/download/v0.6.81/code-aarch64-apple-darwin.tar.gz"
      sha256 "5a7fbeeb7c74b199d0a81a1b60c1c456c9037a72177d5a06d930e01811f8f3ed"
    else
      url "https://github.com/just-every/code/releases/download/v0.6.81/code-x86_64-apple-darwin.tar.gz"
      sha256 "7d2437b6068638a354fde9a774b8d46cb0962ffa3c40a5148e1df9404a7e99eb"
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
