#! / usr / bin / perl -w
# CURL de cânhamo
# Spammers mode ON
 
use estrito ;
use Net :: SMTP :: TLS ;
 
die ( "$ 0 <usuário> <pass> <e-mails> <história> <assunto> ) if ( @ ARGV ! = 5 ) ;
my ( $ user , $ pass , $ email , $ eng , $ assunto ) = @ ARGV ;
minha $ smtp = new Net :: SMTP :: TLS (
 'smtp.gmail.com' ,
 Porto     => 587 ,
 Usuário     => $ user ,
 Senha => $ pass ,
 Tempo Limite => 30
) || morrer ( $! ) ;
 
open ( EMAILS , '<' . $ email ) || morrer ( $! ) ;
my @emails = <email> ;
close ( EMAILS ) ;
aberto ( ENG , '<' . $ eng ) || morrer ( $! ) ;
meu @e = <eng> ;
my $ en = join ( '' , @e ) ;
próximo ( ENG ) ;
 
foreach ( @emails ) {
 chomp ( $ _ ) ;
 $ smtp -> mail ( $ usuário ) ;
 $ smtp -> destinatário ( $ _ ) ;
 $ smtp -> data ( ) ;
 $ smtp -> datasend ( "Para: $ _ \ n " ) ;
 $ smtp -> datasend ( "De: Nome de quem mandou <$ user> \ n " ) ;
 $ smtp -> datasend ( "Tipo de Conteúdo: text / html \ n " ) ;
 $ smtp -> datasend ( "Assunto: $ assunto" ) ;
 $ smtp -> datasend ( " \ n " ) ;
 $ smtp -> datasend ( "$ en" ) ;
 $ smtp -> datasend ( " \ n " ) ;
 $ smtp -> dataend ( ) ;
 print "Enviado para $ _ \ n " ;
}
 
$ smtp -> sair ;
Codificação H3mp
