class Code < Formula
  desc "Terminal coding agent"
  homepage "https://github.com/just-every/code"
  version "v0.2.76"
  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/just-every/code/releases/download/v0.2.76/code-aarch64-apple-darwin.tar.gz"
      sha256 "76716385ab17b00d0c70c4ed8185887c354dabbe3959a53255c8d84cd4c4d590"
    else
      url "https://github.com/just-every/code/releases/download/v0.2.76/code-x86_64-apple-darwin.tar.gz"
      sha256 "fd369a9b630ae07b417d5e4463d877f7b9a12badce3eb1f996f9664cf876bfc5"
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
