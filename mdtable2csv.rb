class Mdtable2csv < Formula
  desc "Markdown Table To Csv File"
  homepage "https://github.com/BatuhanKucukali/mdtable2csv"
  url "https://github.com/BatuhanKucukali/mdtable2csv/archive/v0.0.2.tar.gz"
  version "0.0.2"
  sha256 "cbe2bd86a96cdbee3708dce5f66cbd0b5998132872cb2ab71be18dcab77d855e"
  license "Apache-2.0"

  depends_on "go" => :build

  def install
    ENV["GOPATH"] = buildpath

    bin_path = buildpath / "src/github.com/BatuhanKucukali/mdtable2csv"
    bin_path.install Dir["*"]

    cd bin_path do
      system "go", "build", "-o", bin / "mdtable2csv", "."
    end
  end

  test do
    system "#{bin}/mdtable2csv", "help"
  end

end
