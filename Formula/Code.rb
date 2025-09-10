class Code < Formula
  desc "Terminal coding agent"
  homepage "https://github.com/just-every/code"
  version "v0.2.111"
  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/just-every/code/releases/download/v0.2.111/code-aarch64-apple-darwin.tar.gz"
      sha256 "cb2a97ba358d294e9d9973b1245e8c5f5b62c25649772e554ca32a9093f69426"
    else
      url "https://github.com/just-every/code/releases/download/v0.2.111/code-x86_64-apple-darwin.tar.gz"
      sha256 "56648e041ac1c41985afe693c077ce2ceae89e7aa4d770853bbc734135adca4c"
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
