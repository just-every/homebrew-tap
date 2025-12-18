class Code < Formula
  desc "Terminal coding agent"
  homepage "https://github.com/just-every/code"
  version "v0.6.8"
  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/just-every/code/releases/download/v0.6.8/code-aarch64-apple-darwin.tar.gz"
      sha256 "26560ae986642817b850d5f76e8dcf695d5f2bd63200f493289bd74956dad638"
    else
      url "https://github.com/just-every/code/releases/download/v0.6.8/code-x86_64-apple-darwin.tar.gz"
      sha256 "6a2f7e918a82a10fc2fe02562c24b6e12d51b2b53a6a2ae2362ffd5729872474"
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
