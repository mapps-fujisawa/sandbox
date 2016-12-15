package Module::Implementation;
# git description: v0.08-2-gd599347
$Module::Implementation::VERSION = '0.09';

warn exists $Module::Implementation::{VERSION};
warn ${ $Module::Implementation::{VERSION} };

package main;
$mail::VERSION = '0.09';

warn exists $Module::Implementation::{VERSION};
warn ${ $Module::Implementation::{VERSION} };

exit;

unless ( exists $Module::Implementation::{VERSION}
    && ${ $Module::Implementation::{VERSION} } )
{

    $Module::Implementation::{VERSION} = \42;
}
