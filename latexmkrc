$pdf_mode = 1;
$pdflatex = "pdflatex -halt-on-error --shell-escape -fmt format %O %S";

$out_dir = ".latex";
@default_files = ("index");
