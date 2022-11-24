use v6.d;

use lib './lib';
use lib '.';

use DSL::English::DataQueryWorkflows;
use DSL::Portuguese::DataQueryWorkflows::Grammar;
use DSL::English::DataQueryWorkflows::Grammar;

#-----------------------------------------------------------
my $pCOMMAND = DSL::Portuguese::DataQueryWorkflows::Grammar;

sub dq-parse(Str:D $command, Str:D :$rule = 'TOP') {
    $pCOMMAND.parse($command, :$rule);
}

sub dq-interpret(Str:D $command,
                 Str:D:$rule = 'TOP',
                 :$actions = DSL::Portuguese::DataQueryWorkflows::Actions::Raku::Reshapers.new) {
    $pCOMMAND.parse($command, :$rule, :$actions).made;
}

say "=" x 10;


my @testCommands = ("
load the dataset iris;
take elements from 1 to 120 with step 3;
group by the column Species;
show counts");

# This is not parsed (currently):
# a largura do filtro por Sepal.Width é superior a 2,4 e o comprimento do Petal.L é inferior a 5,5;

@testCommands = ("
carga dados íris;
levar elementos de 1 a 120 no passo 3;
agrupar com a coluna Species;
tabulação cruzada de Species com PetalLength;
mostrar dimensões");


#my @targets = ('Portuguese', 'English', 'Russian');
my @targets = ('Python-pandas', 'R-base', 'R-tidyverse', 'Raku-Reshapers', 'WL-System');
#my @targets = ('Raku-Reshapers');

for @testCommands -> $c {
    say "=" x 30;
    say $c;
    for @targets -> $t {
        say '-' x 30;
        say $t;
        say '-' x 30;
        my $start = now;
        # my $res0 = dq-parse($c, rule => 'workflow-commands-list'); say $res0;
        my $res = ToDataQueryWorkflowCode($c, $t, language => 'Portuguese', format => 'hash');
        #        my $res =
        #                dq-interpret($c,
        #                        rule => 'workflow-commands-list',
        #                        actions => DSL::English::DataQueryWorkflows::Actions::WL::System.new);
        say "time:", now - $start;
        say $res;
    }
};
