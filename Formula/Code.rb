class Code < Formula
  desc "Terminal coding agent"
  homepage "https://github.com/just-every/code"
  version "v0.6.144"
  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/just-every/code/releases/download/v0.6.144/code-aarch64-apple-darwin.tar.gz"
      sha256 "fb6ef65052f3bb43ffab782c9e3d6177be66c111e621839556c77168d60282cb"
    else
      url "https://github.com/just-every/code/releases/download/v0.6.144/code-x86_64-apple-darwin.tar.gz"
      sha256 "f6aa2589016dcd970096e9e9c63867372f8521383df4d53511e30081c1f37aab"
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
