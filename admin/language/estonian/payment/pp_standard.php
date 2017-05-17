<?php
// Heading
$_['heading_title']					 = 'PayPal Standard';

// Text
$_['text_payment']					 = 'Makse';
$_['text_success']					 = 'Olete edukalt muutnud PayPal konto andmeid!';
$_['text_pp_standard']				 = '<a onclick="window.open(\'https://www.paypal.com/uk/mrb/pal=W9TBB5DTD6QJW\');"><img src="view/image/payment/paypal.png" alt="PayPal" title="PayPal" style="border: 1px solid #EEEEEE;" /></a>';
$_['text_authorization']			 = 'Autoriseerimine';
$_['text_sale']						 = 'Müük';

// Entry
$_['entry_email']					 = 'E-post:';
$_['entry_test']					 = 'Testimisrežiim:';
$_['entry_transaction']				 = 'Tehingu meetod:';
$_['entry_pdt_token']				 = 'PDT turvamärk:<br/><span class="help">Payment Data Transfer turvamärki kasutatakse kõrgema turvalisue ja usaldusväärsuse tagamiseks. Juhised, kuida PDTd aktiveerida, leiad <a href="https://cms.paypal.com/us/cgi-bin/?&cmd=_render-content&content_ID=developer/howto_html_paymentdatatransfer" alt="">siit</a></span>';
$_['entry_debug']					 = 'Silumisrežiim:<br/><span class="help">Kirjutab lisainformatsiooni süsteemi logisse.</span>';
$_['entry_total']                    = 'Kokku:<br /><span class="help">Ostukorvi kogusumma, millest alates muutub see maksemeetod aktiivseks.</span>';
$_['entry_canceled_reversal_status'] = 'Tühistamise ümberlükkamise staatus:<br /><span class="help">See tähendab, et makse ümberpööramine tühistati. Näiteks Teie kui kaupmees võitsite vaidluse kliendiga ning ümberpööratud tehingu raha tagastati Teile.</span>';
$_['entry_completed_status']         = 'Lõpetatud staatus:';
$_['entry_denied_status']			 = 'Tagasi lükatud staatus:<br /><span class="help">Teie kui kaupmees keeldusite maksest.</span>';
$_['entry_expired_status']			 = 'Aegunud staatus:';
$_['entry_failed_status']			 = 'Nurjunud staatus:<br /><span class="help">Makse nurjus. See võib juhtuda vaid siis kui makset üritati sooritada Teie kliendi pangakontolt.</span>';
$_['entry_pending_status']			 = 'Ootel staatus:<br /><span class="help">Makse on pandud ootele. Põhjus asub pending_reason muutujas. Pange tähele, et Teile saadetakse veel üks Instant Payment Notification kui makse staatus muutub lõpetatuks, nurjunuks või tagasilükatuks.</span>';
$_['entry_processed_status']		 = 'Töödeldud staatus:';
$_['entry_refunded_status']			 = 'Hüvitatud staatus:<br /><span class="help">Teie kui kaupmees tagastasite makse.</span>';
$_['entry_reversed_status']			 = 'Annulleeritud staatus:<br /><span class="help">See tähendab, et makse annulleeriti tagasimaksmise või mõne teist tüüpi makse ümberpööramise tõttu. Raha on debiteeritud teie kontolt ja tagastatud kliendile. Annulleerimise põhjus asub reason_code muutujas.</span>';
$_['entry_voided_status']		     = 'Kehtetu staatus:';
$_['entry_geo_zone']				 = 'Tsoon:';
$_['entry_status']					 = 'Staatus:';
$_['entry_sort_order']				 = 'Sorteerimine:';

// Error
$_['error_permission']				 = 'Hoiatus: Teil puuduvad õigused PayPal konto andmete muutmiseks!';
$_['error_email']					 = 'Palun sisestage e-posti aadress!';
?>