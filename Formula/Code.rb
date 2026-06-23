class Code < Formula
  desc "Terminal coding agent"
  homepage "https://github.com/just-every/code"
  version "v0.6.130"
  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/just-every/code/releases/download/v0.6.130/code-aarch64-apple-darwin.tar.gz"
      sha256 "3244a399c7d1ae72a73afe66e3eee25b2e3e662ca1044fea772f63c833717c82"
    else
      url "https://github.com/just-every/code/releases/download/v0.6.130/code-x86_64-apple-darwin.tar.gz"
      sha256 "25a510daa851595158900b55027c3524baaee9ef22a2a067ba281e75a1f3e088"
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
