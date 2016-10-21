use Spreadsheet::WriteExcel;

my $workbook = Spreadsheetp::WriteExcel->new('perl.xls');
my $worksheet = $workbook->add_worksheet();

$worksheet->write('A1', 'Hello');

