class Code < Formula
  desc "Terminal coding agent"
  homepage "https://github.com/just-every/code"
  version "v0.5.1"
  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/just-every/code/releases/download/v0.5.1/code-aarch64-apple-darwin.tar.gz"
      sha256 "21057a9e3fa8eb2935220b5d39f22ef61e4186bd966df66c6e1d650bbce82d67"
    else
      url "https://github.com/just-every/code/releases/download/v0.5.1/code-x86_64-apple-darwin.tar.gz"
      sha256 "85c8337020dfa5c23fff470c42e72a9fd5173f99187ad0c4b96346bfdd01e43d"
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
