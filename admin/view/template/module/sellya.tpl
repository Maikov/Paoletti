<?php echo $header; ?>

<style type="text/css">
.color {border:1px solid #CCCCCC;}
.sellya_help {color:#999999;font-size:12px;padding-left:5px;}
span.sellya_help_tip {margin-left:10px;padding:2px 6px;background-color:#73B80A;border-radius:15px;}
span.sellya_help_tip a {color:#FFFFFF;font-size:12px;font-weight:bold;text-decoration:none;}
.sellya_sep {background-color:#F7F7F7;}
.pattern {position:relative;width:40px;height:40px;float:left;margin-right:5px;margin-bottom:5px;}
.pattern_number {position:absolute;bottom:0px;right:3px;}
table.form {margin-bottom:0;}
table.form div {padding-top:5px;text-align:left}
table.form b {color:#003A88;font-size:13px}
table.form > tbody > tr > td:first-child {text-align:right}
a.link {text-decoration:none; margin-left:15px; margin-right:15px;}
</style>                        
<?php 

if(empty($sellya_body_background_color)) $sellya_body_background_color ="FFFFFF";
if(empty($sellya_headings_color)) $sellya_headings_color ="66BCDA";
if(empty($sellya_body_text_color)) $sellya_body_text_color ="545454";
if(empty($sellya_light_text_color)) $sellya_light_text_color ="A3A3A3";
if(empty($sellya_other_links_color)) $sellya_other_links_color ="66BCDA";
if(empty($sellya_links_hover_color)) $sellya_links_hover_color ="EE3963";
if(empty($sellya_main_column_background_color)) $sellya_main_column_background_color ="F8F8F8";
if(empty($sellya_main_column_border_color)) $sellya_main_column_border_color ="CCCCCC";
if(empty($sellya_left_right_column_background_color)) $sellya_left_right_column_background_color ="FFFFFF";
if(empty($sellya_left_right_column_box_background_color)) $sellya_left_right_column_box_background_color ="FFFFFF";
if(empty($sellya_left_right_column_head_background_color)) $sellya_left_right_column_head_background_color ="66BCDA";
if(empty($sellya_left_right_column_head_title_color)) $sellya_left_right_column_head_title_color ="FFFFFF";
if(empty($sellya_left_right_column_separator_color)) $sellya_left_right_column_separator_color ="FFFFFF";
if(empty($sellya_content_column_background_color)) $sellya_content_column_background_color ="FFFFFF";
if(empty($sellya_content_column_separator_color)) $sellya_content_column_separator_color ="F6F6F6";

if(empty($sellya_price_color)) $sellya_price_color ="66BCDA";
if(empty($sellya_price_old_color)) $sellya_price_old_color ="A3A3A3";
if(empty($sellya_price_new_color)) $sellya_price_new_color ="EE3963";
if(empty($sellya_price_tax_color)) $sellya_price_tax_color ="A3A3A3";

if(empty($sellya_button_background_color)) $sellya_button_background_color ="66BCDA";
if(empty($sellya_button_border_top_color)) $sellya_button_border_top_color ="66BCDA";
if(empty($sellya_button_border_bottom_color)) $sellya_button_border_bottom_color ="66BCDA";
if(empty($sellya_button_background_hover_color)) $sellya_button_background_hover_color ="62B4D1";
if(empty($sellya_button_border_top_hover_color)) $sellya_button_border_top_hover_color ="559CB5";
if(empty($sellya_button_border_bottom_hover_color)) $sellya_button_border_bottom_hover_color ="5CA9C4";
if(empty($sellya_button_text_color)) $sellya_button_text_color ="FFFFFF";
if(empty($sellya_button_exclusive_background_color)) $sellya_button_exclusive_background_color ="EE3963";
if(empty($sellya_button_exclusive_border_top_color)) $sellya_button_exclusive_border_top_color ="EE3963";
if(empty($sellya_button_exclusive_border_bottom_color)) $sellya_button_exclusive_border_bottom_color ="EE3963";
if(empty($sellya_button_exclusive_background_hover_color)) $sellya_button_exclusive_background_hover_color ="E0365D";
if(empty($sellya_button_exclusive_border_top_hover_color)) $sellya_button_exclusive_border_top_hover_color ="A12744";
if(empty($sellya_button_exclusive_border_bottom_hover_color)) $sellya_button_exclusive_border_bottom_hover_color ="BE2E50";
if(empty($sellya_button_exclusive_text_color)) $sellya_button_exclusive_text_color ="FFFFFF";

if(empty($sellya_top_area_background_color)) $sellya_top_area_background_color ="F8F8F8";
if(empty($sellya_search_bar_style_color)) $sellya_search_bar_style_color ="62B5DD";
if(empty($sellya_search_bar_border_color)) $sellya_search_bar_border_color ="DFDFDF";
if(empty($sellya_top_area_ls_link_color)) $sellya_top_area_ls_link_color ="545454";
if(empty($sellya_top_area_ls_link_color_hover)) $sellya_top_area_ls_link_color_hover ="EE3963";
if(empty($sellya_top_area_ls_link_separator_color)) $sellya_top_area_ls_link_separator_color ="E3E3E3";
if(empty($sellya_top_area_cart_link_color)) $sellya_top_area_cart_link_color ="66BCDA";
if(empty($sellya_top_area_cart_link_color_hover)) $sellya_top_area_cart_link_color_hover ="EE3963";
if(empty($sellya_top_area_lc_text_color)) $sellya_top_area_lc_text_color ="545454";
if(empty($sellya_top_area_dropdown_background_color)) $sellya_top_area_dropdown_background_color ="FFFFFF";
if(empty($sellya_top_area_dropdown_top_bar_color)) $sellya_top_area_dropdown_top_bar_color ="333333";

if(empty($sellya_mm_background_color)) $sellya_mm_background_color ="EE3963";
if(empty($sellya_mm_separator_color)) $sellya_mm_separator_color ="C30B36";
if(empty($sellya_mm_border_top_color)) $sellya_mm_border_top_color ="C30B36";
if(empty($sellya_mm_border_bottom_color)) $sellya_mm_border_bottom_color ="C30B36";

if(empty($sellya_mm1_background_color)) $sellya_mm1_background_color ="333333";
if(empty($sellya_mm1_background_hover_color)) $sellya_mm1_background_hover_color ="66BCDA";
if(empty($sellya_mm1_link_color)) $sellya_mm1_link_color ="FFFFFF";
if(empty($sellya_mm1_link_hover_color)) $sellya_mm1_link_hover_color ="FFFFFF";

if(empty($sellya_mm2_background_color)) $sellya_mm2_background_color ="66BCDA";
if(empty($sellya_mm2_background_hover_color)) $sellya_mm2_background_hover_color ="66BCDA";
if(empty($sellya_mm2_link_color)) $sellya_mm2_link_color ="FFFFFF";
if(empty($sellya_mm2_link_hover_color)) $sellya_mm2_link_hover_color ="FFFFFF";
if(empty($sellya_mm2_main_category_link_color)) $sellya_mm2_main_category_link_color ="545454";

if(empty($sellya_mm3_background_color)) $sellya_mm3_background_color ="EE3963";
if(empty($sellya_mm3_background_hover_color)) $sellya_mm3_background_hover_color ="66BCDA";
if(empty($sellya_mm3_link_color)) $sellya_mm3_link_color ="FFFFFF";
if(empty($sellya_mm3_link_hover_color)) $sellya_mm3_link_hover_color ="FFFFFF";

if(empty($sellya_mm4_background_color)) $sellya_mm4_background_color ="EE3963";
if(empty($sellya_mm4_background_hover_color)) $sellya_mm4_background_hover_color ="66BCDA";
if(empty($sellya_mm4_link_color)) $sellya_mm4_link_color ="FFFFFF";
if(empty($sellya_mm4_link_hover_color)) $sellya_mm4_link_hover_color ="FFFFFF";

if(empty($sellya_mm5_background_color)) $sellya_mm5_background_color ="EE3963";
if(empty($sellya_mm5_background_hover_color)) $sellya_mm5_background_hover_color ="66BCDA";
if(empty($sellya_mm5_link_color)) $sellya_mm5_link_color ="FFFFFF";
if(empty($sellya_mm5_link_hover_color)) $sellya_mm5_link_hover_color ="FFFFFF";

if(empty($sellya_mm6_background_color)) $sellya_mm6_background_color ="EE3963";
if(empty($sellya_mm6_background_hover_color)) $sellya_mm6_background_hover_color ="66BCDA";
if(empty($sellya_mm6_link_color)) $sellya_mm6_link_color ="FFFFFF";
if(empty($sellya_mm6_link_hover_color)) $sellya_mm6_link_hover_color ="FFFFFF";

if(empty($sellya_mm7_background_color)) $sellya_mm7_background_color ="EE3963";
if(empty($sellya_mm7_background_hover_color)) $sellya_mm7_background_hover_color ="66BCDA";
if(empty($sellya_mm7_link_color)) $sellya_mm7_link_color ="FFFFFF";
if(empty($sellya_mm7_link_hover_color)) $sellya_mm7_link_hover_color ="FFFFFF";

if(empty($sellya_mm8_background_color)) $sellya_mm8_background_color ="EE3963";
if(empty($sellya_mm8_background_hover_color)) $sellya_mm8_background_hover_color ="66BCDA";
if(empty($sellya_mm8_link_color)) $sellya_mm8_link_color ="FFFFFF";
if(empty($sellya_mm8_link_hover_color)) $sellya_mm8_link_hover_color ="FFFFFF";

if(empty($sellya_mm_sub_background_color)) $sellya_mm_sub_background_color ="FFFFFF";
if(empty($sellya_mm_sub_background_hover_color)) $sellya_mm_sub_background_hover_color ="F8F8F8";
if(empty($sellya_mm_sub_titles_background_color)) $sellya_mm_sub_titles_background_color ="F8F8F8";
if(empty($sellya_mm_sub_text_color)) $sellya_mm_sub_text_color ="545454";
if(empty($sellya_mm_sub_link_color)) $sellya_mm_sub_link_color ="000000";
if(empty($sellya_mm_sub_link_hover_color)) $sellya_mm_sub_link_hover_color ="EE3963";
if(empty($sellya_mm_sub_separator_color)) $sellya_mm_sub_separator_color ="F3F3F3";

if(empty($sellya_mid_prod_slider_background_color)) $sellya_mid_prod_slider_background_color ="FFFFFF";
if(empty($sellya_mid_prod_slider_name_color)) $sellya_mid_prod_slider_name_color ="545454";
if(empty($sellya_mid_prod_slider_desc_color)) $sellya_mid_prod_slider_desc_color ="A3A3A3";
if(empty($sellya_mid_prod_slider_price_color)) $sellya_mid_prod_slider_price_color ="EE3963";
if(empty($sellya_mid_prod_slider_links_color_hover)) $sellya_mid_prod_slider_links_color_hover ="EE3963";
if(empty($sellya_mid_prod_slider_bottom_bar_background_color)) $sellya_mid_prod_slider_bottom_bar_background_color ="F3F3F3";
if(empty($sellya_mid_prod_slider_bottom_bar_background_color_hover)) $sellya_mid_prod_slider_bottom_bar_background_color_hover ="F9F9F9";
if(empty($sellya_mid_prod_slider_bottom_bar_background_color_sm)) $sellya_mid_prod_slider_bottom_bar_background_color_sm ="66BCDA";
if(empty($sellya_mid_prod_slider_bottom_bar_link_color)) $sellya_mid_prod_slider_bottom_bar_link_color ="545454";

if(empty($sellya_mid_prod_box_background_color)) $sellya_mid_prod_box_background_color ="F7F7F7";
if(empty($sellya_mid_prod_box_background_hover_color)) $sellya_mid_prod_box_background_hover_color ="E9F0F4";
if(empty($sellya_mid_prod_box_border_color)) $sellya_mid_prod_box_border_color ="F7F7F7";
if(empty($sellya_mid_prod_box_border_hover_color)) $sellya_mid_prod_box_border_hover_color ="E9F0F4";
if(empty($sellya_mid_prod_box_sale_icon_color)) $sellya_mid_prod_box_sale_icon_color ="EE3963";

if(empty($sellya_mid_prod_page_buy_section_background_color)) $sellya_mid_prod_page_buy_section_background_color ="F3F3F3";
if(empty($sellya_mid_prod_page_buy_section_separator_color)) $sellya_mid_prod_page_buy_section_separator_color ="EDEDED";

if(empty($sellya_mid_prod_page_tabs_background_color)) $sellya_mid_prod_page_tabs_background_color ="F3F3F3";

if(empty($sellya_f1_background_color)) $sellya_f1_background_color ="1F1F1F";
if(empty($sellya_f1_titles_color)) $sellya_f1_titles_color ="66BCDA";
if(empty($sellya_f1_titles_border_bottom_color)) $sellya_f1_titles_border_bottom_color ="2E2E2E";
if(empty($sellya_f1_text_color)) $sellya_f1_text_color ="A3A3A3";
if(empty($sellya_f1_link_color)) $sellya_f1_link_color ="66BCDA";
if(empty($sellya_f1_link_hover_color)) $sellya_f1_link_hover_color ="FFFFFF";
if(empty($sellya_f1_light_text_color)) $sellya_f1_light_text_color ="616161";
if(empty($sellya_f1_border_top_color)) $sellya_f1_border_top_color ="000000";

if(empty($sellya_f2_background_color)) $sellya_f2_background_color ="191919";
if(empty($sellya_f2_titles_color)) $sellya_f2_titles_color ="66BCDA";
if(empty($sellya_f2_titles_border_bottom_color)) $sellya_f2_titles_border_bottom_color ="262626";
if(empty($sellya_f2_link_color)) $sellya_f2_link_color ="A3A3A3";
if(empty($sellya_f2_link_hover_color)) $sellya_f2_link_hover_color ="FFFFFF";
if(empty($sellya_f2_border_top_color)) $sellya_f2_border_top_color ="191919";

if(empty($sellya_f4_background_color)) $sellya_f4_background_color ="191919";
if(empty($sellya_f4_text_color)) $sellya_f4_text_color ="A3A3A3";
if(empty($sellya_f4_link_color)) $sellya_f4_link_color ="66BCDA";
if(empty($sellya_f4_link_hover_color)) $sellya_f4_link_hover_color ="FFFFFF";
if(empty($sellya_f4_light_text_color)) $sellya_f4_light_text_color ="545454";
if(empty($sellya_f4_border_top_color)) $sellya_f4_border_top_color ="1F1F1F";

if(empty($sellya_f5_background_color)) $sellya_f5_background_color ="191919";
if(empty($sellya_f5_text_color)) $sellya_f5_text_color ="545454";
if(empty($sellya_f5_link_color)) $sellya_f5_link_color ="66BCDA";
if(empty($sellya_f5_link_hover_color)) $sellya_f5_link_hover_color ="FFFFFF";
if(empty($sellya_f5_border_top_color)) $sellya_f5_border_top_color ="1F1F1F";

$bgp = array(
	''    => 'none',
	'1'   => '1',
	'2'   => '2',
	'3'   => '3',
	'4'   => '4',
	'5'   => '5',
	'6'   => '6',
	'7'   => '7',
	'8'   => '8',  
	'9'   => '9',
	'10'  => '10',
	'11'  => '11',
	'12'  => '12', 
	'13'  => '13',
	'14'  => '14',
	'15'  => '15',
	'16'  => '16',
	'17'  => '17',
	'18'  => '18',  
	'19'  => '19',
	'20'  => '20',
	'21'  => '21',
	'22'  => '22', 
	'23'  => '23',
	'24'  => '24',
	'25'  => '25',
	'26'  => '26',
	'27'  => '27',
	'28'  => '28',  
	'29'  => '29',
	'30'  => '30',
	'31'  => '31',
	'32'  => '32', 
	'33'  => '33',
	'34'  => '34',
	'35'  => '35',
	'36'  => '36',
	'37'  => '37',
	'38'  => '38',  
	'39'  => '39',
	'40'  => '40',
	'41'  => '41',
	'42'  => '42', 
	'43'  => '43',
	'44'  => '44',
	'45'  => '45',
	'46'  => '46',
	'47'  => '47',
	'48'  => '48',  
	'49'  => '49',  
	'50'  => '50',
	'51'  => '51',
	'52'  => '52', 
	'53'  => '53',
	'54'  => '54',
	'55'  => '55',
	'56'  => '56',
	'57'  => '57',
	'58'  => '58',  
	'59'  => '59',
	'60'  => '60',
	'61'  => '61',
	'62'  => '62', 
	'63'  => '63',
	'64'  => '64',
	'65'  => '65',
	'66'  => '66',
	'67'  => '67',
	'68'  => '68',  
	'69'  => '69',
	'70'  => '70',
	'71'  => '71',
	'72'  => '72', 
	'73'  => '73',
	'74'  => '74',
	'75'  => '75',                            
	'101' => '101',
    '102' => '102',
    '103' => '103',
    '104' => '104',
    '105' => '105',
    '106' => '106',
    '107' => '107',
    '108' => '108',
    '109' => '109',
    '110' => '110',
	'111' => '111',
    '112' => '112',
    '113' => '113',
    '114' => '114',
    '115' => '115',
    '116' => '116',
    '117' => '117',
    '118' => '118',
    '119' => '119',
    '120' => '120',
	'121' => '121',
    '122' => '122',
    '123' => '123',
    '124' => '124',
    '125' => '125',
    '126' => '126',
    '127' => '127',
    '128' => '128',
    '129' => '129',
    '130' => '130', 
	'131' => '131',
    '132' => '132',
    '133' => '133',
    '134' => '134',
    '135' => '135',
    '136' => '136',
    '137' => '137',
    '138' => '138',
    '139' => '139',
    '140' => '140',
	'141' => '141',
    '142' => '142',
    '143' => '143',
    '144' => '144',
    '145' => '145',
    '146' => '146',
    '147' => '147',
    '148' => '148',
    '149' => '149',
    '150' => '150', 
	'151' => '151',
    '152' => '152',
    '153' => '153',
    '154' => '154',
    '155' => '155',
    '156' => '156',
    '157' => '157',
    '158' => '158',
    '159' => '159',
    '160' => '160',
	'161' => '161',
    '162' => '162',
    '163' => '163',
    '164' => '164',
    '165' => '165',
    '166' => '166',
    '167' => '167',
    '168' => '168',
    '169' => '169',
    '170' => '170',
	'171' => '171',
    '172' => '172',
    '173' => '173',
    '174' => '174',
    '175' => '175',
    '176' => '176',
    '177' => '177',
    '178' => '178',
    '179' => '179',
    '180' => '180',  
	'181' => '181',
    '182' => '182',
    '183' => '183',
    '184' => '184',
    '185' => '185',
    '186' => '186',
    '187' => '187',
    '188' => '188',
    '189' => '189',
    '190' => '190',
	'191' => '191',
    '192' => '192',
    '193' => '193',
    '194' => '194',
    '195' => '195',
    '196' => '196',
    '197' => '197',
    '198' => '198',
    '199' => '199',
    '200' => '200',
	'201' => '201',
    '202' => '202',
    '203' => '203',
    '204' => '204',
    '205' => '205',
    '206' => '206',
    '207' => '207',
    '208' => '208',
    '209' => '209',
    '210' => '210',
	'211' => '211',
    '212' => '212',
    '213' => '213',
    '214' => '214',
    '215' => '215',
    '216' => '216',
    '217' => '217',
    '218' => '218',
    '219' => '219',
    '220' => '220',
	'221' => '221',
    '222' => '222',
    '223' => '223',
    '224' => '224',
    '225' => '225',
    '226' => '226',
    '227' => '227',
    '228' => '228',
    '229' => '229',
    '230' => '230', 
	'231' => '231',
    '232' => '232',
    '233' => '233',
    '234' => '234',
    '235' => '235',
    '236' => '236',
    '237' => '237',
    '238' => '238',
    '239' => '239',
    '240' => '240',
	'241' => '241',
    '242' => '242',
    '243' => '243',
    '244' => '244',
    '245' => '245',
    '246' => '246',
    '247' => '247',
    '248' => '248',
    '249' => '249',
    '250' => '250', 
	'251' => '251',
    '252' => '252',
    '253' => '253',
    '254' => '254',


    '255' => '255',
    '256' => '256',
    '257' => '257',
    '258' => '258',
    '259' => '259',
    '260' => '260',
	'261' => '261',
    '262' => '262',
    '263' => '263',
    '264' => '264',
    '265' => '265',
    '266' => '266',
    '267' => '267',
    '268' => '268',
    '269' => '269',
    '270' => '270',
	'271' => '271',
    '272' => '272',
    '273' => '273',
    '274' => '274',
    '275' => '275',
    '276' => '276',
    '277' => '277',
    '278' => '278',
    '279' => '279',
    '280' => '280',  
	'281' => '281',
    '282' => '282',
    '283' => '283',
    '284' => '284',
    '285' => '285',
    '286' => '286',
    '287' => '287',
    '288' => '288',
    '289' => '289',
    '290' => '290',
	'291' => '291',
    '292' => '292',
    '293' => '293',
    '294' => '294',
    '295' => '295',
    '296' => '296',
    '297' => '297',
    '298' => '298',
    '299' => '299',
    '300' => '300',
	'301' => '301',
    '302' => '302',
    '303' => '303',
    '304' => '304',
    '305' => '305',
    '306' => '306',
    '307' => '307',
    '308' => '308',
    '309' => '309',
    '310' => '310',
	'311' => '311',
    '312' => '312',
    '313' => '313',
    '314' => '314',
    '315' => '315',
    '316' => '316',
    '317' => '317',
    '318' => '318',
    '319' => '319',
    '320' => '320',
	'321' => '321',
    '322' => '322',
    '323' => '323',
    '324' => '324',
    '325' => '325',
    '326' => '326',
    '327' => '327',
    '328' => '328',
    '329' => '329',
    '330' => '330', 
	'331' => '331',
    '332' => '332',
    '333' => '333',
    '334' => '334',
    '335' => '335',
    '336' => '336',
    '337' => '337',
    '338' => '338',
    '339' => '339',
    '340' => '340',
	'341' => '341',
    '342' => '342',
    '343' => '343',
    '344' => '344',
    '345' => '345',
    '346' => '346',
    '347' => '347',
    '348' => '348',
    '349' => '349',
    '350' => '350', 
	'351' => '351',
    '352' => '352',
    '353' => '353',
    '354' => '354',
    '355' => '355',
    '356' => '356',
    '357' => '357',
    '358' => '358',
    '359' => '359',
    '360' => '360',
	'361' => '361',
    '362' => '362',
    '363' => '363',
    '364' => '364',
    '365' => '365',
    '366' => '366',
    '367' => '367',
    '368' => '368',
    '369' => '369',
    '370' => '370',
	'371' => '371',
    '372' => '372',
    '373' => '373', 
    '374' => '374',
    '375' => '375',
    '376' => '376',
    '377' => '377',
    '378' => '378',
    '379' => '379',                                                   
)
;
	
$googlefonts = array(
	''                         => '--- Default ---',
	'Arial'                    => 'Arial',
	'Georgia'                  => 'Georgia',
	'Helvetica'                => 'Helvetica',
	'Lucida Grande'            => 'Lucida Grande',    
	'Lucida Sans Unicode'      => 'Lucida Sans Unicode',
 	'Segoe UI'                 => 'Segoe UI',   
	'Tahoma'                   => 'Tahoma',
	'Times New Roman'          => 'Times New Roman',
	'Trebuchet MS'             => 'Trebuchet MS',    
	'Verdana'                  => 'Verdana',   
	'Abel'                     => 'Abel',
	'Abril+Fatface'            => 'Abril Fatface',
	'Aclonica'                 => 'Aclonica',
	'Acme'                     => 'Acme',
	'Actor'                    => 'Actor',
	'Adamina'                  => 'Adamina',
	'Advent+Pro'               => 'Advent Pro',
	'Aguafina+Script'          => 'Aguafina Script',    
	'Aladin'                   => 'Aladin',
	'Aldrich'                  => 'Aldrich',
	'Alegreya'                 => 'Alegreya',
	'Alegreya+SC'              => 'Alegreya SC',
	'Alex+Brush'               => 'Alex Brush',
	'Alfa+Slab+One'            => 'Alfa Slab One',
	'Alice'                    => 'Alice',
	'Alike'                    => 'Alike',
	'Alike+Angular'            => 'Alike Angular',
	'Allan'                    => 'Allan',
	'Allerta'                  => 'Allerta',
	'Allerta+Stencil'          => 'Allerta Stencil',
	'Allura'                   => 'Allura',
	'Almendra'                 => 'Almendra',
	'Almendra+SC'              => 'Almendra SC',
	'Amaranth'                 => 'Amaranth',
	'Amatic+SC'                => 'Amatic SC',
	'Amethysta'                => 'Amethysta',
	'Andada'                   => 'Andada',
	'Andika'                   => 'Andika',
	'Angkor'                   => 'Angkor',    
	'Annie+Use+Your+Telescope' => 'Annie Use Your Telescope',
	'Anonymous+Pro'            => 'Anonymous Pro',
	'Antic'                    => 'Antic',
	'Antic+Didone'             => 'Antic Didone',
	'Antic+Slab'               => 'Antic Slab',        
	'Anton'                    => 'Anton',
	'Arapey'                   => 'Arapey',
	'Arbutus'                  => 'Arbutus',    
	'Architects+Daughter'      => 'Architects Daughter',
	'Arimo'                    => 'Arimo',
	'Arizonia'                 => 'Arizonia',    
	'Armata'                   => 'Armata',
	'Artifika'                 => 'Artifika',
	'Arvo'                     => 'Arvo',
	'Asap'                     => 'Asap',
	'Asset'                    => 'Asset',
	'Astloch'                  => 'Astloch',
	'Asul'                     => 'Asul',
	'Atomic+Age'               => 'Atomic Age',
	'Aubrey'                   => 'Aubrey',
	'Audiowide'                => 'Audiowide', 
	'Average'                  => 'Average',
	'Averia+Gruesa+Libre'      => 'Averia Gruesa Libre',
	'Averia+Libre'             => 'Averia Libre',
	'Averia+Sans+Libre'        => 'Averia Sans Libre',
	'Averia+Serif+Libre'       => 'Averia Serif Libre',                       
	'Bad+Script'               => 'Bad Script',
	'Balthazar'                => 'Balthazar',
	'Bangers'                  => 'Bangers',
	'Basic'                    => 'Basic',
	'Battambang'               => 'Battambang',
	'Baumans'                  => 'Baumans',
	'Bayon'                    => 'Bayon',
	'Belgrano'                 => 'Belgrano',
	'Belleza'                  => 'Belleza',    
	'Bentham'                  => 'Bentham',
	'Berkshire+Swash'          => 'Berkshire Swash',    
	'Bevan'                    => 'Bevan',
	'Bigshot+One'              => 'Bigshot One',
	'Bilbo'                    => 'Bilbo',
	'Bilbo+Swash+Caps'         => 'Bilbo Swash Caps',
	'Bitter'                   => 'Bitter',
	'Black+Ops+One'            => 'Black Ops One',
	'Bokor'                    => 'Bokor',
	'Bonbon'                   => 'Bonbon',
	'Boogaloo'                 => 'Boogaloo',
	'Bowlby+One'               => 'Bowlby One',
	'Bowlby+One+SC'            => 'Bowlby One SC',
	'Brawler'                  => 'Brawler',
	'Bree+Serif'               => 'Bree Serif',
	'Bubblegum+Sans'           => 'Bubblegum Sans',
	'Buda'                     => 'Buda',
	'Buenard'                  => 'Buenard',
	'Butcherman'               => 'Butcherman',
	'Butterfly+Kids'           => 'Butterfly Kids',
	'Cabin'                    => 'Cabin',
	'Cabin+Condensed'          => 'Cabin Condensed',
	'Cabin+Sketch'             => 'Cabin Sketch',
	'Caesar+Dressing'          => 'Caesar Dressing',
	'Cagliostro'               => 'Cagliostro',
	'Calligraffitti'           => 'Calligraffitti',
	'Cambo'                    => 'Cambo',
	'Candal'                   => 'Candal',
	'Cantarell'                => 'Cantarell',
	'Cantata+One'              => 'Cantata One',
	'Cardo'                    => 'Cardo',
	'Carme'                    => 'Carme',
	'Carter+One'               => 'Carter One',
	'Caudex'                   => 'Caudex',    
	'Cedarville Cursive'       => 'Cedarville Cursive',
	'Ceviche+One'              => 'Ceviche One',    
	'Changa+One'               => 'Changa One',
	'Chango'                   => 'Chango',
	'Chau+Philomene+One'       => 'Chau Philomene One',    
	'Chelsea+Market'           => 'Chelsea Market',
	'Chenla'                   => 'Chenla',    
	'Cherry+Cream+Soda'        => 'Cherry Cream Soda',
	'Chewy'                    => 'Chewy',
	'Chicle'                   => 'Chicle',
	'Chivo'                    => 'Chivo',    

	'Coda'                     => 'Coda',
	'Coda+Caption'             => 'Coda Caption',
	'Codystar'                 => 'Codystar',
	'Comfortaa'                => 'Comfortaa',
	'Coming+Soon'              => 'Coming Soon',
	'Concert+One'              => 'Concert One',    
	'Condiment'                => 'Condiment',
	'Content'                  => 'Content',    
	'Contrail+One'             => 'Contrail One',
	'Convergence'              => 'Convergence',
	'Cookie'                   => 'Cookie',
	'Copse'                    => 'Copse',
	'Corben'                   => 'Corben',
	'Cousine'                  => 'Cousine',
	'Coustard'                 => 'Coustard',
	'Covered+By+Your+Grace'    => 'Covered By Your Grace',
	'Crafty+Girls'             => 'Crafty Girls',
	'Creepster'                => 'Creepster',        
	'Crete+Round'              => 'Crete Round',
	'Crimson+Text'             => 'Crimson Text',
	'Crushed'                  => 'Crushed',
	'Cuprum'                   => 'Cuprum',
	'Cutive'                   => 'Cutive', 
	'Damion'                   => 'Damion',
	'Dancing+Script'           => 'Dancing Script',
	'Dangrek'                  => 'Dangrek',
	'Dawning+Of+A+New+Day'     => 'Dawning of a New Day',
	'Days+One'                 => 'Days One',        
	'Delius'                   => 'Delius',
	'Delius+Swash+Caps'        => 'Delius Swash Caps',
	'Delius+Unicase'           => 'Delius Unicase',
	'Della+Respira'            => 'Della Respira',
	'Devonshire'               => 'Devonshire',
	'Didact+Gothic'            => 'Didact Gothic',
	'Diplomata'                => 'Diplomata',
	'Diplomata+SC'             => 'Diplomata SC',
	'Doppio+One'               => 'Doppio One',
	'Dorsa'                    => 'Dorsa',
	'Dosis'                    => 'Dosis',    
	'Dr+Sugiyama'              => 'Dr Sugiyama',
	'Droid+Sans'               => 'Droid Sans',
	'Droid+Sans+Mono'          => 'Droid Sans Mono',
	'Droid+Serif'              => 'Droid Serif',
	'Duru+Sans'                => 'Duru Sans',
	'Dynalight'                => 'Dynalight',
	'Eater'                    => 'Eater',
	'EB+Garamond'              => 'EB Garamond',
	'Economica'                => 'Economica',
	'Electrolize'              => 'Electrolize',
	'Emblema+One'              => 'Emblema One',
	'Emilys+Candy'             => 'Emilys Candy',    
	'Engagement'               => 'Engagement',
	'Enriqueta'                => 'Enriqueta',
	'Erica+One'                => 'Erica One',
	'Esteban'                  => 'Esteban',
	'Euphoria+Script'          => 'Euphoria Script',
	'Ewert'                    => 'Ewert',    
	'Exo'                      => 'Exo',
	'Expletus+Sans'            => 'Expletus Sans',
	'Fanwood+Text'             => 'Fanwood Text',
	'Fascinate'                => 'Fascinate',
	'Fascinate+Inline'         => 'Fascinate Inline',
	'Federant'                 => 'Federant',
	'Federo'                   => 'Federo',
	'Felipa'                   => 'Felipa',
	'Fjord+One'                => 'Fjord One',
	'Flamenco'                 => 'Flamenco',
	'Flavors'                  => 'Flavors',
	'Fondamento'               => 'Fondamento',
	'Fontdiner+Swanky'         => 'Fontdiner Swanky',
	'Forum'                    => 'Forum',
	'Francois+One'             => 'Francois One',
	'Fredericka+The+Great'     => 'Fredericka the Great',   
    'Fredoka+One'              => 'Fredoka One',
    'Freehand'                 => 'Freehand', 
	'Fresca'                   => 'Fresca',
	'Frijole'                  => 'Frijole',
	'Fugaz+One'                => 'Fugaz One',
	'Galdeano'                 => 'Galdeano',
	'Gentium+Basic'            => 'Gentium Basic',
	'Gentium+Book+Basic'       => 'Gentium Book Basic',
	'Geo'                      => 'Geo',
	'Geostar'                  => 'Geostar',
	'Geostar+Fill'             => 'Geostar Fill',
	'Germania+One'             => 'Germania One',
	'GFS+Didot'                => 'GFS Didot',
	'GFS+Neohellenic'          => 'GFS Neohellenic',
	'Give+You+Glory'           => 'Give You Glory',
	'Glass+Antiqua'            => 'Glass Antiqua',
	'Glegoo'                   => 'Glegoo',
	'Gloria+Hallelujah'        => 'Gloria Hallelujah',
	'Goblin+One'               => 'Goblin One',
	'Gochi+Hand'               => 'Gochi Hand',
	'Gorditas'                 => 'Gorditas',
	'Goudy+Bookletter+1911'    => 'Goudy Bookletter 1911',
	'Graduate'                 => 'Graduate',
	'Gravitas+One'             => 'Gravitas One',
	'Great Vibes'              => 'Great Vibes',
	'Gruppo'                   => 'Gruppo',
	'Gudea'                    => 'Gudea',
	'Habibi'                   => 'Habibi',
	'Hammersmith+One'          => 'Hammersmith One',
	'Handlee'                  => 'Handlee',
	'Hanuman'                  => 'Hanuman',
	'Happy+Monkey'             => 'Happy Monkey',
	'Henny+Penny'              => 'Henny Penny',
	'Herr+Von+Muellerhoff'     => 'Herr Von Muellerhoff',
	'Holtwood+One+SC'          => 'Holtwood One SC',
	'Homemade+Apple'           => 'Homemade Apple',    
	'Homenaje'                 => 'Homenaje',
	'Iceberg'                  => 'Iceberg',
	'Iceland'                  => 'Iceland',
	'IM+Fell+Double+Pica'      => 'IM Fell Double Pica',
	'IM+Fell+Double+Pica+SC'   => 'IM Fell Double Pica SC',
	'IM+Fell+DW+Pica'          => 'IM Fell DW Pica',    
	'IM+Fell+DW+Pica+SC'       => 'IM Fell DW Pica SC',
	'IM+Fell+English'          => 'IM Fell English',
	'IM+Fell+English+SC'       => 'IM Fell English SC',
	'IM+Fell+French+Canon'     => 'IM Fell French Canon',
	'IM+Fell+French+Canon+SC'  => 'IM Fell French Canon SC',
	'IM+Fell+Great+Primer'     => 'IM Fell Great Primer',
	'IM+Fell+Great+Primer+SC'  => 'IM Fell Great Primer SC',
	'Imprima'                  => 'Imprima',
	'Inconsolata'              => 'Inconsolata',
	'Inder'                    => 'Inder',
	'Indie+Flower'             => 'Indie Flower',
	'Inika'                    => 'Inika',
	'Irish+Grover'             => 'Irish Grover',
	'Istok+Web'                => 'Istok Web',
	'Italiana'                 => 'Italiana',
	'Italianno'                => 'Italianno',
	'Jim+Nightshade'           => 'Jim Nightshade',
	'Jockey+One'               => 'Jockey One',
	'Jolly Lodger'             => 'Jolly Lodger',
	'Josefin+Sans'             => 'Josefin Sans',
	'Josefin+Slab'             => 'Josefin Slab',
	'Judson'                   => 'Judson',
	'Julee'                    => 'Julee',
	'Junge'                    => 'Junge',
	'Jura'                     => 'Jura',
	'Just+Another+Hand'        => 'Just Another Hand',
	'Just+Me+Again+Down+Here'  => 'Just Me Again Down Here',
	'Kameron'                  => 'Kameron',
	'Karla'                    => 'Karla',
	'Kaushan+Script'           => 'Kaushan Script',
	'Kelly+Slab'               => 'Kelly Slab',
	'Kenia'                    => 'Kenia',
	'Khmer'                    => 'Khmer',
	'Knewave'                  => 'Knewave',
	'Kotta+One'                => 'Kotta One',
	'Koulen'                   => 'Koulen',
	'Kranky'                   => 'Kranky',
	'Kreon'                    => 'Kreon',
	'Kristi'                   => 'Kristi',
	'Krona+One'                => 'Krona One',
	'La+Belle+Aurore'          => 'La Belle Aurore',
	'Lancelot'                 => 'Lancelot',
	'Lato'                     => 'Lato',
	'League+Script'            => 'League Script',
	'Leckerli+One'             => 'Leckerli One',
	'Ledger'                   => 'Ledger',
	'Lekton'                   => 'Lekton',
	'Lemon'                    => 'Lemon',
	'Lilita+One'               => 'Lilita One',
	'Limelight'                => 'Limelight',
	'Linden+Hill'              => 'Linden Hill',
	'Lobster'                  => 'Lobster',
	'Lobster+Two'              => 'Lobster Two',
	'Londrina+Outline'         => 'Londrina Outline',
	'Londrina+Shadow'          => 'Londrina Shadow',
	'Londrina+Sketch'          => 'Londrina Sketch',
	'Londrina+Solid'           => 'Londrina Solid',
	'Lora'                     => 'Lora',
	'Love+Ya+Like+A+Sister'    => 'Love Ya Like A Sister',
	'Loved+By+The+King'        => 'Loved by the King',
	'Lovers+Quarrel'           => 'Lovers Quarrel',
	'Luckiest+Guy'             => 'Luckiest Guy',
	'Lusitana'                 => 'Lusitana',
	'Lustria'                  => 'Lustria',
	'Macondo'                  => 'Macondo',
	'Macondo+Swash+Caps'       => 'Macondo Swash Caps',
	'Magra'                    => 'Magra',
	'Maiden+Orange'            => 'Maiden Orange',
	'Mako'                     => 'Mako',
	'Marck+Script'             => 'Marck Script',
	'Marko+One'                => 'Marko One',
	'Marmelad'                 => 'Marmelad',
	'Marvel'                   => 'Marvel',
	'Mate'                     => 'Mate',
	'Mate+SC'                  => 'Mate SC',
	'Maven+Pro'                => 'Maven Pro',    
	'Meddon'                   => 'Meddon',
	'MedievalSharp'            => 'MedievalSharp',
	'Medula+One'               => 'Medula One',
	'Megrim'                   => 'Megrim',
	'Merienda+One'             => 'Merienda One',
	'Merriweather'             => 'Merriweather',
	'Metal'                    => 'Metal',
	'Metamorphous'             => 'Metamorphous',
	'Metrophobic'              => 'Metrophobic',
	'Michroma'                 => 'Michroma',
	'Miltonian'                => 'Miltonian',
	'Miltonian+Tattoo'         => 'Miltonian Tattoo',
	'Miniver'                  => 'Miniver',
	'Miss+Fajardose'           => 'Miss Fajardose',
	'Modern+Antiqua'           => 'Modern Antiqua',
	'Molengo'                  => 'Molengo',
	'Monofett'                 => 'Monofett',
	'Monoton'                  => 'Monoton',
	'Monsieur+La+Doulaise'     => 'Monsieur La Doulaise',
	'Montaga'                  => 'Montaga',
	'Montez'                   => 'Montez',
	'Montserrat'               => 'Montserrat',
	'Moul'                     => 'Moul',
	'Moulpali'                 => 'Moulpali',
	'Mountains+of+Christmas'   => 'Mountains of Christmas',
	'Mr+Bedfort'               => 'Mr Bedfort',
	'Mr+Dafoe'                 => 'Mr Dafoe',
	'Mr+De+Haviland'           => 'Mr De Haviland',
	'Mrs+Saint+Delafield'      => 'Mrs Saint Delafield',
	'Mrs+Sheppards'            => 'Mrs Sheppards',
	'Muli'                     => 'Muli',
	'Mystery+Quest'            => 'Mystery Quest',
	'Neucha'                   => 'Neucha',
	'Neuton'                   => 'Neuton',
	'News+Cycle'               => 'News Cycle',
	'Niconne'                  => 'Niconne',
	'Nixie+One'                => 'Nixie One',
	'Nobile'                   => 'Nobile',
	'Nokora'                   => 'Nokora',
	'Norican'                  => 'Norican',
	'Nosifer'                  => 'Nosifer',
	'Nothing+You+Could+Do'     => 'Nothing You Could Do',
	'Noticia+Text'             => 'Noticia Text',
	'Nova+Cut'                 => 'Nova Cut',
	'Nova+Flat'                => 'Nova Flat',
	'Nova+Mono'                => 'Nova Mono',
	'Nova+Oval'                => 'Nova Oval',
	'Nova+Round'               => 'Nova Round',
	'Nova+Script'              => 'Nova Script',
	'Nova+Slim'                => 'Nova Slim',
	'Nova+Square'              => 'Nova Square',
	'Numans'                   => 'Numans',
	'Nunito'                   => 'Nunito',
	'Odor+Mean+Chey'           => 'Odor Mean Chey',
	'Old+Standard+TT'          => 'Old Standard TT',
	'Oldenburg'                => 'Oldenburg',
	'Oleo+Script'              => 'Oleo Script',
	'Open+Sans'                => 'Open Sans',
	'Open+Sans+Condensed'      => 'Open Sans Condensed',
	'Orbitron'                 => 'Orbitron',
	'Original+Surfer'          => 'Original Surfer',
	'Oswald'                   => 'Oswald',
	'Over+the+Rainbow'         => 'Over the Rainbow',
	'Overlock'                 => 'Overlock',
	'Overlock+SC'              => 'Overlock SC',
	'Ovo'                      => 'Ovo',
	'Oxygen'                   => 'Oxygen',
	'Pacifico'                 => 'Pacifico',
	'Parisienne'               => 'Parisienne',
	'Passero+One'              => 'Passero One',
	'Passion+One'              => 'Passion One',
	'Patrick+Hand'             => 'Patrick Hand',
	'Patua+One'                => 'Patua One',
	'Paytone+One'              => 'Paytone One',
	'Permanent+Marker'         => 'Permanent Marker',
	'Petrona'                  => 'Petrona',
	'Philosopher'              => 'Philosopher',
	'Piedra'                   => 'Piedra',
	'Pinyon+Script'            => 'Pinyon Script',
	'Plaster'                  => 'Plaster',
	'Play'                     => 'Play',
	'Playball'                 => 'Playball',
	'Playfair+Display'         => 'Playfair Display',
	'Podkova'                  => 'Podkova',
	'Poiret+One'               => 'Poiret One',
	'Poller+One'               => 'Poller One',
	'Poly'                     => 'Poly',
	'Pompiere'                 => 'Pompiere',
	'Pontano+Sans'             => 'Pontano Sans',
	'Port+Lligat+Sans'         => 'Port Lligat Sans',
	'Port+Lligat+Slab'         => 'Port Lligat Slab',
	'Prata'                    => 'Prata',
	'Preahvihear'              => 'Preahvihear',
	'Press+Start+2P'           => 'Press Start 2P',
	'Princess+Sofia'           => 'Princess Sofia',
	'Prociono'                 => 'Prociono',
	'Prosto+One'               => 'Prosto One',
	'PT+Mono'                  => 'PT Mono',
	'PT+Sans'                  => 'PT Sans',
	'PT+Sans+Caption'          => 'PT Sans Caption',
	'PT+Sans+Narrow'           => 'PT Sans Narrow',
	'PT+Serif'                 => 'PT Serif',
	'PT+Serif+Caption'         => 'PT Serif Caption',
	'Puritan'                  => 'Puritan',
	'Quantico'                 => 'Quantico',
	'Quattrocento'             => 'Quattrocento',
	'Quattrocento+Sans'        => 'Quattrocento Sans',
	'Questrial'                => 'Questrial',
	'Quicksand'                => 'Quicksand',
	'Qwigley'                  => 'Qwigley',
	'Radley'                   => 'Radley',
	'Raleway'                  => 'Raleway',
	'Rammetto+One'             => 'Rammetto One',
	'Rancho'                   => 'Rancho',
	'Rationale'                => 'Rationale',
	'Redressed'                => 'Redressed',
	'Reenie+Beanie'            => 'Reenie Beanie',
	'Revalia'                  => 'Revalia',
	'Ribeye'                   => 'Ribeye',
	'Ribeye+Marrow'            => 'Ribeye Marrow',
	'Righteous'                => 'Righteous',
	'Rochester'                => 'Rochester',
	'Rock+Salt'                => 'Rock Salt',
	'Rokkitt'                  => 'Rokkitt',
	'Ropa+Sans'                => 'Ropa Sans',
	'Rosario'                  => 'Rosario',
	'Rosarivo'                 => 'Rosarivo',
	'Rouge+Script'             => 'Rouge Script',
	'Ruda'                     => 'Ruda',
	'Ruge+Boogie'              => 'Ruge Boogie',
	'Ruluko'                   => 'Ruluko',
	'Ruslan+Display'           => 'Ruslan Display',
	'Russo+One'                => 'Russo One',
	'Ruthie'                   => 'Ruthie',
	'Sail'                     => 'Sail',
	'Salsa'                    => 'Salsa',
	'Sancreek'                 => 'Sancreek',
	'Sansita+One'              => 'Sansita One',
	'Sarina'                   => 'Sarina',
	'Satisfy'                  => 'Satisfy',
	'Schoolbell'               => 'Schoolbell',
	'Seaweed+Script'           => 'Seaweed Script',
	'Sevillana'                => 'Sevillana',
	'Shadows+Into+Light'       => 'Shadows Into Light',
	'Shadows+Into+Light+Two'   => 'Shadows Into Light Two',
	'Shanti'                   => 'Shanti',
	'Share'                    => 'Share',
	'Shojumaru'                => 'Shojumaru',
	'Short+Stack'              => 'Short Stack',
	'Siemreap'                 => 'Siemreap',
	'Sigmar+One'               => 'Sigmar One',
	'Signika'                  => 'Signika',
	'Signika+Negative'         => 'Signika Negative',
	'Simonetta'                => 'Simonetta',
	'Sirin+Stencil'            => 'Sirin Stencil',
	'Six+Caps'                 => 'Six Caps',
	'Slackey'                  => 'Slackey',
	'Smokum'                   => 'Smokum',
	'Smythe'                   => 'Smythe',
	'Sniglet'                  => 'Sniglet',
	'Snippet'                  => 'Snippet',
	'Sofia'                    => 'Sofia',
	'Sonsie+One'               => 'Sonsie One',
	'Sorts+Mill+Goudy'         => 'Sorts Mill Goudy',
	'Special+Elite'            => 'Special Elite',
	'Spicy+Rice'               => 'Spicy Rice',
	'Spinnaker'                => 'Spinnaker',
	'Spirax'                   => 'Spirax',
	'Squada+One'               => 'Squada One',
	'Stardos+Stencil'          => 'Stardos Stencil',
	'Stint+Ultra+Condensed'    => 'Stint Ultra Condensed',
	'Stint+Ultra+Expanded'     => 'Stint Ultra Expanded',
	'Stoke'                    => 'Stoke',
	'Sue+Ellen+Francisco'      => 'Sue Ellen Francisco',
	'Sunshiney'                => 'Sunshiney',
	'Supermercado+One'         => 'Supermercado One',
	'Suwannaphum'              => 'Suwannaphum',
	'Swanky+And+Moo+Moo'       => 'Swanky and Moo Moo',
	'Syncopate'                => 'Syncopate',
	'Tangerine'                => 'Tangerine',
	'Taprom'                   => 'Taprom',
	'Telex'                    => 'Telex',
	'Tenor+Sans'               => 'Tenor Sans',
	'Terminal+Dosis'           => 'Terminal Dosis',
	'The+Girl+Next+Door'       => 'The Girl Next Door',
	'Tienne'                   => 'Tienne',
	'Tinos'                    => 'Tinos',
	'Titan+One'                => 'Titan One',
	'Trade+Winds'              => 'Trade Winds',
	'Trocchi'                  => 'Trocchi',
	'Trochut'                  => 'Trochut',
	'Trykker'                  => 'Trykker',
	'Tulpen+One'               => 'Tulpen One',
	'Ubuntu'                   => 'Ubuntu',
	'Ubuntu+Condensed'         => 'Ubuntu Condensed',
	'Ubuntu+Mono'              => 'Ubuntu Mono',
	'Ultra'                    => 'Ultra',
	'Uncial+Antiqua'           => 'Uncial Antiqua',
	'UnifrakturCook'           => 'UnifrakturCook',
	'UnifrakturMaguntia'       => 'UnifrakturMaguntia',
	'Unkempt'                  => 'Unkempt',
	'Unlock'                   => 'Unlock',
	'Unna'                     => 'Unna',
	'Varela'                   => 'Varela',
	'Varela+Round'             => 'Varela Round',
	'Vast+Shadow'              => 'Vast Shadow',
	'Vibur'                    => 'Vibur',
	'Vidaloka'                 => 'Vidaloka',
	'Viga'                     => 'Viga',
	'Voces'                    => 'Voces',
	'Volkhov'                  => 'Volkhov',
	'Vollkorn'                 => 'Vollkorn',
	'Voltaire'                 => 'Voltaire',
	'VT323'                    => 'VT323',
	'Waiting+for+the+Sunrise'  => 'Waiting for the Sunrise',
	'Wallpoet'                 => 'Wallpoet',
	'Walter+Turncoat'          => 'Walter Turncoat',
	'Wellfleet'                => 'Wellfleet',
	'Wire+One'                 => 'Wire One',
	'Yanone+Kaffeesatz'        => 'Yanone Kaffeesatz',
	'Yellowtail'               => 'Yellowtail',
	'Yeseva+One'               => 'Yeseva One',
	'Yesteryear'               => 'Yesteryear',
	'Zeyada'                   => 'Zeyada',
	); 
?>

<div id="content">
	<div class="breadcrumb">
		<?php foreach ($breadcrumbs as $breadcrumb) { ?>
		<?php echo $breadcrumb['separator']; ?><a href="<?php echo $breadcrumb['href']; ?>"><?php echo $breadcrumb['text']; ?></a>
		<?php } ?>
	</div>
	<?php if ($error_warning) { ?>
		<div class="warning"><?php echo $error_warning; ?></div>
	<?php } ?>
    
<div class="box">

	<div class="heading">
		<h1><img src="view/image/module.png" alt="" /> <?php echo $heading_title; ?></h1>
		<div class="buttons">
        <a onclick="$('#form').submit();" class="button"><?php echo $button_save; ?></a>
        <a onclick="location = '<?php echo $cancel; ?>';" class="button"><?php echo $button_cancel; ?></a>
        </div>
	</div>

	<div class="content">    
	<form action="<?php echo $action; ?>" method="post" enctype="multipart/form-data" id="form">

        <div>
		<div style="margin-top:0px; margin-bottom:20px; float:left; display:block">
			<label><?php echo $entry_status; ?></label>
			<select name="sellya_status">
				<?php if ($sellya_status) { ?>
				<option value="1" selected="selected"><?php echo $text_enabled; ?></option>
				<option value="0"><?php echo $text_disabled; ?></option>
				<?php } else { ?>
				<option value="1"><?php echo $text_enabled; ?></option>
				<option value="0" selected="selected"><?php echo $text_disabled; ?></option>
				<?php } ?>
			</select> 
		</div>
        <div style="margin-top:10px; margin-bottom:20px; margin-left:170px;">
			<label><?php echo $entry_skin; ?></label>
            <select name="sellya_skin">
                 <option value="1"<?php if($sellya_skin == '1') echo ' selected="selected"';?><?php if($sellya_skin == '') echo ' selected="selected"';?>><?php echo $entry_skin_1; ?></option>
                 <option value="2"<?php if($sellya_skin == '2') echo ' selected="selected"';?>><?php echo $entry_skin_2; ?></option>
                 <option value="3"<?php if($sellya_skin == '3') echo ' selected="selected"';?>><?php echo $entry_skin_3; ?></option>
                 <option value="4"<?php if($sellya_skin == '4') echo ' selected="selected"';?>><?php echo $entry_skin_4; ?></option>
                 <option value="5"<?php if($sellya_skin == '5') echo ' selected="selected"';?>><?php echo $entry_skin_5; ?></option>
                 <option value="6"<?php if($sellya_skin == '6') echo ' selected="selected"';?>><?php echo $entry_skin_6; ?></option> 
                 <option value="7"<?php if($sellya_skin == '7') echo ' selected="selected"';?>><?php echo $entry_skin_7; ?></option>                             
            </select> 
            <span class="sellya_help_tip"><a id="sellya-help-32" title="" href="#">?</a></span> 
            <span style="margin-left:50px;">Useful links:</span> 
            <a href="http://321cart.com/sellya/documentation/" class="link" target="_blank">Documentation</a> | 
            <a href="http://321cart.com/sellya/theme_select/" class="link" target="_blank">Sellya Demo</a> | 
            <a href="http://321cart.com/sellya/support/" class="link" target="_blank">Sellya Support System</a><span class="sellya_help_tip"><a id="sellya-help-33" title="" href="#">?</a></span>     
		</div>
        </div>
        
		<div id="settings_tabs" class="htabs">
			<a href="#tab-store-features"><?php echo $entry_tab_store_features; ?></a>
            <a href="#tab-colors-styles"><?php echo $entry_tab_colors_styles; ?></a>
            <a href="#tab-background-images"><?php echo $entry_tab_background_images; ?></a> 
            <a href="#tab-fonts"><?php echo $entry_tab_fonts; ?></a>                                                                 
			<a href="#tab-footer"><?php echo $entry_tab_footer; ?></a>
			<a href="#tab-widgets"><?php echo $entry_tab_widgets; ?></a>  
			<a href="#tab-css"><?php echo $entry_tab_custom_css; ?></a>                                      
		</div>        

        
        <div id="tab-store-features">   
        
        <div id="store_features_tabs" class="vtabs">
             <a href="#tab-store-features-main-menu"><?php echo $entry_store_features_main_menu; ?></a>
             <a href="#tab-store-features-homepage"><?php echo $entry_store_features_homepage; ?></a>
             <a href="#tab-store-features-category"><?php echo $entry_store_features_category; ?></a> 
             <a href="#tab-store-features-product"><?php echo $entry_store_features_product; ?></a>   
             <a href="#tab-store-features-contact"><?php echo $entry_store_features_contact; ?></a>  
             <a href="#tab-store-features-lrcolumn"><?php echo $entry_store_features_left_right_column; ?></a>                                       
        </div> 
        
        <div id="tab-store-features-main-menu" class="vtabs-content">    
        
        <table class="form">
        
					<tr>
						<td colspan="2"><div><b><?php echo $entry_menu_homepage; ?></b></div></td>
					</tr>  
					<tr>
						<td><?php echo $entry_menu_homepage_status; ?></td>
						<td>			
                        <select name="sellya_menu_homepage_status">
                            <option value="1"<?php if($sellya_menu_homepage_status == '1') echo ' selected="selected"';?><?php if($sellya_menu_homepage_status == '') echo ' selected="selected"';?>>
                            <?php echo $text_yes; ?></option>
                            <option value="0"<?php if($sellya_menu_homepage_status == '0') echo ' selected="selected"';?>><?php echo $text_no; ?></option>                        
			            </select>
                        </td>
					</tr>
                     <tr>
						<td><?php echo $entry_menu_homepage_style; ?></td>
						<td>
                        <select name="sellya_menu_homepage_style">    
                           <option value="1"<?php if($sellya_menu_homepage_style == '1') echo ' selected="selected"';?>><?php echo $text_icon; ?></option>      
                           <option value="2"<?php if($sellya_menu_homepage_style == '2') echo ' selected="selected"';?><?php if($sellya_menu_homepage_style == '') echo ' selected="selected"';?>><?php echo $text_text; ?></option>                               
                        </select>
                        </td>
					</tr>
                          
		 </table>            
        
        <table class="form sellya_sep">
        
					<tr>
						<td colspan="2"><div><b><?php echo $entry_menu_categories; ?></b></div></td>
					</tr>
					<tr>
						<td><?php echo $entry_menu_categories_status; ?></td>
						<td>
                        <select name="sellya_menu_categories_status">
                            <option value="1"<?php if($sellya_menu_categories_status == '1') echo ' selected="selected"';?><?php if($sellya_menu_categories_status == '') echo ' selected="selected"';?>>
                            <?php echo $text_yes; ?></option>
                            <option value="0"<?php if($sellya_menu_categories_status == '0') echo ' selected="selected"';?>><?php echo $text_no; ?></option>                        
			            </select>                        
                        </td>
					</tr>
					<tr>
						<td><?php echo $entry_menu_categories_style; ?></td>
						<td>			
                        <select name="sellya_menu_categories_style">
                           <option value="1"<?php if($sellya_menu_categories_style == '1') echo ' selected="selected"';?>><?php echo $text_opencart; ?></option>
                           <option value="2"<?php if($sellya_menu_categories_style == '2') echo ' selected="selected"';?>><?php echo $text_vertical; ?></option>
                           <option value="3"<?php if($sellya_menu_categories_style == '3') echo ' selected="selected"';?><?php if($sellya_menu_categories_style == '') echo ' selected="selected"';?>><?php echo $text_horizontal; ?></option>                           
                        </select>                        
                        </td>
					</tr>
					<tr>
						<td><?php echo $entry_mm2_main_category_icon_status; ?><br /><span class="sellya_help"><?php echo $entry_mm2_main_category_icon_status_help; ?></span></td>
						<td>
                        <select name="sellya_mm2_main_category_icon_status">
                            <option value="1"<?php if($sellya_mm2_main_category_icon_status == '1') echo ' selected="selected"';?>><?php echo $text_yes; ?></option>
                            <option value="0"<?php if($sellya_mm2_main_category_icon_status == '0') echo ' selected="selected"';?><?php if($sellya_mm2_main_category_icon_status == '') echo ' selected="selected"';?>><?php echo $text_no; ?></option>                        
			            </select>                           
                        </td>
					</tr>                      
                          
		 </table>
         
        <table class="form">
        
					<tr>
						<td colspan="2"><div><b><?php echo $entry_menu_brands; ?></b><span class="sellya_help_tip"><a id="sellya-help-34" title="" href="#">?</a></span></div></td>
					</tr>
					<tr>
						<td><?php echo $entry_menu_brands_status; ?></td>
						<td>
                        <select name="sellya_menu_brands_status">
                            <option value="1"<?php if($sellya_menu_brands_status == '1') echo ' selected="selected"';?>><?php echo $text_yes; ?></option>
                            <option value="0"<?php if($sellya_menu_brands_status == '0') echo ' selected="selected"';?><?php if($sellya_menu_brands_status == '') echo ' selected="selected"';?>><?php echo $text_no; ?></option>                        
			            </select>                             
                        </td>
					</tr>
                                     
                    <tr>
						<td><?php echo $entry_menu_brands_style; ?></td>
                        <td>
                        <select name="sellya_menu_brands_style">
                           <option value="1"<?php if($sellya_menu_brands_style == '1') echo ' selected="selected"';?>><?php echo $text_brand_logo; ?></option>
                           <option value="2"<?php if($sellya_menu_brands_style == '2') echo ' selected="selected"';?>><?php echo $text_brand_name; ?></option>
                           <option value="3"<?php if($sellya_menu_brands_style == '3') echo ' selected="selected"';?>><?php echo $text_brand_logo_name; ?></option>                           
                        </select>
                        </td>
					</tr>                                             
                    
                    <tr>
						<td><?php echo $entry_menu_brands_per_row; ?></td>
                        <td>
                        <select name="sellya_menu_brands_per_row">
                           <option value="4"<?php if($sellya_menu_brands_per_row == '4') echo ' selected="selected"';?>>4</option>
                           <option value="6"<?php if($sellya_menu_brands_per_row == '6') echo ' selected="selected"';?>>6</option>
                           <option value="8"<?php if($sellya_menu_brands_per_row == '8') echo ' selected="selected"';?>>8</option>                           
                        </select>
                        </td>
					</tr>                 
                          
		 </table>                                       
        
        <table class="form sellya_sep">
        
					<tr>
						<td colspan="2"><div><b><?php echo $entry_menu_information_pages; ?></b></div></td>
					</tr>
					<tr>
						<td><?php echo $entry_menu_information_pages_status; ?></td>
						<td>
                        <select name="sellya_menu_information_pages_status">
                            <option value="1"<?php if($sellya_menu_information_pages_status == '1') echo ' selected="selected"';?>><?php echo $text_yes; ?></option>
                            <option value="0"<?php if($sellya_menu_information_pages_status == '0') echo ' selected="selected"';?><?php if($sellya_menu_information_pages_status == '') echo ' selected="selected"';?>><?php echo $text_no; ?></option>                        
			            </select>                           
                        </td>
					</tr>
                          
		 </table>  
         
        <table class="form">
        
					<tr>
						<td colspan="2"><div><b><?php echo $entry_menu_your_account; ?></b></div></td>
					</tr>
					<tr>
						<td><?php echo $entry_menu_your_account_status; ?></td>
						<td>
                        <select name="sellya_menu_your_account_status">
                            <option value="1"<?php if($sellya_menu_your_account_status == '1') echo ' selected="selected"';?>><?php echo $text_yes; ?></option>
                            <option value="0"<?php if($sellya_menu_your_account_status == '0') echo ' selected="selected"';?><?php if($sellya_menu_your_account_status == '') echo ' selected="selected"';?>><?php echo $text_no; ?></option>                        
			            </select>                          
                        </td>
					</tr>
                          
		 </table>                        
        
        <table class="form sellya_sep">
        
					<tr>
						<td colspan="5"><div><b><?php echo $entry_menu_links; ?></b></div></td>
					</tr>
         			<tr>
						<td><?php echo $entry_menu_link_1; ?></td>
						<td width="70">
                        <div style="float:left">
                        <label class="s_checkbox"><input type="checkbox" value="1" name="sellya_menu_link_1_status"<?php if($sellya_menu_link_1_status == '1') echo ' checked="checked"';?> />
                         Show</label>&nbsp;&nbsp;&nbsp;&nbsp;</div>
                        </td>
                        <td width="140">
                        <?php echo $text_title; ?><br /><input type="text" name="sellya_menu_link_1" value="<?php echo $sellya_menu_link_1; ?>" />
                        </td>
						<td width="140">
                        <?php echo $entry_menu_links_url; ?><br /><input type="text" name="sellya_menu_link_1_url" value="<?php echo $sellya_menu_link_1_url; ?>" />
                        </td>  
                      	<td>
                        <?php echo $entry_menu_links_target; ?><br />
                        <select name="sellya_menu_link_1_target">
                            <option value="_self"<?php if($sellya_menu_link_1_target == '_self') echo ' selected="selected"';?><?php if($sellya_menu_link_1_target == '') echo ' selected="selected"';?>><?php echo $text_tself; ?></option>
                            <option value="_blank"<?php if($sellya_menu_link_1_target == '_blank') echo ' selected="selected"';?>><?php echo $text_tblank; ?></option>                        
			            </select>                          
                        </td>                        
					</tr> 

         			<tr>
						<td><?php echo $entry_menu_link_2; ?></td>
						<td width="70">
                        <div style="float:left">
                        <label class="s_checkbox"><input type="checkbox" value="1" name="sellya_menu_link_2_status"<?php if($sellya_menu_link_2_status == '1') echo ' checked="checked"';?> />
                         Show</label>&nbsp;&nbsp;&nbsp;&nbsp;</div>
                        </td>
                        <td width="140">
                        <?php echo $text_title; ?><br /><input type="text" name="sellya_menu_link_2" value="<?php echo $sellya_menu_link_2; ?>" />
                        </td>
						<td width="140">
                        <?php echo $entry_menu_links_url; ?><br /><input type="text" name="sellya_menu_link_2_url" value="<?php echo $sellya_menu_link_2_url; ?>" />
                        </td>
                      	<td>
                        <?php echo $entry_menu_links_target; ?><br />
                        <select name="sellya_menu_link_2_target">
                            <option value="_self"<?php if($sellya_menu_link_2_target == '_self') echo ' selected="selected"';?><?php if($sellya_menu_link_2_target == '') echo ' selected="selected"';?>><?php echo $text_tself; ?></option>
                            <option value="_blank"<?php if($sellya_menu_link_2_target == '_blank') echo ' selected="selected"';?>><?php echo $text_tblank; ?></option>                        
			            </select>                          
                        </td>                                                   
					</tr> 
                    
         			<tr>
						<td><?php echo $entry_menu_link_3; ?></td>
						<td width="70">
                        <div style="float:left">
                        <label class="s_checkbox"><input type="checkbox" value="1" name="sellya_menu_link_3_status"<?php if($sellya_menu_link_3_status == '1') echo ' checked="checked"';?> />
                         Show</label>&nbsp;&nbsp;&nbsp;&nbsp;</div>
                        </td>
                        <td width="140">
                        <?php echo $text_title; ?><br /><input type="text" name="sellya_menu_link_3" value="<?php echo $sellya_menu_link_3; ?>" />
                        </td>
						<td width="140">
                        <?php echo $entry_menu_links_url; ?><br /><input type="text" name="sellya_menu_link_3_url" value="<?php echo $sellya_menu_link_3_url; ?>" />
                        </td> 
                      	<td>
                        <?php echo $entry_menu_links_target; ?><br />
                        <select name="sellya_menu_link_3_target">
                            <option value="_self"<?php if($sellya_menu_link_3_target == '_self') echo ' selected="selected"';?><?php if($sellya_menu_link_3_target == '') echo ' selected="selected"';?>><?php echo $text_tself; ?></option>
                            <option value="_blank"<?php if($sellya_menu_link_3_target == '_blank') echo ' selected="selected"';?>><?php echo $text_tblank; ?></option>                        
			            </select>                          
                        </td>                                                  
					</tr>
                    
         			<tr>
						<td><?php echo $entry_menu_link_4; ?></td>
						<td width="70">
                        <div style="float:left">
                        <label class="s_checkbox"><input type="checkbox" value="1" name="sellya_menu_link_4_status"<?php if($sellya_menu_link_4_status == '1') echo ' checked="checked"';?> />
                         Show</label>&nbsp;&nbsp;&nbsp;&nbsp;</div>
                        </td>
                        <td width="140">
                        <?php echo $text_title; ?><br /><input type="text" name="sellya_menu_link_4" value="<?php echo $sellya_menu_link_4; ?>" />
                        </td>
						<td width="140">
                        <?php echo $entry_menu_links_url; ?><br /><input type="text" name="sellya_menu_link_4_url" value="<?php echo $sellya_menu_link_4_url; ?>" />
                        </td>
                      	<td>
                        <?php echo $entry_menu_links_target; ?><br />
                        <select name="sellya_menu_link_4_target">
                            <option value="_self"<?php if($sellya_menu_link_4_target == '_self') echo ' selected="selected"';?><?php if($sellya_menu_link_4_target == '') echo ' selected="selected"';?>><?php echo $text_tself; ?></option>
                            <option value="_blank"<?php if($sellya_menu_link_4_target == '_blank') echo ' selected="selected"';?>><?php echo $text_tblank; ?></option>                        
			            </select>                          
                        </td>                                                   
					</tr>  
         
         			<tr>
						<td><?php echo $entry_menu_link_5; ?></td>
						<td width="70">
                        <div style="float:left">
                        <label class="s_checkbox"><input type="checkbox" value="1" name="sellya_menu_link_5_status"<?php if($sellya_menu_link_5_status == '1') echo ' checked="checked"';?> />
                         Show</label>&nbsp;&nbsp;&nbsp;&nbsp;</div>
                        </td>
                        <td width="140">
                        <?php echo $text_title; ?><br /><input type="text" name="sellya_menu_link_5" value="<?php echo $sellya_menu_link_5; ?>" />
                        </td>
						<td width="140">
                        <?php echo $entry_menu_links_url; ?><br /><input type="text" name="sellya_menu_link_5_url" value="<?php echo $sellya_menu_link_5_url; ?>" />
                        </td>
                      	<td>
                        <?php echo $entry_menu_links_target; ?><br />
                        <select name="sellya_menu_link_5_target">
                            <option value="_self"<?php if($sellya_menu_link_5_target == '_self') echo ' selected="selected"';?><?php if($sellya_menu_link_5_target == '') echo ' selected="selected"';?>><?php echo $text_tself; ?></option>
                            <option value="_blank"<?php if($sellya_menu_link_5_target == '_blank') echo ' selected="selected"';?>><?php echo $text_tblank; ?></option>                        
			            </select>                          
                        </td>                                                   
					</tr>
                    
         			<tr>
						<td><?php echo $entry_menu_link_6; ?></td>
						<td width="70">
                        <div style="float:left">
                        <label class="s_checkbox"><input type="checkbox" value="1" name="sellya_menu_link_6_status"<?php if($sellya_menu_link_6_status == '1') echo ' checked="checked"';?> />
                         Show</label>&nbsp;&nbsp;&nbsp;&nbsp;</div>
                        </td>
                        <td width="140">
                        <?php echo $text_title; ?><br /><input type="text" name="sellya_menu_link_6" value="<?php echo $sellya_menu_link_6; ?>" />
                        </td>
						<td width="140">
                        <?php echo $entry_menu_links_url; ?><br /><input type="text" name="sellya_menu_link_6_url" value="<?php echo $sellya_menu_link_6_url; ?>" />
                        </td>
                      	<td>
                        <?php echo $entry_menu_links_target; ?><br />
                        <select name="sellya_menu_link_6_target">
                            <option value="_self"<?php if($sellya_menu_link_6_target == '_self') echo ' selected="selected"';?><?php if($sellya_menu_link_6_target == '') echo ' selected="selected"';?>><?php echo $text_tself; ?></option>
                            <option value="_blank"<?php if($sellya_menu_link_6_target == '_blank') echo ' selected="selected"';?>><?php echo $text_tblank; ?></option>                        
			            </select>                          
                        </td>                                                   
					</tr> 
                    
         			<tr>
						<td><?php echo $entry_menu_link_7; ?></td>
						<td width="70">
                        <div style="float:left">
                        <label class="s_checkbox"><input type="checkbox" value="1" name="sellya_menu_link_7_status"<?php if($sellya_menu_link_7_status == '1') echo ' checked="checked"';?> />
                         Show</label>&nbsp;&nbsp;&nbsp;&nbsp;</div>
                        </td>
                        <td width="140">
                        <?php echo $text_title; ?><br /><input type="text" name="sellya_menu_link_7" value="<?php echo $sellya_menu_link_7; ?>" />
                        </td>
						<td width="140">
                        <?php echo $entry_menu_links_url; ?><br /><input type="text" name="sellya_menu_link_7_url" value="<?php echo $sellya_menu_link_7_url; ?>" />
                        </td>
                      	<td>
                        <?php echo $entry_menu_links_target; ?><br />
                        <select name="sellya_menu_link_7_target">
                            <option value="_self"<?php if($sellya_menu_link_7_target == '_self') echo ' selected="selected"';?><?php if($sellya_menu_link_7_target == '') echo ' selected="selected"';?>><?php echo $text_tself; ?></option>
                            <option value="_blank"<?php if($sellya_menu_link_7_target == '_blank') echo ' selected="selected"';?>><?php echo $text_tblank; ?></option>                        
			            </select>                          
                        </td>                                                   
					</tr>     
                    
         			<tr>
						<td><?php echo $entry_menu_link_8; ?></td>
						<td width="70">
                        <div style="float:left">
                        <label class="s_checkbox"><input type="checkbox" value="1" name="sellya_menu_link_8_status"<?php if($sellya_menu_link_8_status == '1') echo ' checked="checked"';?> />
                         Show</label>&nbsp;&nbsp;&nbsp;&nbsp;</div>
                        </td>
                        <td width="140">
                        <?php echo $text_title; ?><br /><input type="text" name="sellya_menu_link_8" value="<?php echo $sellya_menu_link_8; ?>" />
                        </td>
						<td width="140">
                        <?php echo $entry_menu_links_url; ?><br /><input type="text" name="sellya_menu_link_8_url" value="<?php echo $sellya_menu_link_8_url; ?>" />
                        </td>
                      	<td>
                        <?php echo $entry_menu_links_target; ?><br />
                        <select name="sellya_menu_link_8_target">
                            <option value="_self"<?php if($sellya_menu_link_8_target == '_self') echo ' selected="selected"';?><?php if($sellya_menu_link_8_target == '') echo ' selected="selected"';?>><?php echo $text_tself; ?></option>
                            <option value="_blank"<?php if($sellya_menu_link_8_target == '_blank') echo ' selected="selected"';?>><?php echo $text_tblank; ?></option>                        
			            </select>                          
                        </td>                                                   
					</tr> 
            
         			<tr>
						<td><?php echo $entry_menu_link_9; ?></td>
						<td width="70">
                        <div style="float:left">
                        <label class="s_checkbox"><input type="checkbox" value="1" name="sellya_menu_link_9_status"<?php if($sellya_menu_link_9_status == '1') echo ' checked="checked"';?> />
                         Show</label>&nbsp;&nbsp;&nbsp;&nbsp;</div>
                        </td>
                        <td width="140">
                        <?php echo $text_title; ?><br /><input type="text" name="sellya_menu_link_9" value="<?php echo $sellya_menu_link_9; ?>" />
                        </td>
						<td width="140">
                        <?php echo $entry_menu_links_url; ?><br /><input type="text" name="sellya_menu_link_9_url" value="<?php echo $sellya_menu_link_9_url; ?>" />
                        </td>
                      	<td>
                        <?php echo $entry_menu_links_target; ?><br />
                        <select name="sellya_menu_link_9_target">
                            <option value="_self"<?php if($sellya_menu_link_9_target == '_self') echo ' selected="selected"';?><?php if($sellya_menu_link_9_target == '') echo ' selected="selected"';?>><?php echo $text_tself; ?></option>
                            <option value="_blank"<?php if($sellya_menu_link_9_target == '_blank') echo ' selected="selected"';?>><?php echo $text_tblank; ?></option>                        
			            </select>                          
                        </td>                                                   
					</tr>  
                    
         			<tr>
						<td><?php echo $entry_menu_link_10; ?></td>
						<td width="70">
                        <div style="float:left">
                        <label class="s_checkbox"><input type="checkbox" value="1" name="sellya_menu_link_10_status"<?php if($sellya_menu_link_10_status == '1') echo ' checked="checked"';?> />
                         Show</label>&nbsp;&nbsp;&nbsp;&nbsp;</div>
                        </td>
                        <td width="140">
                        <?php echo $text_title; ?><br /><input type="text" name="sellya_menu_link_10" value="<?php echo $sellya_menu_link_10; ?>" />
                        </td>
						<td width="140">
                        <?php echo $entry_menu_links_url; ?><br /><input type="text" name="sellya_menu_link_10_url" value="<?php echo $sellya_menu_link_10_url; ?>" />
                        </td>
                      	<td>
                        <?php echo $entry_menu_links_target; ?><br />
                        <select name="sellya_menu_link_10_target">
                            <option value="_self"<?php if($sellya_menu_link_10_target == '_self') echo ' selected="selected"';?><?php if($sellya_menu_link_10_target == '') echo ' selected="selected"';?>><?php echo $text_tself; ?></option>
                            <option value="_blank"<?php if($sellya_menu_link_10_target == '_blank') echo ' selected="selected"';?>><?php echo $text_tblank; ?></option>                        
			            </select>                          
                        </td>                                                   
					</tr>                                                                                                                                                                          
                                             
		 </table>  
         
        <table class="form">
        
					<tr>
						<td colspan="2"><div><b><?php echo $entry_menu_custom_block; ?></b></div></td>
					</tr>
					<tr>
						<td><?php echo $entry_menu_custom_block_status; ?></td>
						<td>
                        <select name="sellya_menu_custom_block_status">
                            <option value="1"<?php if($sellya_menu_custom_block_status == '1') echo ' selected="selected"';?>><?php echo $text_yes; ?></option>
                            <option value="0"<?php if($sellya_menu_custom_block_status == '0') echo ' selected="selected"';?><?php if($sellya_menu_custom_block_status == '') echo ' selected="selected"';?>><?php echo $text_no; ?></option>                        
			            </select>  
                        </td>
					</tr>
         			<tr>
						<td><?php echo $text_title; ?></td>
                        <td><input type="text" name="sellya_menu_custom_block_title" value="<?php echo $sellya_menu_custom_block_title; ?>" /></td>
					</tr>                    
					<tr>
						<td><?php echo $text_content; ?></td>
						<td><textarea name="sellya_menu_custom_block_content" id="sellya_menu_custom"><?php echo $sellya_menu_custom_block_content; ?></textarea></td>
					</tr>                           
                          
		 </table>            
         
        <table class="form sellya_sep">
        
					<tr>
						<td colspan="2"><div><b><?php echo $entry_menu_contacts; ?></b></div></td>
					</tr>
					<tr>
						<td><?php echo $entry_menu_contacts_status; ?></td>
						<td>
                        <select name="sellya_menu_contacts_status">
                            <option value="1"<?php if($sellya_menu_contacts_status == '1') echo ' selected="selected"';?>><?php echo $text_yes; ?></option>
                            <option value="0"<?php if($sellya_menu_contacts_status == '0') echo ' selected="selected"';?><?php if($sellya_menu_contacts_status == '') echo ' selected="selected"';?>><?php echo $text_no; ?></option>                        
			            </select>
                        </td>
					</tr>
                          
		 </table> 
     			
        </div> 
           
        <div id="tab-store-features-homepage" class="vtabs-content">
        
        <table class="form">

					<tr>
						<td colspan="2"><div><b><?php echo $entry_homepage_banner_slider; ?></b><span class="sellya_help_tip"><a id="sellya-help-26" title="" href="#">?</a></span></div></td>
					</tr>
					<tr>
						<td><?php echo $entry_homepage_banner_slider_type; ?></td>
						<td>
                        <select name="sellya_homepage_banner_slider_type">
                            <option value="1"<?php if($sellya_homepage_banner_slider_type == '1') echo ' selected="selected"';?>><?php echo $entry_homepage_banner_slider_flexslider; ?></option>
                            <option value="0"<?php if($sellya_homepage_banner_slider_type == '0') echo ' selected="selected"';?><?php if($sellya_homepage_banner_slider_type == '') echo ' selected="selected"';?>><?php echo $entry_homepage_banner_slider_camera; ?></option>                        
			            </select>                        
                        </td>
					</tr>
                          
		 </table>        
         
        <table class="form sellya_sep">

					<tr>
						<td colspan="2"><div><b><?php echo $entry_homepage_bestseller; ?></b></div></td>
					</tr>
					<tr>
						<td><?php echo $entry_homepage_bestseller_status; ?></td>
						<td>
                        <select name="sellya_homepage_bestseller_status">
                            <option value="1"<?php if($sellya_homepage_bestseller_status == '1') echo ' selected="selected"';?><?php if($sellya_homepage_bestseller_status == '') echo ' selected="selected"';?>>
                            <?php echo $text_slider; ?></option>
                            <option value="0"<?php if($sellya_homepage_bestseller_status == '0') echo ' selected="selected"';?>><?php echo $text_opencart; ?></option>                        
			            </select>
                        </td>
					</tr>
                          
		 </table>           
        
        <table class="form">

					<tr>
						<td colspan="2"><div><b><?php echo $entry_homepage_featured; ?></b></div></td>
					</tr>
					<tr>
						<td><?php echo $entry_homepage_featured_status; ?></td>
						<td>
                        <select name="sellya_homepage_featured_status">
                            <option value="1"<?php if($sellya_homepage_featured_status == '1') echo ' selected="selected"';?><?php if($sellya_homepage_featured_status == '') echo ' selected="selected"';?>>
                            <?php echo $text_slider; ?></option>
                            <option value="0"<?php if($sellya_homepage_featured_status == '0') echo ' selected="selected"';?>><?php echo $text_opencart; ?></option>                        
			            </select>                        
                        </td>
					</tr>
                          
		 </table> 
         
        <table class="form sellya_sep">

					<tr>
						<td colspan="2"><div><b><?php echo $entry_homepage_latest; ?></b></div></td>
					</tr>
					<tr>
						<td><?php echo $entry_homepage_latest_status; ?></td>
						<td>
                        <select name="sellya_homepage_latest_status">
                            <option value="1"<?php if($sellya_homepage_latest_status == '1') echo ' selected="selected"';?><?php if($sellya_homepage_latest_status == '') echo ' selected="selected"';?>>
                            <?php echo $text_slider; ?></option>
                            <option value="0"<?php if($sellya_homepage_latest_status == '0') echo ' selected="selected"';?>><?php echo $text_opencart; ?></option>                        
			            </select>
                        </td>
					</tr>
                          
		 </table> 	
         
        <table class="form">

					<tr>
						<td colspan="2"><div><b><?php echo $entry_homepage_specials; ?></b></div></td>
					</tr>
					<tr>
						<td><?php echo $entry_homepage_specials_status; ?></td>
						<td>
                        <select name="sellya_homepage_specials_status">
                            <option value="1"<?php if($sellya_homepage_specials_status == '1') echo ' selected="selected"';?><?php if($sellya_homepage_specials_status == '') echo ' selected="selected"';?>>
                            <?php echo $text_slider; ?></option>
                            <option value="0"<?php if($sellya_homepage_specials_status == '0') echo ' selected="selected"';?>><?php echo $text_opencart; ?></option>                        
			            </select>
                        </td>
					</tr>
                          
		 </table>                
         
        <table class="form sellya_sep">
        
					<tr>
						<td colspan="2"><div><b><?php echo $entry_homepage_category_wall; ?></b><span class="sellya_help_tip"><a id="sellya-help-24" title="" href="#">?</a></span></div></td>
					</tr>
					<tr>
						<td><?php echo $entry_homepage_category_wall_status; ?></td>
						<td>
                        <select name="sellya_homepage_category_wall_status">
                            <option value="1"<?php if($sellya_homepage_category_wall_status == '1') echo ' selected="selected"';?>><?php echo $text_yes; ?></option>
                            <option value="0"<?php if($sellya_homepage_category_wall_status == '0') echo ' selected="selected"';?><?php if($sellya_homepage_category_wall_status == '') echo ' selected="selected"';?>><?php echo $text_no; ?></option>                        
			            </select>                        
                        </td>
					</tr>
					<tr>
						<td><?php echo $entry_homepage_category_wall_icon_status; ?></td>
						<td>
                        <select name="sellya_homepage_category_wall_icon_status">
                            <option value="1"<?php if($sellya_homepage_category_wall_icon_status == '1') echo ' selected="selected"';?><?php if($sellya_homepage_category_wall_icon_status == '') echo ' selected="selected"';?>><?php echo $text_yes; ?></option>
                            <option value="0"<?php if($sellya_homepage_category_wall_icon_status == '0') echo ' selected="selected"';?>><?php echo $text_no; ?></option>                        
			            </select>   
                        </td>
					</tr>                    
                    <tr>
						<td><?php echo $entry_homepage_category_wall_per_row; ?></td>
                        <td>
                        <select name="sellya_homepage_category_wall_per_row">
                           <option value="4"<?php if($sellya_homepage_category_wall_per_row == '4') echo ' selected="selected"';?><?php if($sellya_homepage_category_wall_per_row == '') echo ' selected="selected"';?>>4</option>
                           <option value="6"<?php if($sellya_homepage_category_wall_per_row == '6') echo ' selected="selected"';?>>6</option>
                        </select>
                        </td>
					</tr>                       
                    <tr>
						<td><?php echo $entry_homepage_category_wall_sub_number; ?></td>
                        <td>
                        <select name="sellya_homepage_category_wall_sub_number">
                           <option value="2"<?php if($sellya_homepage_category_wall_sub_number == '2') echo ' selected="selected"';?>>2</option>
                           <option value="3"<?php if($sellya_homepage_category_wall_sub_number == '3') echo ' selected="selected"';?>>3</option>
                           <option value="4"<?php if($sellya_homepage_category_wall_sub_number == '4') echo ' selected="selected"';?>>4</option>
                           <option value="5"<?php if($sellya_homepage_category_wall_sub_number == '5') echo ' selected="selected"';?><?php if($sellya_homepage_category_wall_sub_number == '') echo ' selected="selected"';?>>5</option>
                           <option value="6"<?php if($sellya_homepage_category_wall_sub_number == '6') echo ' selected="selected"';?>>6</option>
                           <option value="7"<?php if($sellya_homepage_category_wall_sub_number == '7') echo ' selected="selected"';?>>7</option>
                           <option value="8"<?php if($sellya_homepage_category_wall_sub_number == '8') echo ' selected="selected"';?>>8</option>
                           <option value="9"<?php if($sellya_homepage_category_wall_sub_number == '9') echo ' selected="selected"';?>>9</option>
                           <option value="10"<?php if($sellya_homepage_category_wall_sub_number == '10') echo ' selected="selected"';?>>10</option>
                        </select>
                        </td>
					</tr>   
                          
		 </table>
         
        <table class="form">
					<tr>
						<td colspan="2"><div><b><?php echo $entry_homepage_brands_wall; ?></b><span class="sellya_help_tip"><a id="sellya-help-25" title="" href="#">?</a></span></div></td>
					</tr>
					<tr>
						<td><?php echo $entry_homepage_brands_wall_status; ?></td>
						<td>
                        <select name="sellya_homepage_brands_wall_status">
                            <option value="1"<?php if($sellya_homepage_brands_wall_status == '1') echo ' selected="selected"';?>><?php echo $text_yes; ?></option>
                            <option value="0"<?php if($sellya_homepage_brands_wall_status == '0') echo ' selected="selected"';?><?php if($sellya_homepage_brands_wall_status == '') echo ' selected="selected"';?>><?php echo $text_no; ?></option>                        
			            </select>                          
                        </td>
					</tr>
                    <tr>
						<td><?php echo $entry_homepage_brands_wall_style; ?></td>
                        <td>
                        <select name="sellya_homepage_brands_wall_style">
                           <option value="1"<?php if($sellya_homepage_brands_wall_style == '1') echo ' selected="selected"';?>><?php echo $text_brand_logo; ?></option>
                           <option value="2"<?php if($sellya_homepage_brands_wall_style == '2') echo ' selected="selected"';?>><?php echo $text_brand_name; ?></option>
                           <option value="3"<?php if($sellya_homepage_brands_wall_style == '3') echo ' selected="selected"';?>><?php echo $text_brand_logo_name; ?></option>                           
                        </select>
                        </td>
					</tr>                       
                    <tr>
						<td><?php echo $entry_homepage_brands_wall_per_row; ?></td>
                        <td>
                        <select name="sellya_homepage_brands_wall_per_row">
                           <option value="4"<?php if($sellya_homepage_brands_wall_per_row == '4') echo ' selected="selected"';?>>4</option>
                           <option value="6"<?php if($sellya_homepage_brands_wall_per_row == '6') echo ' selected="selected"';?><?php if($sellya_homepage_brands_wall_per_row == '') echo ' selected="selected"';?>>6</option>
                        </select>
                        </td>
					</tr>                        
                          
		 </table>         
     			
        </div>
        
        <div id="tab-store-features-category" class="vtabs-content">
        
        <table class="form">
      
					<tr>
						<td colspan="2"><div><b><?php echo $entry_category_subcategories; ?></b><span class="sellya_help_tip"><a id="sellya-help-31" title="" href="#">?</a></span></div></td>
					</tr>        
        			<tr>
						<td><?php echo $entry_category_subcategories_status; ?></td>
						<td>
                        <select name="sellya_category_subcategories_status">
                            <option value="1"<?php if($sellya_category_subcategories_status == '1') echo ' selected="selected"';?><?php if($sellya_category_subcategories_status == '') echo ' selected="selected"';?>><?php echo $text_yes; ?></option>
                            <option value="0"<?php if($sellya_category_subcategories_status == '0') echo ' selected="selected"';?>><?php echo $text_no; ?></option>                        
			            </select>                          
                        </td>
					</tr>
					<tr>
						<td><?php echo $entry_category_subcategories_style; ?></td>
						<td>
                        <select name="sellya_category_subcategories_style">
                            <option value="1"<?php if($sellya_category_subcategories_style == '1') echo ' selected="selected"';?>><?php echo $text_opencart; ?></option>
                            <option value="0"<?php if($sellya_category_subcategories_style == '0') echo ' selected="selected"';?><?php if($sellya_category_subcategories_style == '') echo ' selected="selected"';?>><?php echo $text_sellya; ?></option>                        
			            </select>
                        </td>
					</tr>
                    
		 </table>                                    
     			
        </div>
        
        <div id="tab-store-features-product" class="vtabs-content">  
        
        <table class="form">

        			<tr>
						<td><?php echo $entry_product_manufacturer_logo_status; ?></td>
						<td>
                        <select name="sellya_product_manufacturer_logo_status">
                            <option value="1"<?php if($sellya_product_manufacturer_logo_status == '1') echo ' selected="selected"';?><?php if($sellya_product_manufacturer_logo_status == '') echo ' selected="selected"';?>><?php echo $text_yes; ?></option>
                            <option value="0"<?php if($sellya_product_manufacturer_logo_status == '0') echo ' selected="selected"';?>><?php echo $text_no; ?></option>                        
			            </select>
                        </td>
					</tr>
        			<tr>
						<td><?php echo $entry_product_viewed_status; ?></td>
						<td>
                        <select name="sellya_product_viewed_status">
                            <option value="1"<?php if($sellya_product_viewed_status == '1') echo ' selected="selected"';?><?php if($sellya_product_viewed_status == '') echo ' selected="selected"';?>><?php echo $text_yes; ?></option>
                            <option value="0"<?php if($sellya_product_viewed_status == '0') echo ' selected="selected"';?>><?php echo $text_no; ?></option>                        
			            </select>
                        </td>
					</tr>                    
                    
		 </table>        
        
        <table class="form sellya_sep">

					<tr>
						<td colspan="2"><div><b><?php echo $entry_product_zoom; ?></b></div></td>
					</tr>        
					<tr>
						<td><?php echo $entry_product_zoom_type; ?></td>
						<td>
                        <select name="sellya_product_zoom_type">
                            <option value="1"<?php if($sellya_product_zoom_type == '1') echo ' selected="selected"';?>><?php echo $text_opencart; ?></option>
                            <option value="0"<?php if($sellya_product_zoom_type == '0') echo ' selected="selected"';?><?php if($sellya_product_zoom_type == '') echo ' selected="selected"';?>><?php echo $text_cloud_zoom; ?></option>                        
			            </select>
                        </td>
					</tr>
                    
		 </table>
         
        <table class="form">
                      
					<tr>
						<td colspan="2"><div><b><?php echo $entry_product_related; ?></b><span class="sellya_help_tip"><a id="sellya-help-27" title="" href="#">?</a></span></div></td>
					</tr>         
        			<tr>
						<td><?php echo $entry_product_related_status; ?></td>
						<td>
                        <select name="sellya_product_related_status">
                            <option value="1"<?php if($sellya_product_related_status == '1') echo ' selected="selected"';?><?php if($sellya_product_related_status == '') echo ' selected="selected"';?>><?php echo $text_yes; ?></option>
                            <option value="0"<?php if($sellya_product_related_status == '0') echo ' selected="selected"';?>><?php echo $text_no; ?></option>                        
			            </select>
                        </td>
					</tr>
					<tr>
						<td><?php echo $entry_product_related_position; ?></td>
						<td>
                        <select name="sellya_product_related_position">
                            <option value="1"<?php if($sellya_product_related_position == '1') echo ' selected="selected"';?>><?php echo $text_position_b; ?></option>
                            <option value="0"<?php if($sellya_product_related_position == '0') echo ' selected="selected"';?><?php if($sellya_product_related_position == '') echo ' selected="selected"';?>><?php echo $text_position_r; ?></option>                        
			            </select>
                        </td>
					</tr>
                    
		 </table>
         
        <table class="form sellya_sep">

					<tr>
						<td colspan="2"><div><b><?php echo $entry_product_custom; ?></b><span class="sellya_help_tip"><a id="sellya-help-28" title="" href="#">?</a></span></div></td>
					</tr> 
					<tr>
						<td><?php echo $entry_product_custom_status; ?></td>
						<td>
                        <select name="sellya_product_custom_status">
                            <option value="1"<?php if($sellya_product_custom_status == '1') echo ' selected="selected"';?>><?php echo $text_yes; ?></option>
                            <option value="0"<?php if($sellya_product_custom_status == '0') echo ' selected="selected"';?><?php if($sellya_product_custom_status == '') echo ' selected="selected"';?>><?php echo $text_no; ?></option>                        
			            </select>
                        </td>
					</tr>               
					<tr>
						<td><?php echo $text_content; ?></td>
						<td><textarea name="sellya_product_custom_content" id="sellya_product_custom"><?php echo $sellya_product_custom_content; ?></textarea></td>
					</tr>                             

		 </table> 
    
        <table class="form">
        
					<tr>
						<td colspan="2"><div><b><?php echo $entry_product_custom_tab; ?></b><span class="sellya_help_tip"><a id="sellya-help-29" title="" href="#">?</a></span></div></td>
					</tr>
					<tr>
						<td><?php echo $entry_product_custom_tab_status; ?></td>
						<td>
                        <select name="sellya_product_custom_tab_status">
                            <option value="1"<?php if($sellya_product_custom_tab_status == '1') echo ' selected="selected"';?>><?php echo $text_yes; ?></option>
                            <option value="0"<?php if($sellya_product_custom_tab_status == '0') echo ' selected="selected"';?><?php if($sellya_product_custom_tab_status == '') echo ' selected="selected"';?>><?php echo $text_no; ?></option>                        
			            </select>
                        </td>
					</tr>
         			<tr>
						<td><?php echo $text_title; ?></td>
                        <td><input type="text" name="sellya_product_custom_tab_title" value="<?php echo $sellya_product_custom_tab_title; ?>" /></td>
					</tr>                    
					<tr>
						<td><?php echo $text_content; ?></td>
						<td><textarea name="sellya_product_custom_tab_content" id="sellya_product_custom_tab"><?php echo $sellya_product_custom_tab_content; ?></textarea></td>
					</tr>                           
                          
		 </table>                          
     			
        </div>
        
        <div id="tab-store-features-contact" class="vtabs-content">
        
        <table class="form">
      
					<tr>
						<td colspan="2"><div><b><?php echo $entry_contact_custom; ?></b><span class="sellya_help_tip"><a id="sellya-help-30" title="" href="#">?</a></span></div></td>
					</tr>
					<tr>
						<td><?php echo $entry_contact_custom_status; ?></td>
						<td>
                        <select name="sellya_contact_custom_status">
                            <option value="1"<?php if($sellya_contact_custom_status == '1') echo ' selected="selected"';?>><?php echo $text_yes; ?></option>
                            <option value="0"<?php if($sellya_contact_custom_status == '0') echo ' selected="selected"';?><?php if($sellya_contact_custom_status == '') echo ' selected="selected"';?>><?php echo $text_no; ?></option>                        
			            </select>
                        </td>
					</tr>                    
					<tr>
						<td><?php echo $text_content; ?></td>
						<td><textarea name="sellya_contact_custom_content" id="sellya_contact_custom"><?php echo $sellya_contact_custom_content; ?></textarea></td>
					</tr>                           
                          
		 </table>
     			
        </div>     
        
        <div id="tab-store-features-lrcolumn" class="vtabs-content">
        
        <table class="form">
      
					<tr>
						<td colspan="2"><div><b><?php echo $entry_left_right_column_categories; ?></b></div></td>
					</tr>              
					<tr>
						<td><?php echo $entry_left_right_column_categories_type; ?></td>
						<td>
                        <select name="sellya_left_right_column_categories_type">
                            <option value="1"<?php if($sellya_left_right_column_categories_type == '1') echo ' selected="selected"';?>><?php echo $text_opencart; ?></option>
                            <option value="0"<?php if($sellya_left_right_column_categories_type == '0') echo ' selected="selected"';?><?php if($sellya_left_right_column_categories_type == '') echo ' selected="selected"';?>><?php echo $text_accordion; ?></option>                        
			            </select>
                        </td>
					</tr>
                          
		 </table>
     			
        </div>              
        
        </div>
  
        
        
        <div id="tab-colors-styles">
      
            <div id="colors_styles_settings_tabs" class="vtabs">
             <a href="#tab-colors-styles-general"><?php echo $entry_general_color; ?></a>      
             <a href="#tab-colors-styles-prices"><?php echo $entry_price; ?></a>
             <a href="#tab-colors-styles-buttons"><?php echo $entry_buttons_color; ?></a> 
             <a href="#tab-colors-styles-top-area-header"><?php echo $entry_top_area_header_color; ?></a>
             <a href="#tab-colors-styles-top-area-main-menu"><?php echo $entry_top_area_main_menu_color; ?></a>
             <a href="#tab-colors-styles-midsection"><?php echo $entry_midsection_color; ?></a>
             <a href="#tab-colors-styles-bottom-area"><?php echo $entry_bottom_area_color; ?></a>    
           </div> 
           
        <div id="tab-colors-styles-general" class="vtabs-content">
        <table class="form">
        
					<tr>
						<td><?php echo $entry_layout_style; ?></td>
						<td>                        
                        <select name="sellya_layout_style">
                           <option value="1"<?php if($sellya_layout_style == '1') echo ' selected="selected"';?>><?php echo $text_boxed; ?></option>
                           <option value="2"<?php if($sellya_layout_style == '2') echo ' selected="selected"';?>><?php echo $text_full_width; ?></option>                         
                        </select>
                        </td>
					</tr>                    
					<tr>
						<td><?php echo $entry_body_background_color; ?></td>
						<td><input type="text" name="sellya_body_background_color" value="<?php echo $sellya_body_background_color; ?>" class="color {required:false,hash:true}" size="7" />
                        <span class="sellya_help"><?php echo $entry_body_background_color_help; ?></span>
                        </td>
					</tr>
					<tr>
						<td><?php echo $entry_headings_color; ?></td>
						<td><input type="text" name="sellya_headings_color" value="<?php echo $sellya_headings_color; ?>" class="color {required:false,hash:true}" size="7" />
                        <span class="sellya_help"><?php echo $entry_headings_color_help; ?></span>
                        </td>
					</tr>
					<tr>
						<td><?php echo $entry_body_text_color; ?></td>
						<td><input type="text" name="sellya_body_text_color" value="<?php echo $sellya_body_text_color; ?>" class="color {required:false,hash:true}" size="7" />
                        <span class="sellya_help"><?php echo $entry_body_text_color_help; ?></span>
                        </td>
					</tr>                    
					<tr>
						<td><?php echo $entry_light_text_color; ?></td>
						<td><input type="text" name="sellya_light_text_color" value="<?php echo $sellya_light_text_color; ?>" class="color {required:false,hash:true}" size="7" />
                        <span class="sellya_help"><?php echo $entry_light_text_color_help; ?></span>
                        </td>
					</tr>
					<tr>
						<td><?php echo $entry_other_links_color; ?></td>
						<td><input type="text" name="sellya_other_links_color" value="<?php echo $sellya_other_links_color; ?>" class="color {required:false,hash:true}" size="7" />
                        <span class="sellya_help"><?php echo $entry_other_links_color_help; ?></span>
                        </td>
					</tr>                                                                   
					<tr>
						<td><?php echo $entry_links_hover_color; ?></td>
						<td><input type="text" name="sellya_links_hover_color" value="<?php echo $sellya_links_hover_color; ?>" class="color {required:false,hash:true}" size="7" />
                        <span class="sellya_help"><?php echo $entry_links_hover_color_help; ?></span>
                        </td>
					</tr>
					<tr>
						<td><?php echo $entry_general_icons_style; ?></td>
						<td>
                        <div>
							<span class="sellya_help">1.&nbsp;</span>
                            <img src="<?php echo HTTP_CATALOG; ?>catalog/view/theme/sellya/image/sellya-compare-1.png">&nbsp;
                            <img src="<?php echo HTTP_CATALOG; ?>catalog/view/theme/sellya/image/sellya-wishlist-1.png">
                            <br /><br />       
							<span class="sellya_help">2.&nbsp;</span>
                            <img src="<?php echo HTTP_CATALOG; ?>catalog/view/theme/sellya/image/sellya-compare-2.png">&nbsp;
                            <img src="<?php echo HTTP_CATALOG; ?>catalog/view/theme/sellya/image/sellya-wishlist-2.png">                                                
						</div><br />                                          
                        <select name="sellya_general_icons_style">
                           <option value="1"<?php if($sellya_general_icons_style == '1') echo ' selected="selected"';?>>1</option>
                           <option value="2"<?php if($sellya_general_icons_style == '2') echo ' selected="selected"';?>>2</option>                                                      
                        </select>
                        </td>
					</tr>                                       
                          
		 </table>            
        
        <table class="form sellya_sep">
                                              
					<tr>
						<td colspan="2"><div><b><?php echo $entry_main_column; ?></b><span class="sellya_help_tip"><a id="sellya-help-5" title="" href="#">?</a></span></div></td>
					</tr>                    
					<tr>
						<td><?php echo $text_show_background_color; ?></td>
						<td>
                        <select name="sellya_main_column_status">
                            <option value="1"<?php if($sellya_main_column_status == '1') echo ' selected="selected"';?><?php if($sellya_main_column_status == '') echo ' selected="selected"';?>><?php echo $text_yes; ?></option>
                            <option value="0"<?php if($sellya_main_column_status == '0') echo ' selected="selected"';?>><?php echo $text_no; ?></option>                        
			            </select>
                        </td>
					</tr>                    
					<tr>
						<td><?php echo $text_background_color; ?></td>
						<td>
                        <input type="text" name="sellya_main_column_background_color" value="<?php echo $sellya_main_column_background_color; ?>" class="color {required:false,hash:true}" size="7" />
                        <span class="sellya_help"><?php echo $entry_main_column_background_color_help; ?></span>
                        </td>
					</tr>                   
					<tr>
						<td><?php echo $text_border; ?></td>
						<td>
                        <?php echo $text_show; ?>
                        <select name="sellya_main_column_border_status">
                            <option value="1"<?php if($sellya_main_column_border_status == '1') echo ' selected="selected"';?>><?php echo $text_yes; ?></option>
                            <option value="0"<?php if($sellya_main_column_border_status == '0') echo ' selected="selected"';?><?php if($sellya_main_column_border_status == '') echo ' selected="selected"';?>><?php echo $text_no; ?></option>                        
			            </select>                      
                        <br /><br />
                        <?php echo $text_size; ?>
                        <select name="sellya_main_column_border_size">
                           <option value="1"<?php if($sellya_main_column_border_size == '1') echo ' selected="selected"';?>>1</option>
                           <option value="2"<?php if($sellya_main_column_border_size == '2') echo ' selected="selected"';?>>2</option>
                           <option value="3"<?php if($sellya_main_column_border_size == '3') echo ' selected="selected"';?>>3</option>
                           <option value="4"<?php if($sellya_main_column_border_size == '4') echo ' selected="selected"';?>>4</option>
                           <option value="5"<?php if($sellya_main_column_border_size == '5') echo ' selected="selected"';?>>5</option>                                                       
                        </select>
                        <span class="sellya_help"><?php echo $text_px; ?></span>
                        <br /><br />                            
                        <?php echo $text_style; ?>          
                        <select name="sellya_main_column_border_style">
                           <option value="solid"<?php if($sellya_main_column_border_style == 'solid') echo ' selected="selected"';?>><?php echo $text_solid; ?></option>
                           <option value="dotted"<?php if($sellya_main_column_border_style == 'dotted') echo ' selected="selected"';?>><?php echo $text_dotted; ?></option>
                           <option value="dashed"<?php if($sellya_main_column_border_style == 'dashed') echo ' selected="selected"';?>><?php echo $text_dashed; ?></option>                          
                        </select>
                        <br /><br />
                        <?php echo $text_color; ?>
                        <input type="text" name="sellya_main_column_border_color" value="<?php echo $sellya_main_column_border_color; ?>" class="color {required:false,hash:true}" size="7" />
                        <span class="sellya_help"><?php echo $entry_main_column_border_color_help; ?></span>
                        </td>
					</tr>                  
                    <tr>
						<td><?php echo $text_radius; ?></td>
						<td>                        
                        <select name="sellya_main_column_radius">
                           <option value="0"<?php if($sellya_main_column_radius == '0') echo ' selected="selected"';?>>0</option>                        
                           <option value="1"<?php if($sellya_main_column_radius == '1') echo ' selected="selected"';?>>1</option>
                           <option value="2"<?php if($sellya_main_column_radius == '2') echo ' selected="selected"';?>>2</option>
                           <option value="3"<?php if($sellya_main_column_radius == '3') echo ' selected="selected"';?>>3</option>
                           <option value="4"<?php if($sellya_main_column_radius == '4') echo ' selected="selected"';?>>4</option>
                           <option value="5"<?php if($sellya_main_column_radius == '5') echo ' selected="selected"';?>>5</option> 
                           <option value="6"<?php if($sellya_main_column_radius == '6') echo ' selected="selected"';?>>6</option>
                           <option value="7"<?php if($sellya_main_column_radius == '7') echo ' selected="selected"';?>>7</option>                           
                           <option value="8"<?php if($sellya_main_column_radius == '8') echo ' selected="selected"';?>>8</option> 
                           <option value="9"<?php if($sellya_main_column_radius == '9') echo ' selected="selected"';?>>9</option>
                           <option value="10"<?php if($sellya_main_column_radius == '10') echo ' selected="selected"';?>>10</option>        
                        </select>
                        </td>
					</tr>                     
                     <tr>
						<td><?php echo $text_shadow; ?></td>
						<td>
                        <select name="sellya_main_column_shadow">
                            <option value="1"<?php if($sellya_main_column_shadow == '1') echo ' selected="selected"';?><?php if($sellya_main_column_shadow == '') echo ' selected="selected"';?>><?php echo $text_yes; ?></option>
                            <option value="0"<?php if($sellya_main_column_shadow == '0') echo ' selected="selected"';?>><?php echo $text_no; ?></option>                        
			            </select>
                        </td>
					</tr>
                          
		 </table>            
        
        <table class="form">
                             
					<tr>
						<td colspan="2"><div><b><?php echo $entry_left_right_column; ?></b><span class="sellya_help_tip"><a id="sellya-help-2" title="" href="#">?</a></span></div></td>
					</tr>
					<tr>
						<td><?php echo $entry_left_right_column_status; ?></td>
						<td>
                        <select name="sellya_left_right_column_status">
                            <option value="1"<?php if($sellya_left_right_column_status == '1') echo ' selected="selected"';?>><?php echo $text_yes; ?></option>
                            <option value="0"<?php if($sellya_left_right_column_status == '0') echo ' selected="selected"';?><?php if($sellya_left_right_column_status == '') echo ' selected="selected"';?>><?php echo $text_no; ?></option>                        
			            </select>
                        </td>
					</tr>                                         
					<tr>
						<td><?php echo $entry_left_right_column_background_color; ?></td>
						<td>
                        <input type="text" name="sellya_left_right_column_background_color" value="<?php echo $sellya_left_right_column_background_color; ?>" class="color {required:false,hash:true}" size="7"
                        />
                        <span class="sellya_help"><?php echo $entry_left_right_column_background_color_help; ?></span>
                        </td>
					</tr>                   
                    <tr>
						<td><?php echo $entry_left_right_column_radius; ?></td>
						<td>                        
                        <select name="sellya_left_right_column_radius">
                           <option value="0"<?php if($sellya_left_right_column_radius == '0') echo ' selected="selected"';?>>0</option>                        
                           <option value="1"<?php if($sellya_left_right_column_radius == '1') echo ' selected="selected"';?>>1</option>
                           <option value="2"<?php if($sellya_left_right_column_radius == '2') echo ' selected="selected"';?>>2</option>
                           <option value="3"<?php if($sellya_left_right_column_radius == '3') echo ' selected="selected"';?>>3</option>
                           <option value="4"<?php if($sellya_left_right_column_radius == '4') echo ' selected="selected"';?>>4</option>
                           <option value="5"<?php if($sellya_left_right_column_radius == '5') echo ' selected="selected"';?>>5</option> 
                           <option value="6"<?php if($sellya_left_right_column_radius == '6') echo ' selected="selected"';?>>6</option>
                           <option value="7"<?php if($sellya_left_right_column_radius == '7') echo ' selected="selected"';?>>7</option>                           
                           <option value="8"<?php if($sellya_left_right_column_radius == '8') echo ' selected="selected"';?>>8</option> 
                           <option value="9"<?php if($sellya_left_right_column_radius == '9') echo ' selected="selected"';?>>9</option>
                           <option value="10"<?php if($sellya_left_right_column_radius == '10') echo ' selected="selected"';?>>10</option>        
                        </select>
                        </td>
					</tr>                     
                     <tr>
						<td><?php echo $entry_left_right_column_shadow; ?></td>
						<td>
                        <select name="sellya_left_right_column_shadow">
                            <option value="1"<?php if($sellya_left_right_column_shadow == '1') echo ' selected="selected"';?>><?php echo $text_yes; ?></option>
                            <option value="0"<?php if($sellya_left_right_column_shadow == '0') echo ' selected="selected"';?><?php if($sellya_left_right_column_shadow == '') echo ' selected="selected"';?>><?php echo $text_no; ?></option>                        
			            </select>
                        </td>
					</tr>             
					<tr>
						<td colspan="2"><div><b><?php echo $entry_left_right_column_head; ?></b><span class="sellya_help_tip"><a id="sellya-help-3" title="" href="#">?</a></span></div></td>
					</tr>                                         
					<tr>
						<td><?php echo $entry_left_right_column_head_status; ?></td>
						<td>
                        <select name="sellya_left_right_column_head_status">
                            <option value="1"<?php if($sellya_left_right_column_head_status == '1') echo ' selected="selected"';?><?php if($sellya_left_right_column_head_status == '') echo ' selected="selected"';?>><?php echo $text_yes; ?></option>
                            <option value="0"<?php if($sellya_left_right_column_head_status == '0') echo ' selected="selected"';?>><?php echo $text_no; ?></option>                        
			            </select>
                        </td>
					</tr>                                         
					<tr>
						<td><?php echo $entry_left_right_column_head_background_color; ?></td>
						<td><input type="text" name="sellya_left_right_column_head_background_color" value="<?php echo $sellya_left_right_column_head_background_color; ?>" 
                        class="color {required:false,hash:true}" size="7" />
                        <span class="sellya_help"><?php echo $entry_left_right_column_head_background_color_help; ?></span>
                        </td>
					</tr>  
				    <tr>
					    <td><?php echo $entry_left_right_column_head_custom; ?> </td>
					    <td><input type="hidden" name="sellya_left_right_column_head_custom" value="<?php echo $sellya_left_right_column_head_custom; ?>" id="sellya_left_right_column_head_custom" />
						<img src="<?php echo $sellya_left_right_column_head_custom_thumb; ?>" id="sellya_left_right_column_head_custom_thumb" />
						<br /><a onclick="image_upload('sellya_left_right_column_head_custom', 'sellya_left_right_column_head_custom_thumb');"><?php echo $text_select; ?></a>
                        &nbsp;&nbsp;|&nbsp;&nbsp;
                        <a onclick="$('#sellya_left_right_column_head_custom_thumb').attr('src', '<?php echo $no_image; ?>'); $('#sellya_left_right_column_head_custom').attr('value', '');">
                        <?php echo $text_clear; ?></a>
					    </td>
				    </tr>                    
                    <tr>
						<td><?php echo $entry_left_right_column_head_radius; ?></td>
						<td>                        
                        <select name="sellya_left_right_column_head_radius">
                           <option value="0"<?php if($sellya_left_right_column_head_radius == '0') echo ' selected="selected"';?>>0</option>                        
                           <option value="1"<?php if($sellya_left_right_column_head_radius == '1') echo ' selected="selected"';?>>1</option>
                           <option value="2"<?php if($sellya_left_right_column_head_radius == '2') echo ' selected="selected"';?>>2</option>
                           <option value="3"<?php if($sellya_left_right_column_head_radius == '3') echo ' selected="selected"';?>>3</option>
                           <option value="4"<?php if($sellya_left_right_column_head_radius == '4') echo ' selected="selected"';?>>4</option>
                           <option value="5"<?php if($sellya_left_right_column_head_radius == '5') echo ' selected="selected"';?>>5</option> 
                           <option value="6"<?php if($sellya_left_right_column_head_radius == '6') echo ' selected="selected"';?>>6</option>
                           <option value="7"<?php if($sellya_left_right_column_head_radius == '7') echo ' selected="selected"';?>>7</option>                           
                           <option value="8"<?php if($sellya_left_right_column_head_radius == '8') echo ' selected="selected"';?>>8</option> 
                           <option value="9"<?php if($sellya_left_right_column_head_radius == '9') echo ' selected="selected"';?>>9</option>
                           <option value="10"<?php if($sellya_left_right_column_head_radius == '10') echo ' selected="selected"';?>>10</option>        
                        </select>
                        </td>
					</tr>                     
                     <tr>
						<td><?php echo $entry_left_right_column_head_shadow; ?></td>
						<td>
                        <select name="sellya_left_right_column_head_shadow">
                            <option value="1"<?php if($sellya_left_right_column_head_shadow == '1') echo ' selected="selected"';?>><?php echo $text_yes; ?></option>
                            <option value="0"<?php if($sellya_left_right_column_head_shadow == '0') echo ' selected="selected"';?><?php if($sellya_left_right_column_head_shadow == '') echo ' selected="selected"';?>><?php echo $text_no; ?></option>                        
			            </select>
                        </td>
					</tr>
					<tr>
						<td><?php echo $entry_left_right_column_head_title_color; ?></td>
						<td>
                        <input type="text" name="sellya_left_right_column_head_title_color" value="<?php echo $sellya_left_right_column_head_title_color; ?>" class="color {required:false,hash:true}" size="7" />
                        <span class="sellya_help"><?php echo $entry_left_right_column_head_title_color_help; ?></span>
                        </td>
					</tr>
					<tr>
						<td colspan="2"><div><b><?php echo $entry_left_right_column_box; ?></b><span class="sellya_help_tip"><a id="sellya-help-4" title="" href="#">?</a></span></div></td>
					</tr>                                         
					<tr>
						<td><?php echo $entry_left_right_column_box_status; ?></td>
						<td>
                        <select name="sellya_left_right_column_box_status">
                            <option value="1"<?php if($sellya_left_right_column_box_status == '1') echo ' selected="selected"';?><?php if($sellya_left_right_column_box_status == '') echo ' selected="selected"';?>><?php echo $text_yes; ?></option>
                            <option value="0"<?php if($sellya_left_right_column_box_status == '0') echo ' selected="selected"';?>><?php echo $text_no; ?></option>                        
			            </select>
                        </td>
					</tr>                                         
					<tr>
						<td><?php echo $entry_left_right_column_box_background_color; ?></td>
						<td><input type="text" name="sellya_left_right_column_box_background_color" value="<?php echo $sellya_left_right_column_box_background_color; ?>" 
                        class="color {required:false,hash:true}" size="7" />
                        <span class="sellya_help"><?php echo $entry_left_right_column_box_background_color_help; ?></span>
                        </td>
					</tr> 
					<tr>
						<td><?php echo $text_separator; ?></td>
						<td>
                        <?php echo $text_size; ?>
                        <select name="sellya_left_right_column_separator_size">
                           <option value="1"<?php if($sellya_left_right_column_separator_size == '1') echo ' selected="selected"';?>>1</option>
                           <option value="2"<?php if($sellya_left_right_column_separator_size == '2') echo ' selected="selected"';?>>2</option>
                           <option value="3"<?php if($sellya_left_right_column_separator_size == '3') echo ' selected="selected"';?>>3</option>
                           <option value="4"<?php if($sellya_left_right_column_separator_size == '4') echo ' selected="selected"';?>>4</option>
                           <option value="5"<?php if($sellya_left_right_column_separator_size == '5') echo ' selected="selected"';?>>5</option>                                                       
                        </select>
                        <span class="sellya_help"><?php echo $text_px; ?></span>
                        <br /><br />                      
                        <?php echo $text_style; ?>          
                        <select name="sellya_left_right_column_separator_style">
                           <option value="solid"<?php if($sellya_left_right_column_separator_style == 'solid') echo ' selected="selected"';?>><?php echo $text_solid; ?></option>
                           <option value="dotted"<?php if($sellya_left_right_column_separator_style == 'dotted') echo ' selected="selected"';?>><?php echo $text_dotted; ?></option>
                           <option value="dashed"<?php if($sellya_left_right_column_separator_style == 'dashed') echo ' selected="selected"';?>><?php echo $text_dashed; ?></option>                          
                        </select>
                        <br /><br />
                        <?php echo $text_color; ?>
                        <input type="text" name="sellya_left_right_column_separator_color" value="<?php echo $sellya_left_right_column_separator_color; ?>" class="color {required:false,hash:true}" size="7" />
                        <span class="sellya_help"><?php echo $entry_left_right_column_separator_color_help; ?></span>
                        </td>                        
					</tr>                                     
                    <tr>
						<td><?php echo $entry_left_right_column_box_radius; ?></td>
						<td>                        
                        <select name="sellya_left_right_column_box_radius">
                           <option value="0"<?php if($sellya_left_right_column_box_radius == '0') echo ' selected="selected"';?>>0</option>                        
                           <option value="1"<?php if($sellya_left_right_column_box_radius == '1') echo ' selected="selected"';?>>1</option>
                           <option value="2"<?php if($sellya_left_right_column_box_radius == '2') echo ' selected="selected"';?>>2</option>
                           <option value="3"<?php if($sellya_left_right_column_box_radius == '3') echo ' selected="selected"';?>>3</option>
                           <option value="4"<?php if($sellya_left_right_column_box_radius == '4') echo ' selected="selected"';?>>4</option>
                           <option value="5"<?php if($sellya_left_right_column_box_radius == '5') echo ' selected="selected"';?>>5</option> 
                           <option value="6"<?php if($sellya_left_right_column_box_radius == '6') echo ' selected="selected"';?>>6</option>
                           <option value="7"<?php if($sellya_left_right_column_box_radius == '7') echo ' selected="selected"';?>>7</option>                           
                           <option value="8"<?php if($sellya_left_right_column_box_radius == '8') echo ' selected="selected"';?>>8</option> 
                           <option value="9"<?php if($sellya_left_right_column_box_radius == '9') echo ' selected="selected"';?>>9</option>
                           <option value="10"<?php if($sellya_left_right_column_box_radius == '10') echo ' selected="selected"';?>>10</option>        
                        </select>
                        </td>
					</tr>                     
                     <tr>
						<td><?php echo $entry_left_right_column_box_shadow; ?></td>
						<td>
                        <select name="sellya_left_right_column_box_shadow">
                            <option value="1"<?php if($sellya_left_right_column_box_shadow == '1') echo ' selected="selected"';?>><?php echo $text_yes; ?></option>
                            <option value="0"<?php if($sellya_left_right_column_box_shadow == '0') echo ' selected="selected"';?><?php if($sellya_left_right_column_box_shadow == '') echo ' selected="selected"';?>><?php echo $text_no; ?></option>                        
			            </select>
                        </td>
					</tr>                                        
                          
		 </table>            
        
        <table class="form sellya_sep">
                             
					<tr>
						<td colspan="2"><div><b><?php echo $entry_content_column; ?></b><span class="sellya_help_tip"><a id="sellya-help-1" title="" href="#">?</a></span></div></td>
					</tr>                     
					<tr>
						<td><?php echo $text_show_background_color; ?></td>
						<td>
                        <select name="sellya_content_column_status">
                            <option value="1"<?php if($sellya_content_column_status == '1') echo ' selected="selected"';?><?php if($sellya_content_column_status == '') echo ' selected="selected"';?>><?php echo $text_yes; ?></option>
                            <option value="0"<?php if($sellya_content_column_status == '0') echo ' selected="selected"';?>><?php echo $text_no; ?></option>                        
			            </select>
                        </td>
					</tr>                                               
					<tr>
						<td><?php echo $text_background_color; ?></td>
						<td>
                        <input type="text" name="sellya_content_column_background_color" value="<?php echo $sellya_content_column_background_color; ?>" class="color {required:false,hash:true}" size="7" />
                        <span class="sellya_help"><?php echo $entry_content_column_background_color_help; ?></span>
                        </td>
					</tr>
                    <tr>
						<td><?php echo $text_separator; ?></td>
						<td>
                        <?php echo $text_size; ?>
                        <select name="sellya_content_column_separator_size">
                           <option value="1"<?php if($sellya_content_column_separator_size == '1') echo ' selected="selected"';?>>1</option>
                           <option value="2"<?php if($sellya_content_column_separator_size == '2') echo ' selected="selected"';?>>2</option>
                           <option value="3"<?php if($sellya_content_column_separator_size == '3') echo ' selected="selected"';?>>3</option>
                           <option value="4"<?php if($sellya_content_column_separator_size == '4') echo ' selected="selected"';?>>4</option>
                           <option value="5"<?php if($sellya_content_column_separator_size == '5') echo ' selected="selected"';?>>5</option>                                                       
                        </select>
                        <span class="sellya_help"><?php echo $text_px; ?></span>
                        <br /><br />                      
                        <?php echo $text_style; ?>          
                        <select name="sellya_content_column_separator_style">
                           <option value="solid"<?php if($sellya_content_column_separator_style == 'solid') echo ' selected="selected"';?>><?php echo $text_solid; ?></option>
                           <option value="dotted"<?php if($sellya_content_column_separator_style == 'dotted') echo ' selected="selected"';?>><?php echo $text_dotted; ?></option>
                           <option value="dashed"<?php if($sellya_content_column_separator_style == 'dashed') echo ' selected="selected"';?>><?php echo $text_dashed; ?></option>                          
                        </select>
                        <br /><br />
                        <?php echo $text_color; ?>
                        <input type="text" name="sellya_content_column_separator_color" value="<?php echo $sellya_content_column_separator_color; ?>" class="color {required:false,hash:true}" size="7" />
                        <span class="sellya_help"><?php echo $entry_content_column_separator_color_help; ?></span>
                        </td>                        
					</tr>                     
                    <tr>
						<td><?php echo $text_radius; ?></td>
						<td>                        
                        <select name="sellya_content_column_radius">
                           <option value="0"<?php if($sellya_content_column_radius == '0') echo ' selected="selected"';?>>0</option>                        
                           <option value="1"<?php if($sellya_content_column_radius == '1') echo ' selected="selected"';?>>1</option>
                           <option value="2"<?php if($sellya_content_column_radius == '2') echo ' selected="selected"';?>>2</option>
                           <option value="3"<?php if($sellya_content_column_radius == '3') echo ' selected="selected"';?>>3</option>
                           <option value="4"<?php if($sellya_content_column_radius == '4') echo ' selected="selected"';?>>4</option>
                           <option value="5"<?php if($sellya_content_column_radius == '5') echo ' selected="selected"';?>>5</option> 
                           <option value="6"<?php if($sellya_content_column_radius == '6') echo ' selected="selected"';?>>6</option>
                           <option value="7"<?php if($sellya_content_column_radius == '7') echo ' selected="selected"';?>>7</option>                           
                           <option value="8"<?php if($sellya_content_column_radius == '8') echo ' selected="selected"';?>>8</option> 
                           <option value="9"<?php if($sellya_content_column_radius == '9') echo ' selected="selected"';?>>9</option>
                           <option value="10"<?php if($sellya_content_column_radius == '10') echo ' selected="selected"';?>>10</option>        
                        </select>
                        </td>
					</tr>                     
                     <tr>
						<td><?php echo $text_shadow; ?></td>
						<td>
                        <select name="sellya_content_column_shadow">
                            <option value="1"<?php if($sellya_content_column_shadow == '1') echo ' selected="selected"';?>><?php echo $text_yes; ?></option>
                            <option value="0"<?php if($sellya_content_column_shadow == '0') echo ' selected="selected"';?><?php if($sellya_content_column_shadow == '') echo ' selected="selected"';?>><?php echo $text_no; ?></option>                        
			            </select>
                        </td>
					</tr>                                                                                                                                                               

		 </table>  
        </div>
        
        <div id="tab-colors-styles-prices" class="vtabs-content">
        <table class="form">     

					<tr>
						<td><?php echo $entry_price_color; ?></td>
						<td><input type="text" name="sellya_price_color" value="<?php echo $sellya_price_color; ?>" class="color {required:false,hash:true}" size="7" />
                        <span class="sellya_help"><?php echo $entry_price_color_help; ?></span>
                        </td>
					</tr>
					<tr>
						<td><?php echo $entry_price_old_color; ?></td>
						<td><input type="text" name="sellya_price_old_color" value="<?php echo $sellya_price_old_color; ?>" class="color {required:false,hash:true}" size="7" />
                        <span class="sellya_help"><?php echo $entry_price_old_color_help; ?></span>
                        </td>
					</tr>
					<tr>
						<td><?php echo $entry_price_new_color; ?></td>
						<td><input type="text" name="sellya_price_new_color" value="<?php echo $sellya_price_new_color; ?>" class="color {required:false,hash:true}" size="7" />
                        <span class="sellya_help"><?php echo $entry_price_new_color_help; ?></span>
                        </td>
					</tr>
					<tr>
						<td><?php echo $entry_price_tax_color; ?></td>
						<td><input type="text" name="sellya_price_tax_color" value="<?php echo $sellya_price_tax_color; ?>" class="color {required:false,hash:true}" size="7" />
                        <span class="sellya_help"><?php echo $entry_price_tax_color_help; ?></span>
                        </td>
					</tr> 
                                                                               
		 </table>     
        </div>
        
        <div id="tab-colors-styles-buttons" class="vtabs-content">
        <table class="form">     
        
                    <tr>
						<td><?php echo $entry_button_border_radius; ?></td>
						<td>                        
                        <select name="sellya_button_border_radius">
                           <option value="0"<?php if($sellya_button_border_radius == '0') echo ' selected="selected"';?>>0</option>                        
                           <option value="1"<?php if($sellya_button_border_radius == '1') echo ' selected="selected"';?>>1</option>
                           <option value="2"<?php if($sellya_button_border_radius == '2') echo ' selected="selected"';?>>2</option>
                           <option value="3"<?php if($sellya_button_border_radius == '3') echo ' selected="selected"';?>>3</option>
                           <option value="4"<?php if($sellya_button_border_radius == '4') echo ' selected="selected"';?>>4</option>
                           <option value="5"<?php if($sellya_button_border_radius == '5') echo ' selected="selected"';?>>5</option> 
                           <option value="6"<?php if($sellya_button_border_radius == '6') echo ' selected="selected"';?>>6</option>
                           <option value="7"<?php if($sellya_button_border_radius == '7') echo ' selected="selected"';?>>7</option>                           
                           <option value="8"<?php if($sellya_button_border_radius == '8') echo ' selected="selected"';?>>8</option> 
                           <option value="9"<?php if($sellya_button_border_radius == '9') echo ' selected="selected"';?>>9</option>
                           <option value="10"<?php if($sellya_button_border_radius == '10') echo ' selected="selected"';?>>10</option>        
                        </select>
                        </td>
					</tr>                     
                     <tr>
						<td><?php echo $entry_button_text_shadow; ?></td>
						<td>
                        <select name="sellya_button_text_shadow">
                            <option value="1"<?php if($sellya_button_text_shadow == '1') echo ' selected="selected"';?>><?php echo $text_yes; ?></option>
                            <option value="0"<?php if($sellya_button_text_shadow == '0') echo ' selected="selected"';?><?php if($sellya_button_text_shadow == '') echo ' selected="selected"';?>><?php echo $text_no; ?></option>                        
			            </select>
                        </td>
					</tr>	
                          
		 </table>            
        
        <table class="form sellya_sep">
                            
					<tr>
						<td colspan="2"><div><b><?php echo $entry_buttons_color; ?></b><span class="sellya_help_tip"><a id="sellya-help-6" title="" href="#">?</a></span></div></td>
					</tr>                                        
					<tr>
						<td><?php echo $text_background_color; ?></td>
						<td><input type="text" name="sellya_button_background_color" value="<?php echo $sellya_button_background_color; ?>" class="color {required:false,hash:true}" size="7" />
                        <span class="sellya_help"><?php echo $entry_button_background_color_help; ?></span>
                        </td>
					</tr>
					<tr>
						<td><?php echo $text_border_top_color; ?></td>
						<td><input type="text" name="sellya_button_border_top_color" value="<?php echo $sellya_button_border_top_color; ?>" class="color {required:false,hash:true}" size="7" />
                        <span class="sellya_help"><?php echo $entry_button_border_top_color_help; ?></span>
                        </td>
					</tr>
					<tr>
						<td><?php echo $text_border_bottom_color; ?></td>
						<td><input type="text" name="sellya_button_border_bottom_color" value="<?php echo $sellya_button_border_bottom_color; ?>" class="color {required:false,hash:true}" size="7" />
                        <span class="sellya_help"><?php echo $entry_button_border_bottom_color_help; ?></span>
                        </td>
					</tr>    
					<tr>
						<td><?php echo $text_background_color_hover; ?></td>
						<td><input type="text" name="sellya_button_background_hover_color" value="<?php echo $sellya_button_background_hover_color; ?>" class="color {required:false,hash:true}" size="7" />
                        <span class="sellya_help"><?php echo $entry_button_background_hover_color_help; ?></span>
                        </td>
					</tr>
					<tr>
						<td><?php echo $text_border_top_color_hover; ?></td>
						<td><input type="text" name="sellya_button_border_top_hover_color" value="<?php echo $sellya_button_border_top_hover_color; ?>" class="color {required:false,hash:true}" size="7" />
                        <span class="sellya_help"><?php echo $entry_button_border_top_hover_color_help; ?></span>
                        </td>
					</tr>
					<tr>
						<td><?php echo $text_border_bottom_color_hover; ?></td>
						<td><input type="text" name="sellya_button_border_bottom_hover_color" value="<?php echo $sellya_button_border_bottom_hover_color; ?>" class="color {required:false,hash:true}" size="7" />
                        <span class="sellya_help"><?php echo $entry_button_border_bottom_hover_color_help; ?></span>
                        </td>
					</tr> 
					<tr>
						<td><?php echo $text_text_color; ?></td>
						<td><input type="text" name="sellya_button_text_color" value="<?php echo $sellya_button_text_color; ?>" class="color {required:false,hash:true}" size="7" />
                        <span class="sellya_help"><?php echo $entry_button_text_color_help; ?></span>
                        </td>
					</tr>
                          
		 </table>            
        
        <table class="form">
                            
					<tr>
						<td colspan="2"><div><b><?php echo $entry_exclusive_buttons_color; ?></b><span class="sellya_help_tip"><a id="sellya-help-7" title="" href="#">?</a></span></div></td>
					</tr>                    
					<tr>
						<td><?php echo $text_background_color; ?></td>
						<td>
                        <input type="text" name="sellya_button_exclusive_background_color" value="<?php echo $sellya_button_exclusive_background_color; ?>" class="color {required:false,hash:true}" size="7" />
                        <span class="sellya_help"><?php echo $entry_button_exclusive_background_color_help; ?></span>
                        </td>
					</tr>
					<tr>
						<td><?php echo $text_border_top_color; ?></td>
						<td>
                        <input type="text" name="sellya_button_exclusive_border_top_color" value="<?php echo $sellya_button_exclusive_border_top_color; ?>" class="color {required:false,hash:true}" size="7" />
                        <span class="sellya_help"><?php echo $entry_button_exclusive_border_top_color_help; ?></span>
                        </td>
					</tr>
					<tr>
						<td><?php echo $text_border_bottom_color; ?></td>
						<td>
                        <input type="text" name="sellya_button_exclusive_border_bottom_color" value="<?php echo $sellya_button_exclusive_border_bottom_color; ?>" class="color {required:false,hash:true}" 
                        size="7" />
                        <span class="sellya_help"><?php echo $entry_button_exclusive_border_bottom_color_help; ?></span>
                        </td>
					</tr>    
					<tr>
						<td><?php echo $text_background_color_hover; ?></td>
						<td>
                        <input type="text" name="sellya_button_exclusive_background_hover_color" value="<?php echo $sellya_button_exclusive_background_hover_color; ?>" class="color {required:false,hash:true}" 
                        size="7" />
                        <span class="sellya_help"><?php echo $entry_button_exclusive_background_hover_color_help; ?></span>
                        </td>
					</tr>
					<tr>
						<td><?php echo $text_border_top_color_hover; ?></td>
						<td>
                        <input type="text" name="sellya_button_exclusive_border_top_hover_color" value="<?php echo $sellya_button_exclusive_border_top_hover_color; ?>" class="color {required:false,hash:true}" 
                        size="7" />
                        <span class="sellya_help"><?php echo $entry_button_exclusive_border_top_hover_color_help; ?></span>
                        </td>
					</tr>
					<tr>
						<td><?php echo $text_border_bottom_color_hover; ?></td>
						<td>
                        <input type="text" name="sellya_button_exclusive_border_bottom_hover_color" value="<?php echo $sellya_button_exclusive_border_bottom_hover_color; ?>" 
                        class="color {required:false,hash:true}" size="7" />
                        <span class="sellya_help"><?php echo $entry_button_exclusive_border_bottom_hover_color_help; ?></span>
                        </td>
					</tr> 
					<tr>
						<td><?php echo $text_text_color; ?></td>
						<td>
                        <input type="text" name="sellya_button_exclusive_text_color" value="<?php echo $sellya_button_exclusive_text_color; ?>" class="color {required:false,hash:true}" size="7" />
                        <span class="sellya_help"><?php echo $entry_button_exclusive_text_color_help; ?></span>
                        </td>
					</tr>
                    
		 </table>     
        </div> 
        
        <div id="tab-colors-styles-top-area-header" class="vtabs-content">
        
        <table class="form">      
          
                    <tr>
						<td><?php echo $text_show_background_color; ?></td>
						<td>
                        <select name="sellya_top_area_status">
                            <option value="1"<?php if($sellya_top_area_status == '1') echo ' selected="selected"';?>><?php echo $text_yes; ?></option>
                            <option value="0"<?php if($sellya_top_area_status == '0') echo ' selected="selected"';?><?php if($sellya_top_area_status == '') echo ' selected="selected"';?>><?php echo $text_no; ?></option>                        
			            </select>
                        </td>
					</tr>                                         
					<tr>
						<td><?php echo $text_background_color; ?></td>
						<td><input type="text" name="sellya_top_area_background_color" value="<?php echo $sellya_top_area_background_color; ?>" class="color {required:false,hash:true}" size="7" />
                        <span class="sellya_help"><?php echo $entry_top_area_background_color_help; ?></span>
                        </td>
					</tr>
		 </table>   
                 
        <table class="form sellya_sep">
                                                                                                                                 
					<tr>
						<td colspan="2"><div><b><?php echo $entry_logo; ?></b></div></td>
					</tr>
					<tr>
						<td><?php echo $entry_logo_position; ?></td>
						<td>                        
                        <select name="sellya_logo_position">
                           <option value="left"<?php if($sellya_logo_position == 'left') echo ' selected="selected"';?>><?php echo $text_position_l; ?></option>                          
                           <option value="center"<?php if($sellya_logo_position == 'center') echo ' selected="selected"';?>><?php echo $text_position_c; ?></option>                         
                        </select>
                        </td>
					</tr>                    

		 </table>  
         
        <table class="form">
                                                                                                                                 
					<tr>
						<td colspan="2"><div><b><?php echo $entry_search_bar; ?></b></div></td>
					</tr>
					<tr>
						<td><?php echo $entry_search_bar_position; ?></td>
						<td>                        
                        <select name="sellya_search_bar_position">
                           <option value="right"<?php if($sellya_search_bar_position == 'right') echo ' selected="selected"';?>><?php echo $text_position_r; ?></option>
                           <option value="center"<?php if($sellya_search_bar_position == 'center') echo ' selected="selected"';?><?php if($sellya_search_bar_position == '') echo ' selected="selected"';?>><?php echo $text_position_c; ?></option>
                           <option value="left"<?php if($sellya_search_bar_position == 'left') echo ' selected="selected"';?>><?php echo $text_position_l; ?></option>                           
                        </select>
                        </td>
					</tr>
					<tr>
						<td><?php echo $entry_search_bar_style; ?></td>
						<td>
                        <div>
							<span class="sellya_help">1.&nbsp;&nbsp;</span>
                            <img src="<?php echo HTTP_CATALOG; ?>catalog/view/theme/sellya/image/searchbar_1.png">
                            <br /><br />       
							<span class="sellya_help">2.&nbsp;&nbsp;</span>
                            <img src="<?php echo HTTP_CATALOG; ?>catalog/view/theme/sellya/image/searchbar_2.png">
                            <br /><br />       
							<span class="sellya_help">3.&nbsp;&nbsp;</span>
                            <img src="<?php echo HTTP_CATALOG; ?>catalog/view/theme/sellya/image/searchbar_3.png">                                                                         
						</div><br /><br />                                              
                        <select name="sellya_search_bar_style">                     
                           <option value="1"<?php if($sellya_search_bar_style == '1') echo ' selected="selected"';?>>1</option>
                           <option value="2"<?php if($sellya_search_bar_style == '2') echo ' selected="selected"';?>>2</option>
                           <option value="3"<?php if($sellya_search_bar_style == '3') echo ' selected="selected"';?>>3</option> 
                        </select>
                        <span class="sellya_help"><?php echo $entry_search_bar_style_help; ?></span>
                        </td>
					</tr>
					<tr>
						<td><?php echo $entry_search_bar_style_color; ?><br /><span class="sellya_help"><?php echo $entry_search_bar_style_color_help; ?></span></td>
						<td><input type="text" name="sellya_search_bar_style_color" value="<?php echo $sellya_search_bar_style_color; ?>" class="color {required:false,hash:true}" size="7" />
                        <span class="sellya_help"><?php echo $entry_search_bar_style_color_help2; ?></span>
                        </td>
					</tr>  
					<tr>
						<td><?php echo $entry_search_bar_border_color; ?></td>
						<td><input type="text" name="sellya_search_bar_border_color" value="<?php echo $sellya_search_bar_border_color; ?>" class="color {required:false,hash:true}" size="7" />
                        <span class="sellya_help"><?php echo $entry_search_bar_border_color_help; ?></span>
                        </td>
					</tr>                                                                                                                     

		 </table> 
         <table class="form sellya_sep">
        
					<tr>
						<td colspan="2"><div><b><?php echo $entry_top_area_ls; ?></b></div></td>
					</tr>
					<tr>
						<td><?php echo $text_link_color; ?></td>
						<td><input type="text" name="sellya_top_area_ls_link_color" value="<?php echo $sellya_top_area_ls_link_color; ?>" class="color {required:false,hash:true}" size="7" />
                        <span class="sellya_help"><?php echo $entry_top_area_ls_link_color_help; ?></span>
                        </td>
					</tr>
					<tr>
						<td><?php echo $text_link_color_hover; ?></td>
						<td><input type="text" name="sellya_top_area_ls_link_color_hover" value="<?php echo $sellya_top_area_ls_link_color_hover; ?>" class="color {required:false,hash:true}" size="7" />
                        <span class="sellya_help"><?php echo $entry_top_area_ls_link_color_hover_help; ?></span>
                        </td>
					</tr>       
					<tr>
						<td><?php echo $text_separator_color; ?></td>
						<td><input type="text" name="sellya_top_area_ls_link_separator_color" value="<?php echo $sellya_top_area_ls_link_separator_color; ?>" class="color {required:false,hash:true}" size="7" />
                        <span class="sellya_help"><?php echo $entry_top_area_ls_link_separator_color_help; ?></span>
                        </td>
					</tr> 
                          
		 </table>            
            
        <table class="form">
                                                                  
					<tr>
						<td colspan="2"><div><b><?php echo $entry_top_area_cart; ?></b></div></td>
					</tr>  
					<tr>
						<td><?php echo $text_link_color; ?></td>
						<td><input type="text" name="sellya_top_area_cart_link_color" value="<?php echo $sellya_top_area_cart_link_color; ?>" class="color {required:false,hash:true}" size="7" />
                        <span class="sellya_help"><?php echo $entry_top_area_cart_link_color_help; ?></span>
                        </td>
					</tr>
					<tr>
						<td><?php echo $text_link_color_hover; ?></td>
						<td><input type="text" name="sellya_top_area_cart_link_color_hover" value="<?php echo $sellya_top_area_cart_link_color_hover; ?>" class="color {required:false,hash:true}" size="7" />
                        <span class="sellya_help"><?php echo $entry_top_area_cart_link_color_hover_help; ?></span>
                        </td>
					</tr>
                     <tr>
						<td><?php echo $entry_top_area_cart_icon; ?></td>
						<td>
                        <select name="sellya_top_area_cart_icon_status">
                            <option value="1"<?php if($sellya_top_area_cart_icon_status == '1') echo ' selected="selected"';?><?php if($sellya_top_area_cart_icon_status == '') echo ' selected="selected"';?>><?php echo $text_yes; ?></option>
                            <option value="0"<?php if($sellya_top_area_cart_icon_status == '0') echo ' selected="selected"';?>><?php echo $text_no; ?></option>                        
			            </select>
                        </td>
					</tr>  
					<tr>
						<td><?php echo $entry_top_area_cart_icon_style; ?></td>
						<td> 
                        <div>
							<span class="sellya_help">1.&nbsp;</span><img src="<?php echo HTTP_CATALOG; ?>catalog/view/theme/sellya/image/icon_cart_1.png">
							<span class="sellya_help">2.&nbsp;</span><img src="<?php echo HTTP_CATALOG; ?>catalog/view/theme/sellya/image/icon_cart_2.png">
							<span class="sellya_help">3.&nbsp;</span><img src="<?php echo HTTP_CATALOG; ?>catalog/view/theme/sellya/image/icon_cart_3.png">
							<span class="sellya_help">4.&nbsp;</span><img src="<?php echo HTTP_CATALOG; ?>catalog/view/theme/sellya/image/icon_cart_4.png">                            
						</div><br /><br />                        
                        <select name="sellya_top_area_cart_icon_style">                     
                           <option value="1"<?php if($sellya_top_area_cart_icon_style == '1') echo ' selected="selected"';?><?php if($sellya_top_area_cart_icon_style == '') echo ' selected="selected"';?>>1</option>
                           <option value="2"<?php if($sellya_top_area_cart_icon_style == '2') echo ' selected="selected"';?>>2</option>
                           <option value="3"<?php if($sellya_top_area_cart_icon_style == '3') echo ' selected="selected"';?>>3</option> 
                           <option value="4"<?php if($sellya_top_area_cart_icon_style == '4') echo ' selected="selected"';?>>4</option> 
                        </select> 
                        <span class="sellya_help"><?php echo $entry_top_area_cart_icon_style_help; ?></span>
                        </td>
					</tr>                      
                          
		 </table>     
        
        <table class="form sellya_sep">
                                                                             
					<tr>
						<td colspan="2"><div><b><?php echo $entry_top_area_lc; ?></b></div></td>
					</tr>
					<tr>
						<td><?php echo $text_text_color; ?></td>
						<td><input type="text" name="sellya_top_area_lc_text_color" value="<?php echo $sellya_top_area_lc_text_color; ?>" class="color {required:false,hash:true}" size="7" />
                        <span class="sellya_help"><?php echo $entry_top_area_lc_text_color_help; ?></span>
                        </td>
					</tr> 
                          
		 </table>      
         
        <table class="form">
                                                                             
					<tr>
						<td colspan="2"><div><b><?php echo $entry_top_area_dropdown; ?></b></div></td>
					</tr>
					<tr>
						<td><?php echo $text_background_color; ?></td>
						<td><input type="text" name="sellya_top_area_dropdown_background_color" value="<?php echo $sellya_top_area_dropdown_background_color; ?>" class="color {required:false,hash:true}" size="7" />
                        <span class="sellya_help"><?php echo $entry_top_area_dropdown_background_color_help; ?></span>
                        </td>
					</tr> 
					<tr>
						<td><?php echo $entry_top_area_dropdown_top_bar_color; ?></td>
						<td><input type="text" name="sellya_top_area_dropdown_top_bar_color" value="<?php echo $sellya_top_area_dropdown_top_bar_color; ?>" class="color {required:false,hash:true}" size="7" />
                        <span class="sellya_help"><?php echo $entry_top_area_dropdown_top_bar_color_help; ?></span>
                        </td>
					</tr>                     
                          
		 </table>                            
                  
        </div>
        
        <div id="tab-colors-styles-top-area-main-menu" class="vtabs-content">
        
         <table class="form">
        
					<tr>
						<td colspan="2"><div><b><?php echo $entry_mm; ?></b></div></td>
					</tr>                      
                    <tr>
						<td><?php echo $text_show_background_color; ?></td>
						<td>
                        <select name="sellya_mm_background_color_status">
                            <option value="1"<?php if($sellya_mm_background_color_status == '1') echo ' selected="selected"';?><?php if($sellya_mm_background_color_status == '') echo ' selected="selected"';?>><?php echo $text_yes; ?></option>
                            <option value="0"<?php if($sellya_mm_background_color_status == '0') echo ' selected="selected"';?>><?php echo $text_no; ?></option>                        
			            </select>
                        </td>
					</tr>                                         
					<tr>
						<td><?php echo $text_background_color; ?></td>
						<td><input type="text" name="sellya_mm_background_color" value="<?php echo $sellya_mm_background_color; ?>" class="color {required:false,hash:true}" size="7" />
                        <span class="sellya_help"><?php echo $entry_mm_background_color_help; ?></span>
                        </td>
					</tr>
                    <tr>
						<td><?php echo $text_separator; ?></td>
						<td>
                        <?php echo $text_show; ?>
                        <select name="sellya_mm_separator_status">
                            <option value="1"<?php if($sellya_mm_separator_status == '1') echo ' selected="selected"';?>><?php echo $text_yes; ?></option>
                            <option value="0"<?php if($sellya_mm_separator_status == '0') echo ' selected="selected"';?><?php if($sellya_mm_separator_status == '') echo ' selected="selected"';?>><?php echo $text_no; ?></option>                        
			            </select>
                        <br /><br />                          
                        <?php echo $text_size; ?>
                        <select name="sellya_mm_separator_size">
                           <option value="1"<?php if($sellya_mm_separator_size == '1') echo ' selected="selected"';?>>1</option>
                           <option value="2"<?php if($sellya_mm_separator_size == '2') echo ' selected="selected"';?>>2</option>
                           <option value="3"<?php if($sellya_mm_separator_size == '3') echo ' selected="selected"';?>>3</option>
                           <option value="4"<?php if($sellya_mm_separator_size == '4') echo ' selected="selected"';?>>4</option>
                           <option value="5"<?php if($sellya_mm_separator_size == '5') echo ' selected="selected"';?>>5</option>                                                       
                        </select>
                        <span class="sellya_help"><?php echo $text_px; ?></span>
                        <br /><br />                      
                        <?php echo $text_style; ?>          
                        <select name="sellya_mm_separator_style">
                           <option value="solid"<?php if($sellya_mm_separator_style == 'solid') echo ' selected="selected"';?>><?php echo $text_solid; ?></option>
                           <option value="dotted"<?php if($sellya_mm_separator_style == 'dotted') echo ' selected="selected"';?><?php if($sellya_mm_separator_style == '') echo ' selected="selected"';?>><?php echo $text_dotted; ?></option>
                           <option value="dashed"<?php if($sellya_mm_separator_style == 'dashed') echo ' selected="selected"';?>><?php echo $text_dashed; ?></option>                          
                        </select>
                        <br /><br />
                        <?php echo $text_color; ?>
                        <input type="text" name="sellya_mm_separator_color" value="<?php echo $sellya_mm_separator_color; ?>" class="color {required:false,hash:true}" size="7" />
                        <span class="sellya_help"><?php echo $entry_mm_separator_color_help; ?></span>
                        </td>                        
					</tr> 
					<tr>
						<td><?php echo $entry_mm_margin_size; ?></td>
						<td>                        
                        <select name="sellya_mm_margin_size">
                           <option value="0"<?php if($sellya_mm_margin_size == '0') echo ' selected="selected"';?>>0</option>                        
                           <option value="1"<?php if($sellya_mm_margin_size == '1') echo ' selected="selected"';?>>1</option>
                           <option value="2"<?php if($sellya_mm_margin_size == '2') echo ' selected="selected"';?>>2</option>
                           <option value="3"<?php if($sellya_mm_margin_size == '3') echo ' selected="selected"';?>>3</option>
                           <option value="4"<?php if($sellya_mm_margin_size == '4') echo ' selected="selected"';?>>4</option>
                           <option value="5"<?php if($sellya_mm_margin_size == '5') echo ' selected="selected"';?>>5</option>
                           <option value="6"<?php if($sellya_mm_margin_size == '6') echo ' selected="selected"';?>>6</option>   
                           <option value="7"<?php if($sellya_mm_margin_size == '7') echo ' selected="selected"';?>>7</option>   
                           <option value="8"<?php if($sellya_mm_margin_size == '8') echo ' selected="selected"';?>>8</option>   
                           <option value="9"<?php if($sellya_mm_margin_size == '9') echo ' selected="selected"';?>>9</option>   
                           <option value="10"<?php if($sellya_mm_margin_size == '10') echo ' selected="selected"';?>>10</option> 
                           <option value="11"<?php if($sellya_mm_margin_size == '11') echo ' selected="selected"';?>>11</option>
                           <option value="12"<?php if($sellya_mm_margin_size == '12') echo ' selected="selected"';?>>12</option>
                           <option value="13"<?php if($sellya_mm_margin_size == '13') echo ' selected="selected"';?>>13</option>
                           <option value="14"<?php if($sellya_mm_margin_size == '14') echo ' selected="selected"';?>>14</option>
                           <option value="15"<?php if($sellya_mm_margin_size == '15') echo ' selected="selected"';?>>15</option>
                        </select>
                        <span class="sellya_help"><?php echo $text_px; ?></span>
                        </td>
					</tr>
                    <tr>
						<td><?php echo $text_border_top; ?></td>
						<td>
                        <?php echo $text_show; ?>
                        <select name="sellya_mm_border_top_status">
                            <option value="1"<?php if($sellya_mm_border_top_status == '1') echo ' selected="selected"';?>><?php echo $text_yes; ?></option>
                            <option value="0"<?php if($sellya_mm_border_top_status == '0') echo ' selected="selected"';?><?php if($sellya_mm_border_top_status == '') echo ' selected="selected"';?>><?php echo $text_no; ?></option>                        
			            </select>
                        <br /><br />                      
                        <?php echo $text_style; ?>          
                        <select name="sellya_mm_border_top_style">
                           <option value="solid"<?php if($sellya_mm_border_top_style == 'solid') echo ' selected="selected"';?>><?php echo $text_solid; ?></option>
                           <option value="dotted"<?php if($sellya_mm_border_top_style == 'dotted') echo ' selected="selected"';?>><?php echo $text_dotted; ?></option>
                           <option value="dashed"<?php if($sellya_mm_border_top_style == 'dashed') echo ' selected="selected"';?>><?php echo $text_dashed; ?></option>                          
                        </select>
                        <br /><br />
                        <?php echo $text_color; ?>
                        <input type="text" name="sellya_mm_border_top_color" value="<?php echo $sellya_mm_border_top_color; ?>" class="color {required:false,hash:true}" size="7" />
                        <span class="sellya_help"><?php echo $entry_mm_border_top_color_help; ?></span>
                        </td>                        
					</tr>         
                    <tr>
						<td><?php echo $text_border_bottom; ?></td>
						<td>
                        <?php echo $text_show; ?>
                        <select name="sellya_mm_border_bottom_status">
                            <option value="1"<?php if($sellya_mm_border_bottom_status == '1') echo ' selected="selected"';?>><?php echo $text_yes; ?></option>
                            <option value="0"<?php if($sellya_mm_border_bottom_status == '0') echo ' selected="selected"';?><?php if($sellya_mm_border_bottom_status == '') echo ' selected="selected"';?>><?php echo $text_no; ?></option>                        
			            </select>
                        <br /><br />                      
                        <?php echo $text_style; ?>          
                        <select name="sellya_mm_border_bottom_style">
                           <option value="solid"<?php if($sellya_mm_border_bottom_style == 'solid') echo ' selected="selected"';?>><?php echo $text_solid; ?></option>
                           <option value="dotted"<?php if($sellya_mm_border_bottom_style == 'dotted') echo ' selected="selected"';?>><?php echo $text_dotted; ?></option>
                           <option value="dashed"<?php if($sellya_mm_border_bottom_style == 'dashed') echo ' selected="selected"';?>><?php echo $text_dashed; ?></option>                          
                        </select>
                        <br /><br />
                        <?php echo $text_color; ?>
                        <input type="text" name="sellya_mm_border_bottom_color" value="<?php echo $sellya_mm_border_bottom_color; ?>" class="color {required:false,hash:true}" size="7" />
                        <span class="sellya_help"><?php echo $entry_mm_border_bottom_color_help; ?></span>
                        </td>                        
					</tr> 
                    <tr>
						<td><?php echo $text_radius; ?></td>
						<td>                        
                        <select name="sellya_mm_radius">
                           <option value="0"<?php if($sellya_mm_radius == '0') echo ' selected="selected"';?>>0</option>                        
                           <option value="1"<?php if($sellya_mm_radius == '1') echo ' selected="selected"';?>>1</option>
                           <option value="2"<?php if($sellya_mm_radius == '2') echo ' selected="selected"';?>>2</option>
                           <option value="3"<?php if($sellya_mm_radius == '3') echo ' selected="selected"';?>>3</option>
                           <option value="4"<?php if($sellya_mm_radius == '4') echo ' selected="selected"';?>>4</option>
                           <option value="5"<?php if($sellya_mm_radius == '5') echo ' selected="selected"';?>>5</option> 
                           <option value="6"<?php if($sellya_mm_radius == '6') echo ' selected="selected"';?>>6</option>
                           <option value="7"<?php if($sellya_mm_radius == '7') echo ' selected="selected"';?>>7</option>                           
                           <option value="8"<?php if($sellya_mm_radius == '8') echo ' selected="selected"';?>>8</option> 
                           <option value="9"<?php if($sellya_mm_radius == '9') echo ' selected="selected"';?>>9</option>
                           <option value="10"<?php if($sellya_mm_radius == '10') echo ' selected="selected"';?>>10</option>        
                        </select>
                        </td>
					</tr>                     
                    <tr>
						<td><?php echo $text_shadow; ?></td>
						<td>
                        <select name="sellya_mm_shadow">
                            <option value="1"<?php if($sellya_mm_shadow == '1') echo ' selected="selected"';?>><?php echo $text_yes; ?></option>
                            <option value="0"<?php if($sellya_mm_shadow == '0') echo ' selected="selected"';?><?php if($sellya_mm_shadow == '') echo ' selected="selected"';?>><?php echo $text_no; ?></option>
			            </select>
                        </td>
					</tr>                                                                          
                          
		 </table>            
        
        <table class="form sellya_sep">
                            
					<tr>
						<td colspan="2"><div><b><?php echo $entry_mm1; ?></b></div></td>
					</tr>                                          
                     <tr>
						<td><?php echo $text_show_background_color; ?></td>
						<td>
                        <select name="sellya_mm1_background_color_status">
                            <option value="1"<?php if($sellya_mm1_background_color_status == '1') echo ' selected="selected"';?><?php if($sellya_mm1_background_color_status == '') echo ' selected="selected"';?>><?php echo $text_yes; ?></option>
                            <option value="0"<?php if($sellya_mm1_background_color_status == '0') echo ' selected="selected"';?>><?php echo $text_no; ?></option>
			            </select>
                        </td>
					</tr>                        
					<tr>
						<td><?php echo $text_background_color; ?></td>
						<td><input type="text" name="sellya_mm1_background_color" value="<?php echo $sellya_mm1_background_color; ?>" class="color {required:false,hash:true}" size="7" />
                        <span class="sellya_help"><?php echo $entry_mm1_background_color_help; ?></span>
                        </td>
					</tr>
					<tr>
						<td><?php echo $text_background_color_hover; ?></td>
						<td><input type="text" name="sellya_mm1_background_hover_color" value="<?php echo $sellya_mm1_background_hover_color; ?>" class="color {required:false,hash:true}" size="7" />
                        <span class="sellya_help"><?php echo $entry_mm1_background_hover_color_help; ?></span>
                        </td>
					</tr>
					<tr>
						<td><?php echo $text_link_color; ?></td>
						<td><input type="text" name="sellya_mm1_link_color" value="<?php echo $sellya_mm1_link_color; ?>" class="color {required:false,hash:true}" size="7" />
                        <span class="sellya_help"><?php echo $entry_mm1_link_color_help; ?></span>
                        </td>
					</tr>
					<tr>
						<td><?php echo $text_link_color_hover; ?></td>
						<td><input type="text" name="sellya_mm1_link_hover_color" value="<?php echo $sellya_mm1_link_hover_color; ?>" class="color {required:false,hash:true}" size="7" />
                        <span class="sellya_help"><?php echo $entry_mm1_link_hover_color_help; ?></span>
                        </td>
					</tr>
                          
		 </table>            
        
        <table class="form">
                            
					<tr>
						<td colspan="2"><div><b><?php echo $entry_mm2; ?></b></div></td>
					</tr>                                            
                     <tr>
						<td><?php echo $text_show_background_color; ?></td>
						<td>
                        <select name="sellya_mm2_background_color_status">
                            <option value="1"<?php if($sellya_mm2_background_color_status == '1') echo ' selected="selected"';?><?php if($sellya_mm2_background_color_status == '') echo ' selected="selected"';?>><?php echo $text_yes; ?></option>
                            <option value="0"<?php if($sellya_mm2_background_color_status == '0') echo ' selected="selected"';?>><?php echo $text_no; ?></option>
			            </select>
                        </td>
					</tr>                      
					<tr>
						<td><?php echo $text_background_color; ?></td>
						<td><input type="text" name="sellya_mm2_background_color" value="<?php echo $sellya_mm2_background_color; ?>" class="color {required:false,hash:true}" size="7" />
                        <span class="sellya_help"><?php echo $entry_mm2_background_color_help; ?></span>
                        </td>
					</tr>
					<tr>
						<td><?php echo $text_background_color_hover; ?></td>
						<td><input type="text" name="sellya_mm2_background_hover_color" value="<?php echo $sellya_mm2_background_hover_color; ?>" class="color {required:false,hash:true}" size="7" />
                        <span class="sellya_help"><?php echo $entry_mm2_background_hover_color_help; ?></span>
                        </td>
					</tr>
					<tr>
						<td><?php echo $text_link_color; ?></td>
						<td><input type="text" name="sellya_mm2_link_color" value="<?php echo $sellya_mm2_link_color; ?>" class="color {required:false,hash:true}" size="7" />
                        <span class="sellya_help"><?php echo $entry_mm2_link_color_help; ?></span>
                        </td>
					</tr>
					<tr>
						<td><?php echo $text_link_color_hover; ?></td>
						<td><input type="text" name="sellya_mm2_link_hover_color" value="<?php echo $sellya_mm2_link_hover_color; ?>" class="color {required:false,hash:true}" size="7" />
                        <span class="sellya_help"><?php echo $entry_mm2_link_hover_color_help; ?></span>
                        </td>
					</tr>
					<tr>
						<td><?php echo $entry_mm2_main_category_link_color; ?></td>
						<td><input type="text" name="sellya_mm2_main_category_link_color" value="<?php echo $sellya_mm2_main_category_link_color; ?>" class="color {required:false,hash:true}" size="7" />
                        <span class="sellya_help"><?php echo $entry_mm2_main_category_link_color_help; ?></span>
                        </td>
					</tr>                                      
                          
		 </table>            
        
        <table class="form sellya_sep">
                            
					<tr>
						<td colspan="2"><div><b><?php echo $entry_mm3; ?></b></div></td>
					</tr>                         
                     <tr>
						<td><?php echo $text_show_background_color; ?></td>
						<td>
                        <select name="sellya_mm3_background_color_status">
                            <option value="1"<?php if($sellya_mm3_background_color_status == '1') echo ' selected="selected"';?><?php if($sellya_mm3_background_color_status == '') echo ' selected="selected"';?>><?php echo $text_yes; ?></option>
                            <option value="0"<?php if($sellya_mm3_background_color_status == '0') echo ' selected="selected"';?>><?php echo $text_no; ?></option>
			            </select>
                        </td>
					</tr>                                  
					<tr>
						<td><?php echo $text_background_color; ?></td>
						<td><input type="text" name="sellya_mm3_background_color" value="<?php echo $sellya_mm3_background_color; ?>" class="color {required:false,hash:true}" size="7" />
                        <span class="sellya_help"><?php echo $entry_mm3_background_color_help; ?></span>
                        </td>
					</tr>
					<tr>
						<td><?php echo $text_background_color_hover; ?></td>
						<td><input type="text" name="sellya_mm3_background_hover_color" value="<?php echo $sellya_mm3_background_hover_color; ?>" class="color {required:false,hash:true}" size="7" />
                        <span class="sellya_help"><?php echo $entry_mm3_background_hover_color_help; ?></span>
                        </td>
					</tr>
					<tr>
						<td><?php echo $text_link_color; ?></td>
						<td><input type="text" name="sellya_mm3_link_color" value="<?php echo $sellya_mm3_link_color; ?>" class="color {required:false,hash:true}" size="7" />
                        <span class="sellya_help"><?php echo $entry_mm3_link_color_help; ?></span>
                        </td>
					</tr>
					<tr>
						<td><?php echo $text_link_color_hover; ?></td>
						<td><input type="text" name="sellya_mm3_link_hover_color" value="<?php echo $sellya_mm3_link_hover_color; ?>" class="color {required:false,hash:true}" size="7" />
                        <span class="sellya_help"><?php echo $entry_mm3_link_hover_color_help; ?></span>
                        </td>
					</tr>
                          
		 </table>            
        
        <table class="form">
                            
					<tr>
						<td colspan="2"><div><b><?php echo $entry_mm4; ?></b></div></td>
					</tr>                         
                     <tr>
						<td><?php echo $text_show_background_color; ?></td>
						<td>
                        <select name="sellya_mm4_background_color_status">
                            <option value="1"<?php if($sellya_mm4_background_color_status == '1') echo ' selected="selected"';?><?php if($sellya_mm4_background_color_status == '') echo ' selected="selected"';?>><?php echo $text_yes; ?></option>
                            <option value="0"<?php if($sellya_mm4_background_color_status == '0') echo ' selected="selected"';?>><?php echo $text_no; ?></option>
			            </select>
                        </td>
					</tr>                     
					<tr>
						<td><?php echo $text_background_color; ?></td>
						<td><input type="text" name="sellya_mm4_background_color" value="<?php echo $sellya_mm4_background_color; ?>" class="color {required:false,hash:true}" size="7" />
                        <span class="sellya_help"><?php echo $entry_mm4_background_color_help; ?></span>
                        </td>
					</tr>
					<tr>
						<td><?php echo $text_background_color_hover; ?></td>
						<td><input type="text" name="sellya_mm4_background_hover_color" value="<?php echo $sellya_mm4_background_hover_color; ?>" class="color {required:false,hash:true}" size="7" />
                        <span class="sellya_help"><?php echo $entry_mm4_background_hover_color_help; ?></span>
                        </td>
					</tr>
					<tr>
						<td><?php echo $text_link_color; ?></td>
						<td><input type="text" name="sellya_mm4_link_color" value="<?php echo $sellya_mm4_link_color; ?>" class="color {required:false,hash:true}" size="7" />
                        <span class="sellya_help"><?php echo $entry_mm4_link_color_help; ?></span>
                        </td>
					</tr>
					<tr>
						<td><?php echo $text_link_color_hover; ?></td>
						<td><input type="text" name="sellya_mm4_link_hover_color" value="<?php echo $sellya_mm4_link_hover_color; ?>" class="color {required:false,hash:true}" size="7" />
                        <span class="sellya_help"><?php echo $entry_mm4_link_hover_color_help; ?></span>
                        </td>
					</tr>
                          
		 </table>            
        
        <table class="form sellya_sep">
                            
					<tr>

						<td colspan="2"><div><b><?php echo $entry_mm5; ?></b></div></td>
					</tr>                         
                     <tr>
						<td><?php echo $text_show_background_color; ?></td>
						<td>
                        <select name="sellya_mm5_background_color_status">
                            <option value="1"<?php if($sellya_mm5_background_color_status == '1') echo ' selected="selected"';?><?php if($sellya_mm5_background_color_status == '') echo ' selected="selected"';?>><?php echo $text_yes; ?></option>
                            <option value="0"<?php if($sellya_mm5_background_color_status == '0') echo ' selected="selected"';?>><?php echo $text_no; ?></option>
			            </select>
                        </td>
					</tr>                                         
					<tr>
						<td><?php echo $text_background_color; ?></td>
						<td><input type="text" name="sellya_mm5_background_color" value="<?php echo $sellya_mm5_background_color; ?>" class="color {required:false,hash:true}" size="7" />
                        <span class="sellya_help"><?php echo $entry_mm5_background_color_help; ?></span>
                        </td>
					</tr>
					<tr>
						<td><?php echo $text_background_color_hover; ?></td>
						<td><input type="text" name="sellya_mm5_background_hover_color" value="<?php echo $sellya_mm5_background_hover_color; ?>" class="color {required:false,hash:true}" size="7" />
                        <span class="sellya_help"><?php echo $entry_mm5_background_hover_color_help; ?></span>
                        </td>
					</tr>
					<tr>
						<td><?php echo $text_link_color; ?></td>
						<td><input type="text" name="sellya_mm5_link_color" value="<?php echo $sellya_mm5_link_color; ?>" class="color {required:false,hash:true}" size="7" />
                        <span class="sellya_help"><?php echo $entry_mm5_link_color_help; ?></span>
                        </td>
					</tr>
					<tr>
						<td><?php echo $text_link_color_hover; ?></td>
						<td><input type="text" name="sellya_mm5_link_hover_color" value="<?php echo $sellya_mm5_link_hover_color; ?>" class="color {required:false,hash:true}" size="7" />
                        <span class="sellya_help"><?php echo $entry_mm5_link_hover_color_help; ?></span>
                        </td>
					</tr>
                          
		 </table>            
        
        <table class="form">
                            
					<tr>
						<td colspan="2"><div><b><?php echo $entry_mm6; ?></b></div></td>
					</tr>                         
                     <tr>
						<td><?php echo $text_show_background_color; ?></td>
						<td>
                        <select name="sellya_mm6_background_color_status">
                            <option value="1"<?php if($sellya_mm6_background_color_status == '1') echo ' selected="selected"';?><?php if($sellya_mm6_background_color_status == '') echo ' selected="selected"';?>><?php echo $text_yes; ?></option>
                            <option value="0"<?php if($sellya_mm6_background_color_status == '0') echo ' selected="selected"';?>><?php echo $text_no; ?></option>
			            </select>
                        </td>
					</tr>                     
                    <tr>
						<td><?php echo $text_background_color; ?></td>
						<td><input type="text" name="sellya_mm6_background_color" value="<?php echo $sellya_mm6_background_color; ?>" class="color {required:false,hash:true}" size="7" />
                        <span class="sellya_help"><?php echo $entry_mm6_background_color_help; ?></span>
                        </td>
					</tr>
					<tr>
						<td><?php echo $text_background_color_hover; ?></td>
						<td><input type="text" name="sellya_mm6_background_hover_color" value="<?php echo $sellya_mm6_background_hover_color; ?>" class="color {required:false,hash:true}" size="7" />
                        <span class="sellya_help"><?php echo $entry_mm6_background_hover_color_help; ?></span>
                        </td>
					</tr>
					<tr>
						<td><?php echo $text_link_color; ?></td>
						<td><input type="text" name="sellya_mm6_link_color" value="<?php echo $sellya_mm6_link_color; ?>" class="color {required:false,hash:true}" size="7" />
                        <span class="sellya_help"><?php echo $entry_mm6_link_color_help; ?></span>
                        </td>
					</tr>
					<tr>
						<td><?php echo $text_link_color_hover; ?></td>
						<td><input type="text" name="sellya_mm6_link_hover_color" value="<?php echo $sellya_mm6_link_hover_color; ?>" class="color {required:false,hash:true}" size="7" />
                        <span class="sellya_help"><?php echo $entry_mm6_link_hover_color_help; ?></span>
                        </td>
					</tr> 
                          
		 </table>            
        
        <table class="form sellya_sep">
                            
					<tr>
						<td colspan="2"><div><b><?php echo $entry_mm8; ?></b></div></td>
					</tr>                           
                     <tr>
						<td><?php echo $text_show_background_color; ?></td>
						<td>
                        <select name="sellya_mm8_background_color_status">
                            <option value="1"<?php if($sellya_mm8_background_color_status == '1') echo ' selected="selected"';?><?php if($sellya_mm8_background_color_status == '') echo ' selected="selected"';?>><?php echo $text_yes; ?></option>
                            <option value="0"<?php if($sellya_mm8_background_color_status == '0') echo ' selected="selected"';?>><?php echo $text_no; ?></option>
			            </select>
                        </td>
					</tr>                                      
                    <tr>
						<td><?php echo $text_background_color; ?></td>
						<td><input type="text" name="sellya_mm8_background_color" value="<?php echo $sellya_mm8_background_color; ?>" class="color {required:false,hash:true}" size="7" />
                        <span class="sellya_help"><?php echo $entry_mm8_background_color_help; ?></span>
                        </td>
					</tr>
					<tr>
						<td><?php echo $text_background_color_hover; ?></td>
						<td><input type="text" name="sellya_mm8_background_hover_color" value="<?php echo $sellya_mm8_background_hover_color; ?>" class="color {required:false,hash:true}" size="7" />
                        <span class="sellya_help"><?php echo $entry_mm8_background_hover_color_help; ?></span>
                        </td>
					</tr>                   
					<tr>
						<td><?php echo $text_link_color; ?></td>
						<td><input type="text" name="sellya_mm8_link_color" value="<?php echo $sellya_mm8_link_color; ?>" class="color {required:false,hash:true}" size="7" />
                        <span class="sellya_help"><?php echo $entry_mm8_link_color_help; ?></span>
                        </td>
					</tr>
					<tr>
						<td><?php echo $text_link_color_hover; ?></td>
						<td><input type="text" name="sellya_mm8_link_hover_color" value="<?php echo $sellya_mm8_link_hover_color; ?>" class="color {required:false,hash:true}" size="7" />
                        <span class="sellya_help"><?php echo $entry_mm8_link_hover_color_help; ?></span>
                        </td>
					</tr> 
                          
		 </table>           
        
        <table class="form">
                            
					<tr>
						<td colspan="2"><div><b><?php echo $entry_mm7; ?></b></div></td>
					</tr>                           
                     <tr>
						<td><?php echo $text_show_background_color; ?></td>
						<td>
                        <select name="sellya_mm7_background_color_status">
                            <option value="1"<?php if($sellya_mm7_background_color_status == '1') echo ' selected="selected"';?><?php if($sellya_mm7_background_color_status == '') echo ' selected="selected"';?>><?php echo $text_yes; ?></option>
                            <option value="0"<?php if($sellya_mm7_background_color_status == '0') echo ' selected="selected"';?>><?php echo $text_no; ?></option>
			            </select>
                        </td>
					</tr>                                      
                    <tr>
						<td><?php echo $text_background_color; ?></td>
						<td><input type="text" name="sellya_mm7_background_color" value="<?php echo $sellya_mm7_background_color; ?>" class="color {required:false,hash:true}" size="7" />
                        <span class="sellya_help"><?php echo $entry_mm7_background_color_help; ?></span>
                        </td>
					</tr>
					<tr>
						<td><?php echo $text_background_color_hover; ?></td>
						<td><input type="text" name="sellya_mm7_background_hover_color" value="<?php echo $sellya_mm7_background_hover_color; ?>" class="color {required:false,hash:true}" size="7" />
                        <span class="sellya_help"><?php echo $entry_mm7_background_hover_color_help; ?></span>
                        </td>
					</tr>
					<tr>
						<td><?php echo $text_link_color; ?></td>
						<td><input type="text" name="sellya_mm7_link_color" value="<?php echo $sellya_mm7_link_color; ?>" class="color {required:false,hash:true}" size="7" />
                        <span class="sellya_help"><?php echo $entry_mm7_link_color_help; ?></span>
                        </td>
					</tr>
					<tr>
						<td><?php echo $text_link_color_hover; ?></td>
						<td><input type="text" name="sellya_mm7_link_hover_color" value="<?php echo $sellya_mm7_link_hover_color; ?>" class="color {required:false,hash:true}" size="7" />
                        <span class="sellya_help"><?php echo $entry_mm7_link_hover_color_help; ?></span>
                        </td>
					</tr> 
                          
		 </table>                   
        
        <table class="form sellya_sep">
                            
					<tr>
						<td colspan="2"><div><b><?php echo $entry_mm_sub; ?></b></div></td>
					</tr>                         
                     <tr>
						<td><?php echo $text_background_color; ?></td>
						<td><input type="text" name="sellya_mm_sub_background_color" value="<?php echo $sellya_mm_sub_background_color; ?>" class="color {required:false,hash:true}" size="7" />
                        <span class="sellya_help"><?php echo $entry_mm_sub_background_color_help; ?></span>
                        </td>
					</tr>  
                     <tr>
						<td><?php echo $text_background_color_hover; ?></td>
						<td><input type="text" name="sellya_mm_sub_background_hover_color" value="<?php echo $sellya_mm_sub_background_hover_color; ?>" class="color {required:false,hash:true}" size="7" />
                        <span class="sellya_help"><?php echo $entry_mm_sub_background_hover_color_help; ?></span>
                        </td>
					</tr>  
                     <tr>
						<td><?php echo $entry_mm_sub_titles_background_color; ?></td>
						<td><input type="text" name="sellya_mm_sub_titles_background_color" value="<?php echo $sellya_mm_sub_titles_background_color; ?>" class="color {required:false,hash:true}" size="7" />
                        <span class="sellya_help"><?php echo $entry_mm_sub_titles_background_color_help; ?></span>
                        </td>
					</tr>                                         
                     <tr>
						<td><?php echo $text_text_color; ?></td>
						<td><input type="text" name="sellya_mm_sub_text_color" value="<?php echo $sellya_mm_sub_text_color; ?>" class="color {required:false,hash:true}" size="7" />
                        <span class="sellya_help"><?php echo $entry_mm_sub_text_color_help; ?></span>
                        </td>
					</tr>  
                     <tr>
						<td><?php echo $text_link_color; ?></td>
						<td><input type="text" name="sellya_mm_sub_link_color" value="<?php echo $sellya_mm_sub_link_color; ?>" class="color {required:false,hash:true}" size="7" />
                        <span class="sellya_help"><?php echo $entry_mm_sub_link_color_help; ?></span>
                        </td>
					</tr>                     
                     <tr>
						<td><?php echo $text_link_color_hover; ?></td>
						<td><input type="text" name="sellya_mm_sub_link_hover_color" value="<?php echo $sellya_mm_sub_link_hover_color; ?>" class="color {required:false,hash:true}" size="7" />
                        <span class="sellya_help"><?php echo $entry_mm_sub_link_hover_color_help; ?></span>
                        </td>
					</tr>

                    <tr>
						<td><?php echo $text_separator; ?></td>
						<td>                                        
                        <?php echo $text_style; ?>          
                        <select name="sellya_mm_sub_separator_style">
                           <option value="solid"<?php if($sellya_mm_sub_separator_style == 'solid') echo ' selected="selected"';?><?php if($sellya_mm_sub_separator_style == '') echo ' selected="selected"';?>><?php echo $text_solid; ?></option>
                           <option value="dotted"<?php if($sellya_mm_sub_separator_style == 'dotted') echo ' selected="selected"';?>><?php echo $text_dotted; ?></option>
                           <option value="dashed"<?php if($sellya_mm_sub_separator_style == 'dashed') echo ' selected="selected"';?>><?php echo $text_dashed; ?></option>                          
                        </select>
                        <br /><br />
                        <?php echo $text_color; ?>
                        <input type="text" name="sellya_mm_sub_separator_color" value="<?php echo $sellya_mm_sub_separator_color; ?>" class="color {required:false,hash:true}" size="7" />
                        <span class="sellya_help"><?php echo $entry_mm_sub_separator_color_help; ?></span>
                        </td>                        
					</tr>                                                              
                     <tr>
						<td><?php echo $text_shadow; ?></td>
						<td>
                        <select name="sellya_mm_sub_box_shadow">
                            <option value="1"<?php if($sellya_mm_sub_box_shadow == '1') echo ' selected="selected"';?><?php if($sellya_mm_sub_box_shadow == '') echo ' selected="selected"';?>><?php echo $text_yes; ?></option>
                            <option value="0"<?php if($sellya_mm_sub_box_shadow == '0') echo ' selected="selected"';?>><?php echo $text_no; ?></option>
			            </select>
                        </td>
					</tr>                                                                                                     

		 </table>  
            
        </div>                                 
        
        <div id="tab-colors-styles-midsection" class="vtabs-content">
          
        <table class="form">
                                                                                                                                                                                                   
					<tr>
						<td colspan="2"><div><b><?php echo $entry_midsection_product_box; ?></b><span class="sellya_help_tip"><a id="sellya-help-8" title="" href="#">?</a></span></div></td>
					</tr>
                     <tr>
						<td><?php echo $text_background_color; ?></td>
						<td><input type="text" name="sellya_mid_prod_box_background_color" value="<?php echo $sellya_mid_prod_box_background_color; ?>" class="color {required:false,hash:true}" size="7" />
                        <span class="sellya_help"><?php echo $entry_mid_prod_box_background_color_help; ?></span>
                        </td>
					</tr>  
                     <tr>
						<td><?php echo $text_border_color; ?></td>
						<td><input type="text" name="sellya_mid_prod_box_border_color" value="<?php echo $sellya_mid_prod_box_border_color; ?>" class="color {required:false,hash:true}" size="7" />
                        <span class="sellya_help"><?php echo $entry_mid_prod_box_border_color_help; ?></span>
                        </td>
					</tr>                      
                     <tr>
						<td><?php echo $text_background_color_hover; ?></td>
						<td>
                        <input type="text" name="sellya_mid_prod_box_background_hover_color" value="<?php echo $sellya_mid_prod_box_background_hover_color; ?>" class="color {required:false,hash:true}" 
                        size="7" />
                        <span class="sellya_help"><?php echo $entry_mid_prod_box_background_hover_color_help; ?></span>
                        </td>
					</tr>   
                     <tr>
						<td><?php echo $text_border_color_hover; ?></td>
						<td><input type="text" name="sellya_mid_prod_box_border_hover_color" value="<?php echo $sellya_mid_prod_box_border_hover_color; ?>" class="color {required:false,hash:true}" size="7" />
                        <span class="sellya_help"><?php echo $entry_mid_prod_box_border_hover_color_help; ?></span>
                        </td>
					</tr>                                                                                                               
                    <tr>
						<td><?php echo $text_radius; ?></td>
						<td>                        
                        <select name="sellya_mid_prod_box_radius">
                           <option value="0"<?php if($sellya_mid_prod_box_radius == '0') echo ' selected="selected"';?>>0</option>                        
                           <option value="1"<?php if($sellya_mid_prod_box_radius == '1') echo ' selected="selected"';?>>1</option>
                           <option value="2"<?php if($sellya_mid_prod_box_radius == '2') echo ' selected="selected"';?>>2</option>
                           <option value="3"<?php if($sellya_mid_prod_box_radius == '3') echo ' selected="selected"';?>>3</option>
                           <option value="4"<?php if($sellya_mid_prod_box_radius == '4') echo ' selected="selected"';?>>4</option>
                           <option value="5"<?php if($sellya_mid_prod_box_radius == '5') echo ' selected="selected"';?>>5</option> 
                           <option value="6"<?php if($sellya_mid_prod_box_radius == '6') echo ' selected="selected"';?>>6</option>
                           <option value="7"<?php if($sellya_mid_prod_box_radius == '7') echo ' selected="selected"';?>>7</option>                           
                           <option value="8"<?php if($sellya_mid_prod_box_radius == '8') echo ' selected="selected"';?>>8</option> 
                           <option value="9"<?php if($sellya_mid_prod_box_radius == '9') echo ' selected="selected"';?>>9</option>
                           <option value="10"<?php if($sellya_mid_prod_box_radius == '10') echo ' selected="selected"';?>>10</option>        
                        </select>
                        </td>
					</tr> 
                     <tr>
						<td><?php echo $entry_midsection_product_box_sale_icon_color; ?></td>
						<td><input type="text" name="sellya_mid_prod_box_sale_icon_color" value="<?php echo $sellya_mid_prod_box_sale_icon_color; ?>" class="color {required:false,hash:true}" size="7" />
                        <span class="sellya_help"><?php echo $entry_mid_prod_box_sale_icon_color_help; ?></span>
                        </td>
					</tr>                     
                          
		 </table> 
         
        <table class="form sellya_sep">
                            
					<tr>
						<td colspan="2"><div><b><?php echo $entry_midsection_product_stars; ?></b></div></td>
					</tr>                                   
         			<tr>
						<td><?php echo $entry_midsection_product_stars_color; ?></td>
						<td>
						<span class="sellya_help">1.&nbsp;&nbsp;</span><img src="<?php echo HTTP_CATALOG; ?>catalog/view/theme/sellya/image/stars/stars1-4.png"><br />
						<span class="sellya_help">2.&nbsp;&nbsp;</span><img src="<?php echo HTTP_CATALOG; ?>catalog/view/theme/sellya/image/stars/stars2-4.png"><br />
                        <span class="sellya_help">3.&nbsp;&nbsp;</span><img src="<?php echo HTTP_CATALOG; ?>catalog/view/theme/sellya/image/stars/stars3-4.png"><br />
                        <span class="sellya_help">4.&nbsp;&nbsp;</span><img src="<?php echo HTTP_CATALOG; ?>catalog/view/theme/sellya/image/stars/stars4-4.png"><br />
                        <span class="sellya_help">5.&nbsp;&nbsp;</span><img src="<?php echo HTTP_CATALOG; ?>catalog/view/theme/sellya/image/stars/stars5-4.png"><br />
                        <span class="sellya_help">6.&nbsp;&nbsp;</span><img src="<?php echo HTTP_CATALOG; ?>catalog/view/theme/sellya/image/stars/stars6-4.png"><br />
                        <span class="sellya_help">7.&nbsp;&nbsp;</span><img src="<?php echo HTTP_CATALOG; ?>catalog/view/theme/sellya/image/stars/stars7-4.png"><br />
                        <span class="sellya_help">8.&nbsp;&nbsp;</span><img src="<?php echo HTTP_CATALOG; ?>catalog/view/theme/sellya/image/stars/stars8-4.png"><br />
                        <span class="sellya_help">9.&nbsp;&nbsp;</span><img src="<?php echo HTTP_CATALOG; ?>catalog/view/theme/sellya/image/stars/stars9-4.png"><br />
                        <span class="sellya_help">10.&nbsp;&nbsp;</span><img src="<?php echo HTTP_CATALOG; ?>catalog/view/theme/sellya/image/stars/stars10-4.png"><br /><br />
                        <select name="sellya_mid_prod_stars_color">                     
                           <option value="1"<?php if($sellya_mid_prod_stars_color == '1') echo ' selected="selected"';?>>1</option>
                           <option value="2"<?php if($sellya_mid_prod_stars_color == '2') echo ' selected="selected"';?>>2</option>
                           <option value="3"<?php if($sellya_mid_prod_stars_color == '3') echo ' selected="selected"';?>>3</option> 
                           <option value="4"<?php if($sellya_mid_prod_stars_color == '4') echo ' selected="selected"';?>>4</option>
                           <option value="5"<?php if($sellya_mid_prod_stars_color == '5') echo ' selected="selected"';?>>5</option>
                           <option value="6"<?php if($sellya_mid_prod_stars_color == '6') echo ' selected="selected"';?>>6</option>
                           <option value="7"<?php if($sellya_mid_prod_stars_color == '7') echo ' selected="selected"';?>>7</option>
                           <option value="8"<?php if($sellya_mid_prod_stars_color == '8') echo ' selected="selected"';?>>8</option>
                           <option value="9"<?php if($sellya_mid_prod_stars_color == '9') echo ' selected="selected"';?>>9</option>
                           <option value="10"<?php if($sellya_mid_prod_stars_color == '10') echo ' selected="selected"';?>>10</option>                            
                        </select>
                        <span class="sellya_help"><?php echo $entry_midsection_product_stars_color_help; ?></span>
                        </td>
					</tr>                                  
                     
		 </table>                       
        
        <table class="form">
                            
					<tr>
						<td colspan="2"><div><b><?php echo $entry_midsection_product_page_buy; ?></b><span class="sellya_help_tip"><a id="sellya-help-9" title="" href="#">?</a></span></div></td>
					</tr>                    
					<tr>
						<td><?php echo $text_background_color; ?></td>
						<td><input type="text" name="sellya_mid_prod_page_buy_section_background_color" value="<?php echo $sellya_mid_prod_page_buy_section_background_color; ?>" 
                        class="color {required:false,hash:true}" size="7" />
                        <span class="sellya_help"><?php echo $entry_mid_prod_page_buy_section_background_color_help; ?></span>
                        </td>
					</tr>
                    <tr>
						<td><?php echo $text_separator; ?></td>
						<td>                    
                        <?php echo $text_size; ?>
                        <select name="sellya_mid_prod_page_buy_section_separator_size">
                           <option value="1"<?php if($sellya_mid_prod_page_buy_section_separator_size == '1') echo ' selected="selected"';?>>1</option>
                           <option value="2"<?php if($sellya_mid_prod_page_buy_section_separator_size == '2') echo ' selected="selected"';?>>2</option>
                           <option value="3"<?php if($sellya_mid_prod_page_buy_section_separator_size == '3') echo ' selected="selected"';?>>3</option>
                           <option value="4"<?php if($sellya_mid_prod_page_buy_section_separator_size == '4') echo ' selected="selected"';?>>4</option>
                           <option value="5"<?php if($sellya_mid_prod_page_buy_section_separator_size == '5') echo ' selected="selected"';?>>5</option>                                                       
                        </select>
                        <span class="sellya_help"><?php echo $text_px; ?></span>
                        <br /><br />                      
                        <?php echo $text_style; ?>          
                        <select name="sellya_mid_prod_page_buy_section_separator_style">
                           <option value="solid"<?php if($sellya_mid_prod_page_buy_section_separator_style == 'solid') echo ' selected="selected"';?>><?php echo $text_solid; ?></option>
                           <option value="dotted"<?php if($sellya_mid_prod_page_buy_section_separator_style == 'dotted') echo ' selected="selected"';?>><?php echo $text_dotted; ?></option>
                           <option value="dashed"<?php if($sellya_mid_prod_page_buy_section_separator_style == 'dashed') echo ' selected="selected"';?>><?php echo $text_dashed; ?></option>
                        </select>
                        <br /><br />
                        <?php echo $text_color; ?>
                        <input type="text" name="sellya_mid_prod_page_buy_section_separator_color" value="<?php echo $sellya_mid_prod_page_buy_section_separator_color; ?>" 
                        class="color {required:false,hash:true}" size="7" />
                        <span class="sellya_help"><?php echo $entry_mid_prod_page_buy_section_separator_color_help; ?></span>
                        </td>                        
					</tr>
                    <tr>
						<td><?php echo $text_radius; ?></td>
						<td>                        
                        <select name="sellya_mid_prod_page_buy_section_radius">
                           <option value="0"<?php if($sellya_mid_prod_page_buy_section_radius == '0') echo ' selected="selected"';?>>0</option>                        
                           <option value="1"<?php if($sellya_mid_prod_page_buy_section_radius == '1') echo ' selected="selected"';?>>1</option>
                           <option value="2"<?php if($sellya_mid_prod_page_buy_section_radius == '2') echo ' selected="selected"';?>>2</option>
                           <option value="3"<?php if($sellya_mid_prod_page_buy_section_radius == '3') echo ' selected="selected"';?>>3</option>
                           <option value="4"<?php if($sellya_mid_prod_page_buy_section_radius == '4') echo ' selected="selected"';?>>4</option>
                           <option value="5"<?php if($sellya_mid_prod_page_buy_section_radius == '5') echo ' selected="selected"';?>>5</option> 
                           <option value="6"<?php if($sellya_mid_prod_page_buy_section_radius == '6') echo ' selected="selected"';?>>6</option>
                           <option value="7"<?php if($sellya_mid_prod_page_buy_section_radius == '7') echo ' selected="selected"';?>>7</option>                           
                           <option value="8"<?php if($sellya_mid_prod_page_buy_section_radius == '8') echo ' selected="selected"';?>>8</option> 
                           <option value="9"<?php if($sellya_mid_prod_page_buy_section_radius == '9') echo ' selected="selected"';?>>9</option>
                           <option value="10"<?php if($sellya_mid_prod_page_buy_section_radius == '10') echo ' selected="selected"';?>>10</option>        
                        </select>
                        </td>
					</tr>                                                                             
                     
		 </table>        
         
        <table class="form sellya_sep">
                            
					<tr>
						<td colspan="2"><div><b><?php echo $entry_midsection_product_page_tabs; ?></b><span class="sellya_help_tip"><a id="sellya-help-10" title="" href="#">?</a></span></div></td>
					</tr>                    
					<tr>
						<td><?php echo $text_background_color; ?></td>
						<td><input type="text" name="sellya_mid_prod_page_tabs_background_color" value="<?php echo $sellya_mid_prod_page_tabs_background_color; ?>" 
                        class="color {required:false,hash:true}" size="7" />
                        <span class="sellya_help"><?php echo $entry_mid_prod_page_tabs_background_color_help; ?></span>
                        </td>
					</tr>                                        
                     
		 </table>            
         
         <table class="form">

					<tr>
						<td colspan="2"><div><b><?php echo $entry_midsection_product_slider; ?></b><span class="sellya_help_tip"><a id="sellya-help-11" title="" href="#">?</a></span></div></td>
					</tr>
                    <tr>
						<td><?php echo $text_background_color; ?></td>
						<td><input type="text" name="sellya_mid_prod_slider_background_color" value="<?php echo $sellya_mid_prod_slider_background_color; ?>" class="color {required:false,hash:true}" size="7" />
                        <span class="sellya_help"><?php echo $entry_mid_prod_slider_background_color_help; ?></span>
                        </td>
					</tr>
				    <tr>
					    <td><?php echo $entry_mid_prod_slider_custom; ?> </td>
					    <td><input type="hidden" name="sellya_mid_prod_slider_custom" value="<?php echo $sellya_mid_prod_slider_custom; ?>" id="sellya_mid_prod_slider_custom" />
						<img src="<?php echo $sellya_mid_prod_slider_thumb; ?>" id="sellya_mid_prod_slider_thumb" />
						<br /><a onclick="image_upload('sellya_mid_prod_slider_custom', 'sellya_mid_prod_slider_thumb');"><?php echo $text_select; ?></a>
                        &nbsp;&nbsp;|&nbsp;&nbsp;<a onclick="$('#sellya_mid_prod_slider_thumb').attr('src', '<?php echo $no_image; ?>'); $('#sellya_mid_prod_slider_custom').attr('value', '');">
                        <?php echo $text_clear; ?></a>
					    </td>
				    </tr>
  					<tr>
						<td><?php echo $entry_mid_prod_slider_custom_position; ?></td>
						<td>                        
                        <select name="sellya_mid_prod_slider_custom_position">
                           <option value="top center"<?php if($sellya_mid_prod_slider_custom_position == 'top center') echo ' selected="selected"';?>><?php echo $text_position_tc; ?></option>
                           <option value="top left"<?php if($sellya_mid_prod_slider_custom_position == 'top left') echo ' selected="selected"';?>><?php echo $text_position_tl; ?></option>
                           <option value="top right"<?php if($sellya_mid_prod_slider_custom_position == 'top right') echo ' selected="selected"';?>><?php echo $text_position_tr; ?></option> 
                           <option value="center"<?php if($sellya_mid_prod_slider_custom_position == 'center') echo ' selected="selected"';?>><?php echo $text_position_c; ?></option>
                           <option value="left"<?php if($sellya_mid_prod_slider_custom_position == 'left') echo ' selected="selected"';?>><?php echo $text_position_l; ?></option>
                           <option value="right"<?php if($sellya_mid_prod_slider_custom_position == 'right') echo ' selected="selected"';?>><?php echo $text_position_r; ?></option>
                           <option value="bottom center"<?php if($sellya_mid_prod_slider_custom_position == 'bottom center') echo ' selected="selected"';?>><?php echo $text_position_bc; ?></option>
                           <option value="bottom left"<?php if($sellya_mid_prod_slider_custom_position == 'bottom left') echo ' selected="selected"';?>><?php echo $text_position_bl; ?></option>
                           <option value="bottom right"<?php if($sellya_mid_prod_slider_custom_position == 'bottom right') echo ' selected="selected"';?>><?php echo $text_position_br; ?></option>
                        </select>
                        </td>
					</tr> 
  					<tr>
						<td><?php echo $entry_mid_prod_slider_custom_repeat; ?></td>
						<td>                        
                        <select name="sellya_mid_prod_slider_custom_repeat">
                           <option value="repeat"<?php if($sellya_mid_prod_slider_custom_repeat == 'repeat') echo ' selected="selected"';?>><?php echo $text_repeat_r; ?></option>                        
                           <option value="repeat-x"<?php if($sellya_mid_prod_slider_custom_repeat == 'repeat-x') echo ' selected="selected"';?>><?php echo $text_repeat_rx; ?></option> 
                           <option value="repeat-y"<?php if($sellya_mid_prod_slider_custom_repeat == 'repeat-y') echo ' selected="selected"';?>><?php echo $text_repeat_ry; ?></option>  
                           <option value="no-repeat"<?php if($sellya_mid_prod_slider_custom_repeat == 'no-repeat') echo ' selected="selected"';?>><?php echo $text_repeat_nr; ?></option>                     
                        </select>
                        </td>
					</tr>                                              
                    <tr>
						<td><?php echo $entry_mid_prod_slider_name_color; ?></td>
						<td>
                        <input type="text" name="sellya_mid_prod_slider_name_color" value="<?php echo $sellya_mid_prod_slider_name_color; ?>" class="color {required:false,hash:true}" 
                        size="7" />
                        <span class="sellya_help"><?php echo $entry_mid_prod_slider_name_color_help; ?></span>
                        </td>
					</tr>     
                    <tr>
						<td><?php echo $entry_mid_prod_slider_desc_color; ?></td>
						<td>
                        <input type="text" name="sellya_mid_prod_slider_desc_color" value="<?php echo $sellya_mid_prod_slider_desc_color; ?>" class="color {required:false,hash:true}" 
                        size="7" />
                        <span class="sellya_help"><?php echo $entry_mid_prod_slider_desc_color_help; ?></span>
                        </td>
					</tr> 
                    <tr>
						<td><?php echo $entry_mid_prod_slider_price_color; ?></td>
						<td>
                        <input type="text" name="sellya_mid_prod_slider_price_color" value="<?php echo $sellya_mid_prod_slider_price_color; ?>" class="color {required:false,hash:true}" 
                        size="7" />
                        <span class="sellya_help"><?php echo $entry_mid_prod_slider_price_color_help; ?></span>
                        </td>
					</tr> 
                    <tr>
						<td><?php echo $entry_mid_prod_slider_links_color_hover; ?></td>
						<td>
                        <input type="text" name="sellya_mid_prod_slider_links_color_hover" value="<?php echo $sellya_mid_prod_slider_links_color_hover; ?>" class="color {required:false,hash:true}" 
                        size="7" />
                        <span class="sellya_help"><?php echo $entry_mid_prod_slider_links_color_hover_help; ?></span>
                        </td>
					</tr>    
                    <tr>
						<td><?php echo $entry_mid_prod_slider_bottom_bar_background_color; ?></td>
						<td>
                        <input type="text" name="sellya_mid_prod_slider_bottom_bar_background_color" value="<?php echo $sellya_mid_prod_slider_bottom_bar_background_color; ?>" 
                        class="color {required:false,hash:true}" size="7" />
                        <span class="sellya_help"><?php echo $entry_mid_prod_slider_bottom_bar_background_color_help; ?></span>
                        </td>
					</tr>    
                    <tr>
						<td><?php echo $entry_mid_prod_slider_bottom_bar_background_color_hover; ?></td>
						<td>
                        <input type="text" name="sellya_mid_prod_slider_bottom_bar_background_color_hover" value="<?php echo $sellya_mid_prod_slider_bottom_bar_background_color_hover; ?>" 
                        class="color {required:false,hash:true}" size="7" />
                        <span class="sellya_help"><?php echo $entry_mid_prod_slider_bottom_bar_background_color_hover_help; ?></span>
                        </td>
					</tr> 
                    <tr>
						<td><?php echo $entry_mid_prod_slider_bottom_bar_background_color_sm; ?></td>
						<td>
                        <input type="text" name="sellya_mid_prod_slider_bottom_bar_background_color_sm" value="<?php echo $sellya_mid_prod_slider_bottom_bar_background_color_sm; ?>" 
                        class="color {required:false,hash:true}" size="7" />
                        <span class="sellya_help"><?php echo $entry_mid_prod_slider_bottom_bar_background_color_sm_help; ?></span>
                        </td>
					</tr> 
                    <tr>
						<td><?php echo $entry_mid_prod_slider_bottom_bar_link_color; ?></td>
						<td>
                        <input type="text" name="sellya_mid_prod_slider_bottom_bar_link_color" value="<?php echo $sellya_mid_prod_slider_bottom_bar_link_color; ?>" class="color {required:false,hash:true}" 
                        size="7" />
                        <span class="sellya_help"><?php echo $entry_mid_prod_slider_bottom_bar_link_color_help; ?></span>
                        </td>
					</tr> 
                          
		 </table>           
              
        </div> 
        
        <div id="tab-colors-styles-bottom-area" class="vtabs-content">
        
         <table class="form">
        
					<tr>
						<td colspan="2"><div><b><?php echo $entry_bottom_area_f1_color; ?></b><span class="sellya_help_tip"><a id="sellya-help-12" title="" href="#">?</a></span></div></td>
					</tr>
					<tr>
						<td><?php echo $entry_f1_background_color; ?></td>
						<td><input type="text" name="sellya_f1_background_color" value="<?php echo $sellya_f1_background_color; ?>" class="color {required:false,hash:true}" size="7" />
                        <span class="sellya_help"><?php echo $entry_f1_background_color_help; ?></span>
                        </td>
					</tr> 
					<tr>
						<td><?php echo $entry_f1_titles_color; ?></td>
						<td><input type="text" name="sellya_f1_titles_color" value="<?php echo $sellya_f1_titles_color; ?>" class="color {required:false,hash:true}" size="7" />
                        <span class="sellya_help"><?php echo $entry_f1_titles_color_help; ?></span>
                        </td>
					</tr>
					<tr>
						<td><?php echo $text_titles_border_bottom; ?></td>
						<td>
                        <?php echo $text_size; ?>
                         <select name="sellya_f1_titles_border_bottom_size">
                           <option value="1"<?php if($sellya_f1_titles_border_bottom_size == '1') echo ' selected="selected"';?>>1</option>
                           <option value="2"<?php if($sellya_f1_titles_border_bottom_size == '2') echo ' selected="selected"';?>>2</option>
                           <option value="3"<?php if($sellya_f1_titles_border_bottom_size == '3') echo ' selected="selected"';?>>3</option>
                           <option value="4"<?php if($sellya_f1_titles_border_bottom_size == '4') echo ' selected="selected"';?>>4</option>
                           <option value="5"<?php if($sellya_f1_titles_border_bottom_size == '5') echo ' selected="selected"';?>>5</option>                                                       
                        </select>
                        <span class="sellya_help"><?php echo $text_px; ?></span>
                        <br /><br />                            
                        <?php echo $text_style; ?>          
                        <select name="sellya_f1_titles_border_bottom_style">
                           <option value="solid"<?php if($sellya_f1_titles_border_bottom_style == 'solid') echo ' selected="selected"';?><?php if($sellya_f1_titles_border_bottom_style == '') echo ' selected="selected"';?>><?php echo $text_solid; ?></option>
                           <option value="dotted"<?php if($sellya_f1_titles_border_bottom_style == 'dotted') echo ' selected="selected"';?>><?php echo $text_dotted; ?></option>
                           <option value="dashed"<?php if($sellya_f1_titles_border_bottom_style == 'dashed') echo ' selected="selected"';?>><?php echo $text_dashed; ?></option>                          
                        </select>
                        <br /><br />
                        <?php echo $text_color; ?>
                        <input type="text" name="sellya_f1_titles_border_bottom_color" value="<?php echo $sellya_f1_titles_border_bottom_color; ?>" class="color {required:false,hash:true}" size="7" />
                        <span class="sellya_help"><?php echo $entry_f1_titles_border_bottom_color_help; ?></span>
                        </td>
					</tr>                                          
					<tr>
						<td><?php echo $entry_f1_text_color; ?></td>
						<td><input type="text" name="sellya_f1_text_color" value="<?php echo $sellya_f1_text_color; ?>" class="color {required:false,hash:true}" size="7" />
                        <span class="sellya_help"><?php echo $entry_f1_text_color_help; ?></span>
                        </td>
					</tr>   
					<tr>
						<td><?php echo $entry_f1_link_color; ?></td>
						<td><input type="text" name="sellya_f1_link_color" value="<?php echo $sellya_f1_link_color; ?>" class="color {required:false,hash:true}" size="7" />
                        <span class="sellya_help"><?php echo $entry_f1_link_color_help; ?></span>
                        </td>
					</tr>  
					<tr>
						<td><?php echo $entry_f1_link_hover_color; ?></td>
						<td><input type="text" name="sellya_f1_link_hover_color" value="<?php echo $sellya_f1_link_hover_color; ?>" class="color {required:false,hash:true}" size="7" />
                        <span class="sellya_help"><?php echo $entry_f1_link_hover_color_help; ?></span>
                        </td>
					</tr>    
					<tr>
						<td><?php echo $entry_f1_light_text_color; ?></td>
						<td><input type="text" name="sellya_f1_light_text_color" value="<?php echo $sellya_f1_light_text_color; ?>" class="color {required:false,hash:true}" size="7" />
                        <span class="sellya_help"><?php echo $entry_f1_light_text_color_help; ?></span>
                        </td>
					</tr>   
              		<tr>
						<td><?php echo $text_border_top; ?></td>
						<td>
                        <?php echo $text_show; ?>
                        <select name="sellya_f1_border_top_status">
                            <option value="1"<?php if($sellya_f1_border_top_status == '1') echo ' selected="selected"';?><?php if($sellya_f1_border_top_status == '') echo ' selected="selected"';?>><?php echo $text_yes; ?></option>
                            <option value="0"<?php if($sellya_f1_border_top_status == '0') echo ' selected="selected"';?>><?php echo $text_no; ?></option>
			            </select>                
                        <br /><br />
                        <?php echo $text_size; ?>
                        <select name="sellya_f1_border_top_size">
                           <option value="1"<?php if($sellya_f1_border_top_size == '1') echo ' selected="selected"';?>>1</option>
                           <option value="2"<?php if($sellya_f1_border_top_size == '2') echo ' selected="selected"';?>>2</option>
                           <option value="3"<?php if($sellya_f1_border_top_size == '3') echo ' selected="selected"';?><?php if($sellya_f1_border_top_size == '') echo ' selected="selected"';?>>3</option>
                           <option value="4"<?php if($sellya_f1_border_top_size == '4') echo ' selected="selected"';?>>4</option>
                           <option value="5"<?php if($sellya_f1_border_top_size == '5') echo ' selected="selected"';?>>5</option>                                                       
                        </select>
                        <span class="sellya_help"><?php echo $text_px; ?></span>
                        <br /><br />                            
                        <?php echo $text_style; ?>          
                        <select name="sellya_f1_border_top_style">
                           <option value="solid"<?php if($sellya_f1_border_top_style == 'solid') echo ' selected="selected"';?>><?php echo $text_solid; ?></option>
                           <option value="dotted"<?php if($sellya_f1_border_top_style == 'dotted') echo ' selected="selected"';?>><?php echo $text_dotted; ?></option>
                           <option value="dashed"<?php if($sellya_f1_border_top_style == 'dashed') echo ' selected="selected"';?>><?php echo $text_dashed; ?></option>                          
                        </select>
                        <br /><br />
                        <?php echo $text_color; ?>
                        <input type="text" name="sellya_f1_border_top_color" value="<?php echo $sellya_f1_border_top_color; ?>" class="color {required:false,hash:true}" size="7" />
                        <span class="sellya_help"><?php echo $entry_f1_border_top_color_help; ?></span>
                        </td>
					</tr>
					<tr>
						<td><?php echo $entry_f1_contact_icon_style; ?></td>
						<td> 
                        <div>
							<span class="sellya_help">1.&nbsp;</span><img src="<?php echo HTTP_CATALOG; ?>catalog/view/theme/sellya/image/icons_footer/icon_contact_skype_1.png">
							<span class="sellya_help">2.&nbsp;</span><img src="<?php echo HTTP_CATALOG; ?>catalog/view/theme/sellya/image/icons_footer/icon_contact_skype_2.png">
							<span class="sellya_help">3.&nbsp;</span><img src="<?php echo HTTP_CATALOG; ?>catalog/view/theme/sellya/image/icons_footer/icon_contact_skype_3.png">
							<span class="sellya_help">4.&nbsp;</span><img src="<?php echo HTTP_CATALOG; ?>catalog/view/theme/sellya/image/icons_footer/icon_contact_skype_4.png">  
							<span class="sellya_help">5.&nbsp;</span><img src="<?php echo HTTP_CATALOG; ?>catalog/view/theme/sellya/image/icons_footer/icon_contact_skype_5.png">
							<span class="sellya_help">6.&nbsp;</span><img src="<?php echo HTTP_CATALOG; ?>catalog/view/theme/sellya/image/icons_footer/icon_contact_skype_6.png">
							<span class="sellya_help">7.&nbsp;</span><img src="<?php echo HTTP_CATALOG; ?>catalog/view/theme/sellya/image/icons_footer/icon_contact_skype_7.png"><br />
							<span class="sellya_help">8.&nbsp;</span><img src="<?php echo HTTP_CATALOG; ?>catalog/view/theme/sellya/image/icons_footer/icon_contact_skype_8.png" />
                            <span class="sellya_help">9.&nbsp;</span><img src="<?php echo HTTP_CATALOG; ?>catalog/view/theme/sellya/image/icons_footer/icon_contact_skype_9.png">
							<span class="sellya_help">10.&nbsp;</span><img src="<?php echo HTTP_CATALOG; ?>catalog/view/theme/sellya/image/icons_footer/icon_contact_skype_10.png">
							<span class="sellya_help">11.&nbsp;</span><img src="<?php echo HTTP_CATALOG; ?>catalog/view/theme/sellya/image/icons_footer/icon_contact_skype_11.png">
							<span class="sellya_help">12.&nbsp;</span><img src="<?php echo HTTP_CATALOG; ?>catalog/view/theme/sellya/image/icons_footer/icon_contact_skype_12.png">  
                            <span class="sellya_help">13.&nbsp;</span><img src="<?php echo HTTP_CATALOG; ?>catalog/view/theme/sellya/image/icons_footer/icon_contact_skype_13.png">  
						</div><br /><br />                        
                        <select name="sellya_f1_contact_icon_style">                     
                           <option value="1"<?php if($sellya_f1_contact_icon_style == '1') echo ' selected="selected"';?>>1</option>
                           <option value="2"<?php if($sellya_f1_contact_icon_style == '2') echo ' selected="selected"';?>>2</option>
                           <option value="3"<?php if($sellya_f1_contact_icon_style == '3') echo ' selected="selected"';?>>3</option> 
                           <option value="4"<?php if($sellya_f1_contact_icon_style == '4') echo ' selected="selected"';?>>4</option> 
                           <option value="5"<?php if($sellya_f1_contact_icon_style == '5') echo ' selected="selected"';?>>5</option>
                           <option value="6"<?php if($sellya_f1_contact_icon_style == '6') echo ' selected="selected"';?>>6</option> 
                           <option value="7"<?php if($sellya_f1_contact_icon_style == '7') echo ' selected="selected"';?>>7</option> 
                           <option value="8"<?php if($sellya_f1_contact_icon_style == '8') echo ' selected="selected"';?>>8</option>
                           <option value="9"<?php if($sellya_f1_contact_icon_style == '9') echo ' selected="selected"';?>>9</option> 
                           <option value="10"<?php if($sellya_f1_contact_icon_style == '10') echo ' selected="selected"';?>>10</option> 
                           <option value="11"<?php if($sellya_f1_contact_icon_style == '11') echo ' selected="selected"';?><?php if($sellya_f1_contact_icon_style == '') echo ' selected="selected"';?>>11</option>
                           <option value="12"<?php if($sellya_f1_contact_icon_style == '12') echo ' selected="selected"';?>>12</option> 
                           <option value="13"<?php if($sellya_f1_contact_icon_style == '13') echo ' selected="selected"';?>>13</option>                                 
                        </select> 
                        <span class="sellya_help"><?php echo $entry_f1_contact_icon_style_help; ?></span>
                        </td>
					</tr>   
					<tr>
						<td><?php echo $entry_f1_twitts_icon_style; ?></td>
						<td> 
                        <div>
							<span class="sellya_help">1.&nbsp;</span><img src="<?php echo HTTP_CATALOG; ?>catalog/view/theme/sellya/image/icons_footer/icon_twitts_1.png">
							<span class="sellya_help">2.&nbsp;</span><img src="<?php echo HTTP_CATALOG; ?>catalog/view/theme/sellya/image/icons_footer/icon_twitts_2.png">
							<span class="sellya_help">3.&nbsp;</span><img src="<?php echo HTTP_CATALOG; ?>catalog/view/theme/sellya/image/icons_footer/icon_twitts_3.png">
							<span class="sellya_help">4.&nbsp;</span><img src="<?php echo HTTP_CATALOG; ?>catalog/view/theme/sellya/image/icons_footer/icon_twitts_4.png">  
							<span class="sellya_help">5.&nbsp;</span><img src="<?php echo HTTP_CATALOG; ?>catalog/view/theme/sellya/image/icons_footer/icon_twitts_5.png">
							<span class="sellya_help">6.&nbsp;</span><img src="<?php echo HTTP_CATALOG; ?>catalog/view/theme/sellya/image/icons_footer/icon_twitts_6.png">
							<span class="sellya_help">7.&nbsp;</span><img src="<?php echo HTTP_CATALOG; ?>catalog/view/theme/sellya/image/icons_footer/icon_twitts_7.png"><br />
							<span class="sellya_help">8.&nbsp;</span><img src="<?php echo HTTP_CATALOG; ?>catalog/view/theme/sellya/image/icons_footer/icon_twitts_8.png" />
                            <span class="sellya_help">9.&nbsp;</span><img src="<?php echo HTTP_CATALOG; ?>catalog/view/theme/sellya/image/icons_footer/icon_twitts_9.png">
							<span class="sellya_help">10.&nbsp;</span><img src="<?php echo HTTP_CATALOG; ?>catalog/view/theme/sellya/image/icons_footer/icon_twitts_10.png">
							<span class="sellya_help">11.&nbsp;</span><img src="<?php echo HTTP_CATALOG; ?>catalog/view/theme/sellya/image/icons_footer/icon_twitts_11.png">
							<span class="sellya_help">12.&nbsp;</span><img src="<?php echo HTTP_CATALOG; ?>catalog/view/theme/sellya/image/icons_footer/icon_twitts_12.png">  
                            <span class="sellya_help">13.&nbsp;</span><img src="<?php echo HTTP_CATALOG; ?>catalog/view/theme/sellya/image/icons_footer/icon_twitts_13.png"> 
                            <span class="sellya_help">14.&nbsp;</span><img src="<?php echo HTTP_CATALOG; ?>catalog/view/theme/sellya/image/icons_footer/icon_twitts_14.png">   
						</div><br /><br />                        
                        <select name="sellya_f1_twitts_icon_style">                     
                           <option value="1"<?php if($sellya_f1_twitts_icon_style == '1') echo ' selected="selected"';?>>1</option>
                           <option value="2"<?php if($sellya_f1_twitts_icon_style == '2') echo ' selected="selected"';?>>2</option>
                           <option value="3"<?php if($sellya_f1_twitts_icon_style == '3') echo ' selected="selected"';?>>3</option> 
                           <option value="4"<?php if($sellya_f1_twitts_icon_style == '4') echo ' selected="selected"';?>>4</option> 
                           <option value="5"<?php if($sellya_f1_twitts_icon_style == '5') echo ' selected="selected"';?>>5</option>
                           <option value="6"<?php if($sellya_f1_twitts_icon_style == '6') echo ' selected="selected"';?>>6</option> 
                           <option value="7"<?php if($sellya_f1_twitts_icon_style == '7') echo ' selected="selected"';?>>7</option> 
                           <option value="8"<?php if($sellya_f1_twitts_icon_style == '8') echo ' selected="selected"';?>>8</option>
                           <option value="9"<?php if($sellya_f1_twitts_icon_style == '9') echo ' selected="selected"';?>>9</option> 
                           <option value="10"<?php if($sellya_f1_twitts_icon_style == '10') echo ' selected="selected"';?>>10</option> 
                           <option value="11"<?php if($sellya_f1_twitts_icon_style == '11') echo ' selected="selected"';?><?php if($sellya_f1_twitts_icon_style == '') echo ' selected="selected"';?>>11</option>
                           <option value="12"<?php if($sellya_f1_twitts_icon_style == '12') echo ' selected="selected"';?>>12</option> 
                           <option value="13"<?php if($sellya_f1_twitts_icon_style == '13') echo ' selected="selected"';?>>13</option> 
                           <option value="14"<?php if($sellya_f1_twitts_icon_style == '14') echo ' selected="selected"';?>>14</option>                                 
                        </select> 
                        <span class="sellya_help"><?php echo $entry_f1_twitts_icon_style_help; ?></span>
                        </td>
					</tr>                                             
                    
		 </table>
         
         <table class="form sellya_sep">
        
					<tr>
						<td colspan="2"><div><b><?php echo $entry_bottom_area_f2_color; ?></b><span class="sellya_help_tip"><a id="sellya-help-13" title="" href="#">?</a></span></div></td>
					</tr>
					<tr>
						<td><?php echo $entry_f2_background_color; ?></td>
						<td><input type="text" name="sellya_f2_background_color" value="<?php echo $sellya_f2_background_color; ?>" class="color {required:false,hash:true}" size="7" />
                        <span class="sellya_help"><?php echo $entry_f2_background_color_help; ?></span>
                        </td>
					</tr> 
					<tr>
						<td><?php echo $entry_f2_titles_color; ?></td>
						<td><input type="text" name="sellya_f2_titles_color" value="<?php echo $sellya_f2_titles_color; ?>" class="color {required:false,hash:true}" size="7" />
                        <span class="sellya_help"><?php echo $entry_f2_titles_color_help; ?></span>
                        </td>
					</tr>
					<tr>
						<td><?php echo $text_titles_border_bottom; ?></td>
						<td>
                        <?php echo $text_size; ?>
                        <select name="sellya_f2_titles_border_bottom_size">
                           <option value="1"<?php if($sellya_f2_titles_border_bottom_size == '1') echo ' selected="selected"';?>>1</option>
                           <option value="2"<?php if($sellya_f2_titles_border_bottom_size == '2') echo ' selected="selected"';?>>2</option>
                           <option value="3"<?php if($sellya_f2_titles_border_bottom_size == '3') echo ' selected="selected"';?>>3</option>
                           <option value="4"<?php if($sellya_f2_titles_border_bottom_size == '4') echo ' selected="selected"';?>>4</option>
                           <option value="5"<?php if($sellya_f2_titles_border_bottom_size == '5') echo ' selected="selected"';?>>5</option>                                                       
                        </select>
                        <span class="sellya_help"><?php echo $text_px; ?></span>
                        <br /><br />                            
                        <?php echo $text_style; ?>          
                        <select name="sellya_f2_titles_border_bottom_style">
                           <option value="solid"<?php if($sellya_f2_titles_border_bottom_style == 'solid') echo ' selected="selected"';?><?php if($sellya_f2_titles_border_bottom_style == '') echo ' selected="selected"';?>><?php echo $text_solid; ?></option>
                           <option value="dotted"<?php if($sellya_f2_titles_border_bottom_style == 'dotted') echo ' selected="selected"';?>><?php echo $text_dotted; ?></option>
                           <option value="dashed"<?php if($sellya_f2_titles_border_bottom_style == 'dashed') echo ' selected="selected"';?>><?php echo $text_dashed; ?></option>                          
                        </select>
                        <br /><br />
                        <?php echo $text_color; ?>
                        <input type="text" name="sellya_f2_titles_border_bottom_color" value="<?php echo $sellya_f2_titles_border_bottom_color; ?>" class="color {required:false,hash:true}" size="7" />
                        <span class="sellya_help"><?php echo $entry_f2_titles_border_bottom_color_help; ?></span>
                        </td>
					</tr>                                                                   
					<tr>
						<td><?php echo $entry_f2_link_color; ?></td>
						<td><input type="text" name="sellya_f2_link_color" value="<?php echo $sellya_f2_link_color; ?>" class="color {required:false,hash:true}" size="7" />
                        <span class="sellya_help"><?php echo $entry_f2_link_color_help; ?></span>
                        </td>
					</tr>  
					<tr>
						<td><?php echo $entry_f2_link_hover_color; ?></td>
						<td><input type="text" name="sellya_f2_link_hover_color" value="<?php echo $sellya_f2_link_hover_color; ?>" class="color {required:false,hash:true}" size="7" />
                        <span class="sellya_help"><?php echo $entry_f2_link_hover_color_help; ?></span>
                        </td>
					</tr>   
              		<tr>
						<td><?php echo $text_border_top; ?></td>
						<td>
                        <?php echo $text_show; ?>
                        <select name="sellya_f2_border_top_status">
                            <option value="1"<?php if($sellya_f2_border_top_status == '1') echo ' selected="selected"';?>><?php echo $text_yes; ?></option>
                            <option value="0"<?php if($sellya_f2_border_top_status == '0') echo ' selected="selected"';?><?php if($sellya_f2_border_top_status == '') echo ' selected="selected"';?>><?php echo $text_no; ?></option>
			            </select>
                        <br /><br />
                        <?php echo $text_size; ?>
                        <select name="sellya_f2_border_top_size">
                           <option value="1"<?php if($sellya_f2_border_top_size == '1') echo ' selected="selected"';?>>1</option>
                           <option value="2"<?php if($sellya_f2_border_top_size == '2') echo ' selected="selected"';?>>2</option>
                           <option value="3"<?php if($sellya_f2_border_top_size == '3') echo ' selected="selected"';?>>3</option>
                           <option value="4"<?php if($sellya_f2_border_top_size == '4') echo ' selected="selected"';?>>4</option>
                           <option value="5"<?php if($sellya_f2_border_top_size == '5') echo ' selected="selected"';?>>5</option>                                                       
                        </select>
                        <span class="sellya_help"><?php echo $text_px; ?></span>
                        <br /><br />                            
                        <?php echo $text_style; ?>          
                        <select name="sellya_f2_border_top_style">
                           <option value="solid"<?php if($sellya_f2_border_top_style == 'solid') echo ' selected="selected"';?>><?php echo $text_solid; ?></option>
                           <option value="dotted"<?php if($sellya_f2_border_top_style == 'dotted') echo ' selected="selected"';?>><?php echo $text_dotted; ?></option>
                           <option value="dashed"<?php if($sellya_f2_border_top_style == 'dashed') echo ' selected="selected"';?>><?php echo $text_dashed; ?></option>                          
                        </select>
                        <br /><br />
                        <?php echo $text_color; ?>
                        <input type="text" name="sellya_f2_border_top_color" value="<?php echo $sellya_f2_border_top_color; ?>" class="color {required:false,hash:true}" size="7" />
                        <span class="sellya_help"><?php echo $entry_f2_border_top_color_help; ?></span>
                        </td>
					</tr>                                                                                                

		 </table>
                 
         <table class="form">
        
					<tr>
						<td colspan="2"><div><b><?php echo $entry_bottom_area_f4_color; ?></b><span class="sellya_help_tip"><a id="sellya-help-14" title="" href="#">?</a></span></div></td>
					</tr>
					<tr>
						<td><?php echo $entry_f4_background_color; ?></td>
						<td><input type="text" name="sellya_f4_background_color" value="<?php echo $sellya_f4_background_color; ?>" class="color {required:false,hash:true}" size="7" />
                        <span class="sellya_help"><?php echo $entry_f4_background_color_help; ?></span>
                        </td>
					</tr> 
					<tr>
						<td><?php echo $entry_f4_text_color; ?></td>
						<td><input type="text" name="sellya_f4_text_color" value="<?php echo $sellya_f4_text_color; ?>" class="color {required:false,hash:true}" size="7" />
                        <span class="sellya_help"><?php echo $entry_f4_text_color_help; ?></span>
                        </td>
					</tr>   
					<tr>
						<td><?php echo $entry_f4_link_color; ?></td>
						<td><input type="text" name="sellya_f4_link_color" value="<?php echo $sellya_f4_link_color; ?>" class="color {required:false,hash:true}" size="7" />
                        <span class="sellya_help"><?php echo $entry_f4_link_color_help; ?></span>
                        </td>
					</tr>  
					<tr>
						<td><?php echo $entry_f4_link_hover_color; ?></td>
						<td><input type="text" name="sellya_f4_link_hover_color" value="<?php echo $sellya_f4_link_hover_color; ?>" class="color {required:false,hash:true}" size="7" />
                        <span class="sellya_help"><?php echo $entry_f4_link_hover_color_help; ?></span>
                        </td>
					</tr>    
					<tr>
						<td><?php echo $entry_f4_light_text_color; ?></td>
						<td><input type="text" name="sellya_f4_light_text_color" value="<?php echo $sellya_f4_light_text_color; ?>" class="color {required:false,hash:true}" size="7" />
                        <span class="sellya_help"><?php echo $entry_f4_light_text_color_help; ?></span>
                        </td>
					</tr> 
              		<tr>
						<td><?php echo $text_border_top; ?></td>
						<td>
                        <?php echo $text_show; ?>
                        <select name="sellya_f4_border_top_status">
                            <option value="1"<?php if($sellya_f4_border_top_status == '1') echo ' selected="selected"';?><?php if($sellya_f4_border_top_status == '') echo ' selected="selected"';?>><?php echo $text_yes; ?></option>
                            <option value="0"<?php if($sellya_f4_border_top_status == '0') echo ' selected="selected"';?>><?php echo $text_no; ?></option>
			            </select>
                        <br /><br />
                        <?php echo $text_size; ?>
                        <select name="sellya_f4_border_top_size">
                           <option value="1"<?php if($sellya_f4_border_top_size == '1') echo ' selected="selected"';?>>1</option>
                           <option value="2"<?php if($sellya_f4_border_top_size == '2') echo ' selected="selected"';?>>2</option>
                           <option value="3"<?php if($sellya_f4_border_top_size == '3') echo ' selected="selected"';?>>3</option>
                           <option value="4"<?php if($sellya_f4_border_top_size == '4') echo ' selected="selected"';?>>4</option>
                           <option value="5"<?php if($sellya_f4_border_top_size == '5') echo ' selected="selected"';?>>5</option>                                                       
                        </select>
                        <span class="sellya_help"><?php echo $text_px; ?></span>
                        <br /><br />                            
                        <?php echo $text_style; ?>          
                        <select name="sellya_f4_border_top_style">
                           <option value="solid"<?php if($sellya_f4_border_top_style == 'solid') echo ' selected="selected"';?>><?php echo $text_solid; ?></option>
                           <option value="dotted"<?php if($sellya_f4_border_top_style == 'dotted') echo ' selected="selected"';?>><?php echo $text_dotted; ?></option>
                           <option value="dashed"<?php if($sellya_f4_border_top_style == 'dashed') echo ' selected="selected"';?>><?php echo $text_dashed; ?></option>                          
                        </select>
                        <br /><br />
                        <?php echo $text_color; ?>
                        <input type="text" name="sellya_f4_border_top_color" value="<?php echo $sellya_f4_border_top_color; ?>" class="color {required:false,hash:true}" size="7" />
                        <span class="sellya_help"><?php echo $entry_f4_border_top_color_help; ?></span>
                        </td>
					</tr>                                                                                                      

		 </table>
         
         <table class="form sellya_sep">
        
					<tr>
						<td colspan="2"><div><b><?php echo $entry_bottom_area_f5_color; ?></b><span class="sellya_help_tip"><a id="sellya-help-15" title="" href="#">?</a></span></div></td>
					</tr>
					<tr>
						<td><?php echo $entry_f5_background_color; ?></td>
						<td><input type="text" name="sellya_f5_background_color" value="<?php echo $sellya_f5_background_color; ?>" class="color {required:false,hash:true}" size="7" />
                        <span class="sellya_help"><?php echo $entry_f5_background_color_help; ?></span>
                        </td>
					</tr> 
					<tr>
						<td><?php echo $entry_f5_text_color; ?></td>
						<td><input type="text" name="sellya_f5_text_color" value="<?php echo $sellya_f5_text_color; ?>" class="color {required:false,hash:true}" size="7" />
                        <span class="sellya_help"><?php echo $entry_f5_text_color_help; ?></span>
                        </td>
					</tr>   
					<tr>
						<td><?php echo $entry_f5_link_color; ?></td>
						<td><input type="text" name="sellya_f5_link_color" value="<?php echo $sellya_f5_link_color; ?>" class="color {required:false,hash:true}" size="7" />
                        <span class="sellya_help"><?php echo $entry_f5_link_color_help; ?></span>
                        </td>
					</tr>  
					<tr>
						<td><?php echo $entry_f5_link_hover_color; ?></td>
						<td><input type="text" name="sellya_f5_link_hover_color" value="<?php echo $sellya_f5_link_hover_color; ?>" class="color {required:false,hash:true}" size="7" />
                        <span class="sellya_help"><?php echo $entry_f5_link_hover_color_help; ?></span>
                        </td>
					</tr>
              		<tr>
						<td><?php echo $text_border_top; ?></td>
						<td>
                        <?php echo $text_show; ?>
                        <select name="sellya_f5_border_top_status">
                            <option value="1"<?php if($sellya_f5_border_top_status == '1') echo ' selected="selected"';?><?php if($sellya_f5_border_top_status == '') echo ' selected="selected"';?>><?php echo $text_yes; ?></option>
                            <option value="0"<?php if($sellya_f5_border_top_status == '0') echo ' selected="selected"';?>><?php echo $text_no; ?></option>
			            </select>         
                        <br /><br />
                        <?php echo $text_size; ?>
                        <select name="sellya_f5_border_top_size">
                           <option value="1"<?php if($sellya_f5_border_top_size == '1') echo ' selected="selected"';?>>1</option>
                           <option value="2"<?php if($sellya_f5_border_top_size == '2') echo ' selected="selected"';?>>2</option>
                           <option value="3"<?php if($sellya_f5_border_top_size == '3') echo ' selected="selected"';?>>3</option>
                           <option value="4"<?php if($sellya_f5_border_top_size == '4') echo ' selected="selected"';?>>4</option>
                           <option value="5"<?php if($sellya_f5_border_top_size == '5') echo ' selected="selected"';?>>5</option>                                                       
                        </select>
                        <span class="sellya_help"><?php echo $text_px; ?></span>
                        <br /><br />                            
                        <?php echo $text_style; ?>          
                        <select name="sellya_f5_border_top_style">
                           <option value="solid"<?php if($sellya_f5_border_top_style == 'solid') echo ' selected="selected"';?>><?php echo $text_solid; ?></option>
                           <option value="dotted"<?php if($sellya_f5_border_top_style == 'dotted') echo ' selected="selected"';?>><?php echo $text_dotted; ?></option>
                           <option value="dashed"<?php if($sellya_f5_border_top_style == 'dashed') echo ' selected="selected"';?>><?php echo $text_dashed; ?></option>                          
                        </select>
                        <br /><br />
                        <?php echo $text_color; ?>
                        <input type="text" name="sellya_f5_border_top_color" value="<?php echo $sellya_f5_border_top_color; ?>" class="color {required:false,hash:true}" size="7" />
                        <span class="sellya_help"><?php echo $entry_f5_border_top_color_help; ?></span>
                        </td>
					</tr>                                                                                                    

		 </table>                                          
        </div>     
        
        </div>             


        <div id="tab-background-images">
      
            <div id="background_images_settings_tabs" class="vtabs">
             <a href="#tab-background-images-body"><?php echo $entry_pattern_sellya_body; ?></a>
             <a href="#tab-background-images-main-column"><?php echo $entry_pattern_sellya_mc; ?></a>  
             <a href="#tab-background-images-top-area"><?php echo $entry_pattern_sellya_ta; ?></a>             
             <a href="#tab-background-images-main-menu"><?php echo $entry_pattern_sellya_mm; ?></a>
             <a href="#tab-background-images-bottom-area"><?php echo $entry_pattern_sellya_f; ?></a>                                   
           </div> 
        
        <div id="tab-background-images-body" class="vtabs-content">        
        <table class="form sellya_sep">  
                            
				    <tr>
					    <td><div><b><?php echo $entry_pattern_sellya_body; ?></b><span class="sellya_help_tip"><a id="sellya-help-16" title="" href="#">?</a></span></div></td>
					    <td>
						<select name="sellya_pattern_sellya">
                        <?php foreach ($bgp as $bgv => $bgcr) { ?>
                        <?php ($bgv == $this->config->get('sellya_pattern_sellya'))?$bp='selected':$bp=''; ?>
                           <option value="<?php echo $bgv; ?>" <?php echo $bp; ?>><?php echo $bgcr; ?></option>	
                        <?php } ?> 
						</select>
						<span class="sellya_help"><?php echo $entry_pattern_sellya_help; ?> Default: 193.</span>
					    </td>
				    </tr>                       
				    <tr>
					    <td><?php echo $entry_bg_image_custom; ?> </td>
					    <td><input type="hidden" name="sellya_bg_image_custom" value="<?php echo $sellya_bg_image_custom; ?>" id="sellya_bg_image_custom" />
						<img src="<?php echo $sellya_bg_image_thumb; ?>" id="sellya_bg_image_thumb" />
						<br /><a onclick="image_upload('sellya_bg_image_custom', 'sellya_bg_image_thumb');"><?php echo $text_select; ?></a>
                        &nbsp;&nbsp;|&nbsp;&nbsp;<a onclick="$('#sellya_bg_image_thumb').attr('src', '<?php echo $no_image; ?>'); $('#sellya_bg_image_custom').attr('value', '');"><?php echo $text_clear; ?></a>
					    </td>
				    </tr>                    
  					<tr>
						<td><?php echo $entry_bg_image_position; ?></td>
						<td>                        
                        <select name="sellya_bg_image_position">
                           <option value="top center"<?php if($sellya_bg_image_position == 'top center') echo ' selected="selected"';?>><?php echo $text_position_tc; ?></option>
                           <option value="top left"<?php if($sellya_bg_image_position == 'top left') echo ' selected="selected"';?>><?php echo $text_position_tl; ?></option>
                           <option value="top right"<?php if($sellya_bg_image_position == 'top right') echo ' selected="selected"';?>><?php echo $text_position_tr; ?></option> 
                           <option value="center"<?php if($sellya_bg_image_position == 'center') echo ' selected="selected"';?>><?php echo $text_position_c; ?></option>
                           <option value="left"<?php if($sellya_bg_image_position == 'left') echo ' selected="selected"';?>><?php echo $text_position_l; ?></option>
                           <option value="right"<?php if($sellya_bg_image_position == 'right') echo ' selected="selected"';?>><?php echo $text_position_r; ?></option>
                           <option value="bottom center"<?php if($sellya_bg_image_position == 'bottom center') echo ' selected="selected"';?>><?php echo $text_position_bc; ?></option>
                           <option value="bottom left"<?php if($sellya_bg_image_position == 'bottom left') echo ' selected="selected"';?>><?php echo $text_position_bl; ?></option>
                           <option value="bottom right"<?php if($sellya_bg_image_position == 'bottom right') echo ' selected="selected"';?>><?php echo $text_position_br; ?></option>                           
                        </select>
                        </td>
					</tr> 
  					<tr>
						<td><?php echo $entry_bg_image_repeat; ?></td>
						<td>                        
                        <select name="sellya_bg_image_repeat">
                           <option value="repeat"<?php if($sellya_bg_image_repeat == 'repeat') echo ' selected="selected"';?>><?php echo $text_repeat_r; ?></option>
                           <option value="repeat-x"<?php if($sellya_bg_image_repeat == 'repeat-x') echo ' selected="selected"';?>><?php echo $text_repeat_rx; ?></option> 
                           <option value="repeat-y"<?php if($sellya_bg_image_repeat == 'repeat-y') echo ' selected="selected"';?>><?php echo $text_repeat_ry; ?></option>
                           <option value="no-repeat"<?php if($sellya_bg_image_repeat == 'no-repeat') echo ' selected="selected"';?>><?php echo $text_repeat_nr; ?></option>                      
                        </select>
                        </td>
					</tr>                       
  					<tr>
						<td><?php echo $entry_bg_image_attachment; ?></td>
						<td>                        
                        <select name="sellya_bg_image_attachment">
                           <option value="scroll"<?php if($sellya_bg_image_attachment == 'scroll') echo ' selected="selected"';?>><?php echo $text_attachment_s; ?></option>
                           <option value="fixed"<?php if($sellya_bg_image_attachment == 'fixed') echo ' selected="selected"';?>><?php echo $text_attachment_f; ?></option>                      
                        </select>
                        </td>
					</tr>
                    
        </table> 
        </div>   
        
        <div id="tab-background-images-main-column" class="vtabs-content">        
        <table class="form sellya_sep">      
                      
				    <tr>
					    <td><div><b><?php echo $entry_pattern_sellya_mc; ?></b><span class="sellya_help_tip"><a id="sellya-help-17" title="" href="#">?</a></span></div></td>
					    <td>
						<select name="sellya_pattern_sellya_mc">
                        <?php foreach ($bgp as $bgv => $bgcr) { ?>
                        <?php ($bgv == $this->config->get('sellya_pattern_sellya_mc'))?$bp='selected':$bp=''; ?>
                           <option value="<?php echo $bgv; ?>" <?php echo $bp; ?>> <?php echo $bgcr; ?> </option>	
                        <?php } ?> 
						</select>
						<span class="sellya_help"><?php echo $entry_pattern_sellya_help; ?></span>     
					    </td>
				    </tr> 
				    <tr>
					    <td><?php echo $entry_bg_image_custom; ?> </td>
					    <td><input type="hidden" name="sellya_bg_image_mc_custom" value="<?php echo $sellya_bg_image_mc_custom; ?>" id="sellya_bg_image_mc_custom" />
						<img src="<?php echo $sellya_bg_image_mc_thumb; ?>" id="sellya_bg_image_mc_thumb" />
						<br /><a onclick="image_upload('sellya_bg_image_mc_custom', 'sellya_bg_image_mc_thumb');"><?php echo $text_select; ?></a>
                        &nbsp;&nbsp;|&nbsp;&nbsp;
                        <a onclick="$('#sellya_bg_image_mc_thumb').attr('src', '<?php echo $no_image; ?>'); $('#sellya_bg_image_mc_custom').attr('value', '');"><?php echo $text_clear; ?></a>
					    </td>
				    </tr>  
  					<tr>
						<td><?php echo $entry_bg_image_position; ?></td>
						<td>                        
                        <select name="sellya_bg_image_mc_position">
                           <option value="top center"<?php if($sellya_bg_image_mc_position == 'top center') echo ' selected="selected"';?>><?php echo $text_position_tc; ?></option>
                           <option value="top left"<?php if($sellya_bg_image_mc_position == 'top left') echo ' selected="selected"';?>><?php echo $text_position_tl; ?></option>
                           <option value="top right"<?php if($sellya_bg_image_mc_position == 'top right') echo ' selected="selected"';?>><?php echo $text_position_tr; ?></option> 
                           <option value="center"<?php if($sellya_bg_image_mc_position == 'center') echo ' selected="selected"';?>><?php echo $text_position_c; ?></option>
                           <option value="left"<?php if($sellya_bg_image_mc_position == 'left') echo ' selected="selected"';?>><?php echo $text_position_l; ?></option>
                           <option value="right"<?php if($sellya_bg_image_mc_position == 'right') echo ' selected="selected"';?>><?php echo $text_position_r; ?></option>
                           <option value="bottom center"<?php if($sellya_bg_image_mc_position == 'bottom center') echo ' selected="selected"';?>><?php echo $text_position_bc; ?></option>
                           <option value="bottom left"<?php if($sellya_bg_image_mc_position == 'bottom left') echo ' selected="selected"';?>><?php echo $text_position_bl; ?></option>
                           <option value="bottom right"<?php if($sellya_bg_image_mc_position == 'bottom right') echo ' selected="selected"';?>><?php echo $text_position_br; ?></option>
                        </select>
                        </td>
					</tr> 
  					<tr>
						<td><?php echo $entry_bg_image_repeat; ?></td>
						<td>                        
                        <select name="sellya_bg_image_mc_repeat">
                           <option value="repeat"<?php if($sellya_bg_image_mc_repeat == 'repeat') echo ' selected="selected"';?>><?php echo $text_repeat_r; ?></option>
                           <option value="repeat-x"<?php if($sellya_bg_image_mc_repeat == 'repeat-x') echo ' selected="selected"';?>><?php echo $text_repeat_rx; ?></option> 
                           <option value="repeat-y"<?php if($sellya_bg_image_mc_repeat == 'repeat-y') echo ' selected="selected"';?>><?php echo $text_repeat_ry; ?></option> 
                           <option value="no-repeat"<?php if($sellya_bg_image_mc_repeat == 'no-repeat') echo ' selected="selected"';?>><?php echo $text_repeat_nr; ?></option>                      
                        </select>
                        </td>
					</tr>                       
  					<tr>
						<td><?php echo $entry_bg_image_attachment; ?></td>
						<td>                        
                        <select name="sellya_bg_image_mc_attachment">
                           <option value="scroll"<?php if($sellya_bg_image_mc_attachment == 'scroll') echo ' selected="selected"';?>><?php echo $text_attachment_s; ?></option>
                           <option value="fixed"<?php if($sellya_bg_image_mc_attachment == 'fixed') echo ' selected="selected"';?>><?php echo $text_attachment_f; ?></option>                      
                        </select>
                        </td>
					</tr>
                    
        </table>    
        </div> 
        
        <div id="tab-background-images-top-area" class="vtabs-content">        
        <table class="form sellya_sep">      
                      
				    <tr>
					    <td><div><b><?php echo $entry_pattern_sellya_ta; ?></b><span class="sellya_help_tip"><a id="sellya-help-18" title="" href="#">?</a></span></div></td>
					    <td>
						<select name="sellya_pattern_sellya_ta">
                        <?php foreach ($bgp as $bgv => $bgcr) { ?>
                        <?php ($bgv == $this->config->get('sellya_pattern_sellya_ta'))?$bp='selected':$bp=''; ?>
                           <option value="<?php echo $bgv; ?>" <?php echo $bp; ?>> <?php echo $bgcr; ?> </option>	
                        <?php } ?> 
						</select>
						<span class="sellya_help"><?php echo $entry_pattern_sellya_help; ?></span>     
					    </td>
				    </tr> 
				    <tr>
					    <td><?php echo $entry_bg_image_custom; ?> </td>
					    <td><input type="hidden" name="sellya_bg_image_ta_custom" value="<?php echo $sellya_bg_image_ta_custom; ?>" id="sellya_bg_image_ta_custom" />
						<img src="<?php echo $sellya_bg_image_ta_thumb; ?>" id="sellya_bg_image_ta_thumb" />
						<br /><a onclick="image_upload('sellya_bg_image_ta_custom', 'sellya_bg_image_ta_thumb');"><?php echo $text_select; ?></a>
                        &nbsp;&nbsp;|&nbsp;&nbsp;
                        <a onclick="$('#sellya_bg_image_ta_thumb').attr('src', '<?php echo $no_image; ?>'); $('#sellya_bg_image_ta_custom').attr('value', '');"><?php echo $text_clear; ?></a>
					    </td>
				    </tr>  
  					<tr>
						<td><?php echo $entry_bg_image_position; ?></td>
						<td>                        
                        <select name="sellya_bg_image_ta_position">
                           <option value="top center"<?php if($sellya_bg_image_ta_position == 'top center') echo ' selected="selected"';?>><?php echo $text_position_tc; ?></option>
                           <option value="top left"<?php if($sellya_bg_image_ta_position == 'top left') echo ' selected="selected"';?>><?php echo $text_position_tl; ?></option>
                           <option value="top right"<?php if($sellya_bg_image_ta_position == 'top right') echo ' selected="selected"';?>><?php echo $text_position_tr; ?></option> 
                           <option value="center"<?php if($sellya_bg_image_ta_position == 'center') echo ' selected="selected"';?>><?php echo $text_position_c; ?></option>
                           <option value="left"<?php if($sellya_bg_image_ta_position == 'left') echo ' selected="selected"';?>><?php echo $text_position_l; ?></option>
                           <option value="right"<?php if($sellya_bg_image_ta_position == 'right') echo ' selected="selected"';?>><?php echo $text_position_r; ?></option>
                           <option value="bottom center"<?php if($sellya_bg_image_ta_position == 'bottom center') echo ' selected="selected"';?>><?php echo $text_position_bc; ?></option>
                           <option value="bottom left"<?php if($sellya_bg_image_ta_position == 'bottom left') echo ' selected="selected"';?>><?php echo $text_position_bl; ?></option>
                           <option value="bottom right"<?php if($sellya_bg_image_ta_position == 'bottom right') echo ' selected="selected"';?>><?php echo $text_position_br; ?></option>
                        </select>
                        </td>
					</tr> 
  					<tr>
						<td><?php echo $entry_bg_image_repeat; ?></td>
						<td>                        
                        <select name="sellya_bg_image_ta_repeat">
                           <option value="repeat"<?php if($sellya_bg_image_ta_repeat == 'repeat') echo ' selected="selected"';?>><?php echo $text_repeat_r; ?></option>
                           <option value="repeat-x"<?php if($sellya_bg_image_ta_repeat == 'repeat-x') echo ' selected="selected"';?>><?php echo $text_repeat_rx; ?></option> 
                           <option value="repeat-y"<?php if($sellya_bg_image_ta_repeat == 'repeat-y') echo ' selected="selected"';?>><?php echo $text_repeat_ry; ?></option> 
                           <option value="no-repeat"<?php if($sellya_bg_image_ta_repeat == 'no-repeat') echo ' selected="selected"';?>><?php echo $text_repeat_nr; ?></option>                      
                        </select>
                        </td>
					</tr>                       
  					<tr>
						<td><?php echo $entry_bg_image_attachment; ?></td>
						<td>                        
                        <select name="sellya_bg_image_ta_attachment">
                           <option value="scroll"<?php if($sellya_bg_image_ta_attachment == 'scroll') echo ' selected="selected"';?>><?php echo $text_attachment_s; ?></option>
                           <option value="fixed"<?php if($sellya_bg_image_ta_attachment == 'fixed') echo ' selected="selected"';?>><?php echo $text_attachment_f; ?></option>                      
                        </select>
                        </td>
					</tr>
                    
        </table>    
        </div>         
                
        <div id="tab-background-images-main-menu" class="vtabs-content">        
        <table class="form sellya_sep">  
                          
				    <tr>
					    <td><div><b><?php echo $entry_pattern_sellya_mm; ?></b><span class="sellya_help_tip"><a id="sellya-help-19" title="" href="#">?</a></span></div></td>
					    <td>
						<select name="sellya_pattern_sellya_mm">
                        <?php foreach ($bgp as $bgv => $bgcr) { ?>
                        <?php ($bgv == $this->config->get('sellya_pattern_sellya_mm'))?$bp='selected':$bp=''; ?>
                           <option value="<?php echo $bgv; ?>" <?php echo $bp; ?>> <?php echo $bgcr; ?> </option>	
                        <?php } ?> 
						</select>
						<span class="sellya_help"><?php echo $entry_pattern_sellya_help; ?></span>     
					    </td>
				    </tr> 
				    <tr>
					    <td><?php echo $entry_bg_image_custom; ?><br /><span class="sellya_help"><?php echo $entry_bg_image_mm_custom_help; ?></span></td>
					    <td><input type="hidden" name="sellya_bg_image_mm_custom" value="<?php echo $sellya_bg_image_mm_custom; ?>" id="sellya_bg_image_mm_custom" />
						<img src="<?php echo $sellya_bg_image_mm_thumb; ?>" id="sellya_bg_image_mm_thumb" />
						<br /><a onclick="image_upload('sellya_bg_image_mm_custom', 'sellya_bg_image_mm_thumb');"><?php echo $text_select; ?></a>&nbsp;&nbsp;|&nbsp;&nbsp;
                        <a onclick="$('#sellya_bg_image_mm_thumb').attr('src', '<?php echo $no_image; ?>'); $('#sellya_bg_image_mm_custom').attr('value', '');"><?php echo $text_clear; ?></a>
					    </td>
				    </tr>
  					<tr>
						<td><?php echo $entry_bg_image_repeat; ?></td>
						<td>                        
                        <select name="sellya_bg_image_mm_repeat">
                           <option value="repeat"<?php if($sellya_bg_image_mm_repeat == 'repeat') echo ' selected="selected"';?>><?php echo $text_repeat_r; ?></option>
                           <option value="repeat-x"<?php if($sellya_bg_image_mm_repeat == 'repeat-x') echo ' selected="selected"';?>><?php echo $text_repeat_rx; ?></option> 
                           <option value="repeat-y"<?php if($sellya_bg_image_mm_repeat == 'repeat-y') echo ' selected="selected"';?>><?php echo $text_repeat_ry; ?></option>  
                           <option value="no-repeat"<?php if($sellya_bg_image_mm_repeat == 'no-repeat') echo ' selected="selected"';?>><?php echo $text_repeat_nr; ?></option>                     
                        </select>
                        </td>
					</tr>                        
				    <tr>
					    <td><?php echo $entry_bg_image_mmt_custom; ?><br /><span class="sellya_help"><?php echo $entry_bg_image_mmt_custom_help; ?></span></td>
					    <td><input type="hidden" name="sellya_bg_image_mmt_custom" value="<?php echo $sellya_bg_image_mmt_custom; ?>" id="sellya_bg_image_mmt_custom" />
						<img src="<?php echo $sellya_bg_image_mmt_thumb; ?>" id="sellya_bg_image_mmt_thumb" />
						<br /><a onclick="image_upload('sellya_bg_image_mmt_custom', 'sellya_bg_image_mmt_thumb');"><?php echo $text_select; ?></a>&nbsp;&nbsp;|&nbsp;&nbsp;
                        <a onclick="$('#sellya_bg_image_mmt_thumb').attr('src', '<?php echo $no_image; ?>'); $('#sellya_bg_image_mmt_custom').attr('value', '');"><?php echo $text_clear; ?></a>                  
					    </td>
				    </tr>  
  					<tr>
						<td><?php echo $entry_bg_image_repeat; ?></td>
						<td>                        
                        <select name="sellya_bg_image_mmt_repeat">
                           <option value="repeat"<?php if($sellya_bg_image_mmt_repeat == 'repeat') echo ' selected="selected"';?>><?php echo $text_repeat_r; ?></option>
                           <option value="repeat-x"<?php if($sellya_bg_image_mmt_repeat == 'repeat-x') echo ' selected="selected"';?>><?php echo $text_repeat_rx; ?></option> 
                           <option value="repeat-y"<?php if($sellya_bg_image_mmt_repeat == 'repeat-y') echo ' selected="selected"';?>><?php echo $text_repeat_ry; ?></option>
                           <option value="no-repeat"<?php if($sellya_bg_image_mmt_repeat == 'no-repeat') echo ' selected="selected"';?>><?php echo $text_repeat_nr; ?></option>               
                        </select>
                        </td>
					</tr>  
                                                            
         </table>           
        </div>           
                
        <div id="tab-background-images-bottom-area" class="vtabs-content">        
        <table class="form">  
                          
				    <tr>
					    <td><div><b><?php echo $entry_pattern_sellya_f1; ?></b><span class="sellya_help_tip"><a id="sellya-help-20" title="" href="#">?</a></span></div></td>
					    <td>
						<select name="sellya_pattern_sellya_f1">
                        <?php foreach ($bgp as $bgv => $bgcr) { ?>
                        <?php ($bgv == $this->config->get('sellya_pattern_sellya_f1'))?$bp='selected':$bp=''; ?>
                           <option value="<?php echo $bgv; ?>" <?php echo $bp; ?>> <?php echo $bgcr; ?> </option>	
                        <?php } ?> 
						</select>
						<span class="sellya_help"><?php echo $entry_pattern_sellya_help; ?></span>     
					    </td>
				    </tr>
				    <tr>
					    <td><?php echo $entry_bg_image_custom; ?> </td>
					    <td><input type="hidden" name="sellya_bg_image_f1_custom" value="<?php echo $sellya_bg_image_f1_custom; ?>" id="sellya_bg_image_f1_custom" />
						<img src="<?php echo $sellya_bg_image_f1_thumb; ?>" id="sellya_bg_image_f1_thumb" />
						<br /><a onclick="image_upload('sellya_bg_image_f1_custom', 'sellya_bg_image_f1_thumb');"><?php echo $text_select; ?></a>
                        &nbsp;&nbsp;|&nbsp;&nbsp;
                        <a onclick="$('#sellya_bg_image_f1_thumb').attr('src', '<?php echo $no_image; ?>'); $('#sellya_bg_image_f1_custom').attr('value', '');"><?php echo $text_clear; ?></a>
					    </td>
				    </tr>  
  					<tr>
						<td><?php echo $entry_bg_image_position; ?></td>
						<td>                        
                        <select name="sellya_bg_image_f1_position">
                           <option value="top center"<?php if($sellya_bg_image_f1_position == 'top center') echo ' selected="selected"';?>><?php echo $text_position_tc; ?></option>
                           <option value="top left"<?php if($sellya_bg_image_f1_position == 'top left') echo ' selected="selected"';?>><?php echo $text_position_tl; ?></option>
                           <option value="top right"<?php if($sellya_bg_image_f1_position == 'top right') echo ' selected="selected"';?>><?php echo $text_position_tr; ?></option> 
                           <option value="center"<?php if($sellya_bg_image_f1_position == 'center') echo ' selected="selected"';?>><?php echo $text_position_c; ?></option>
                           <option value="left"<?php if($sellya_bg_image_f1_position == 'left') echo ' selected="selected"';?>><?php echo $text_position_l; ?></option>
                           <option value="right"<?php if($sellya_bg_image_f1_position == 'right') echo ' selected="selected"';?>><?php echo $text_position_r; ?></option>
                           <option value="bottom center"<?php if($sellya_bg_image_f1_position == 'bottom center') echo ' selected="selected"';?>><?php echo $text_position_bc; ?></option>
                           <option value="bottom left"<?php if($sellya_bg_image_f1_position == 'bottom left') echo ' selected="selected"';?>><?php echo $text_position_bl; ?></option>
                           <option value="bottom right"<?php if($sellya_bg_image_f1_position == 'bottom right') echo ' selected="selected"';?>><?php echo $text_position_br; ?></option>
                        </select>
                        </td>
					</tr> 
  					<tr>
						<td><?php echo $entry_bg_image_repeat; ?></td>
						<td>                        
                        <select name="sellya_bg_image_f1_repeat">
                           <option value="repeat"<?php if($sellya_bg_image_f1_repeat == 'repeat') echo ' selected="selected"';?>><?php echo $text_repeat_r; ?></option>
                           <option value="repeat-x"<?php if($sellya_bg_image_f1_repeat == 'repeat-x') echo ' selected="selected"';?>><?php echo $text_repeat_rx; ?></option> 
                           <option value="repeat-y"<?php if($sellya_bg_image_f1_repeat == 'repeat-y') echo ' selected="selected"';?>><?php echo $text_repeat_ry; ?></option>       
                           <option value="no-repeat"<?php if($sellya_bg_image_f1_repeat == 'no-repeat') echo ' selected="selected"';?>><?php echo $text_repeat_nr; ?></option>                
                        </select>
                        </td>
					</tr>                       
                    
        </table> 
        
        <table class="form sellya_sep">   
                         
				    <tr>
					    <td><div><b><?php echo $entry_pattern_sellya_f2; ?></b><span class="sellya_help_tip"><a id="sellya-help-21" title="" href="#">?</a></span></div></td>
					    <td>
						<select name="sellya_pattern_sellya_f2">
                        <?php foreach ($bgp as $bgv => $bgcr) { ?>
                        <?php ($bgv == $this->config->get('sellya_pattern_sellya_f2'))?$bp='selected':$bp=''; ?>
                           <option value="<?php echo $bgv; ?>" <?php echo $bp; ?>> <?php echo $bgcr; ?> </option>	
                        <?php } ?> 
						</select>
						<span class="sellya_help"><?php echo $entry_pattern_sellya_help; ?></span>     
					    </td>
				    </tr>
				    <tr>
					    <td><?php echo $entry_bg_image_custom; ?> </td>
					    <td><input type="hidden" name="sellya_bg_image_f2_custom" value="<?php echo $sellya_bg_image_f2_custom; ?>" id="sellya_bg_image_f2_custom" />
						<img src="<?php echo $sellya_bg_image_f2_thumb; ?>" id="sellya_bg_image_f2_thumb" />
						<br /><a onclick="image_upload('sellya_bg_image_f2_custom', 'sellya_bg_image_f2_thumb');"><?php echo $text_select; ?></a>
                        &nbsp;&nbsp;|&nbsp;&nbsp;
                        <a onclick="$('#sellya_bg_image_f2_thumb').attr('src', '<?php echo $no_image; ?>'); $('#sellya_bg_image_f2_custom').attr('value', '');"><?php echo $text_clear; ?></a>
					    </td>
				    </tr>  
  					<tr>
						<td><?php echo $entry_bg_image_position; ?></td>
						<td>                        
                        <select name="sellya_bg_image_f2_position">
                           <option value="top center"<?php if($sellya_bg_image_f2_position == 'top center') echo ' selected="selected"';?>><?php echo $text_position_tc; ?></option>
                           <option value="top left"<?php if($sellya_bg_image_f2_position == 'top left') echo ' selected="selected"';?>><?php echo $text_position_tl; ?></option>
                           <option value="top right"<?php if($sellya_bg_image_f2_position == 'top right') echo ' selected="selected"';?>><?php echo $text_position_tr; ?></option> 
                           <option value="center"<?php if($sellya_bg_image_f2_position == 'center') echo ' selected="selected"';?>><?php echo $text_position_c; ?></option>
                           <option value="left"<?php if($sellya_bg_image_f2_position == 'left') echo ' selected="selected"';?>><?php echo $text_position_l; ?></option>
                           <option value="right"<?php if($sellya_bg_image_f2_position == 'right') echo ' selected="selected"';?>><?php echo $text_position_r; ?></option>
                           <option value="bottom center"<?php if($sellya_bg_image_f2_position == 'bottom center') echo ' selected="selected"';?>><?php echo $text_position_bc; ?></option>
                           <option value="bottom left"<?php if($sellya_bg_image_f2_position == 'bottom left') echo ' selected="selected"';?>><?php echo $text_position_bl; ?></option>
                           <option value="bottom right"<?php if($sellya_bg_image_f2_position == 'bottom right') echo ' selected="selected"';?>><?php echo $text_position_br; ?></option>                           
                        </select>
                        </td>
					</tr> 
  					<tr>
						<td><?php echo $entry_bg_image_repeat; ?></td>
						<td>                        
                        <select name="sellya_bg_image_f2_repeat">
                           <option value="repeat"<?php if($sellya_bg_image_f2_repeat == 'repeat') echo ' selected="selected"';?>><?php echo $text_repeat_r; ?></option>
                           <option value="repeat-x"<?php if($sellya_bg_image_f2_repeat == 'repeat-x') echo ' selected="selected"';?>><?php echo $text_repeat_rx; ?></option> 
                           <option value="repeat-y"<?php if($sellya_bg_image_f2_repeat == 'repeat-y') echo ' selected="selected"';?>><?php echo $text_repeat_ry; ?></option>
                           <option value="no-repeat"<?php if($sellya_bg_image_f2_repeat == 'no-repeat') echo ' selected="selected"';?>><?php echo $text_repeat_nr; ?></option>                   
                        </select>
                        </td>
					</tr>                         
                    
        </table> 
         
        <table class="form">  
                          
				    <tr>
					    <td><div><b><?php echo $entry_pattern_sellya_f4; ?></b><span class="sellya_help_tip"><a id="sellya-help-22" title="" href="#">?</a></span></div></td>
					    <td>
						<select name="sellya_pattern_sellya_f4">
                        <?php foreach ($bgp as $bgv => $bgcr) { ?>
                        <?php ($bgv == $this->config->get('sellya_pattern_sellya_f4'))?$bp='selected':$bp=''; ?>
                           <option value="<?php echo $bgv; ?>" <?php echo $bp; ?>> <?php echo $bgcr; ?> </option>	
                        <?php } ?> 
						</select>
						<span class="sellya_help"><?php echo $entry_pattern_sellya_help; ?></span>     
					    </td>
				    </tr> 
				    <tr>
					    <td><?php echo $entry_bg_image_custom; ?> </td>
					    <td><input type="hidden" name="sellya_bg_image_f4_custom" value="<?php echo $sellya_bg_image_f4_custom; ?>" id="sellya_bg_image_f4_custom" />
						<img src="<?php echo $sellya_bg_image_f4_thumb; ?>" id="sellya_bg_image_f4_thumb" />
						<br /><a onclick="image_upload('sellya_bg_image_f4_custom', 'sellya_bg_image_f4_thumb');"><?php echo $text_select; ?></a>
                        &nbsp;&nbsp;|&nbsp;&nbsp;
                        <a onclick="$('#sellya_bg_image_f4_thumb').attr('src', '<?php echo $no_image; ?>'); $('#sellya_bg_image_f4_custom').attr('value', '');"><?php echo $text_clear; ?></a>
					    </td>
				    </tr>  
  					<tr>
						<td><?php echo $entry_bg_image_position; ?></td>
						<td>                        
                        <select name="sellya_bg_image_f4_position">
                           <option value="top center"<?php if($sellya_bg_image_f4_position == 'top center') echo ' selected="selected"';?>><?php echo $text_position_tc; ?></option>
                           <option value="top left"<?php if($sellya_bg_image_f4_position == 'top left') echo ' selected="selected"';?>><?php echo $text_position_tl; ?></option>
                           <option value="top right"<?php if($sellya_bg_image_f4_position == 'top right') echo ' selected="selected"';?>><?php echo $text_position_tr; ?></option> 
                           <option value="center"<?php if($sellya_bg_image_f4_position == 'center') echo ' selected="selected"';?>><?php echo $text_position_c; ?></option>
                           <option value="left"<?php if($sellya_bg_image_f4_position == 'left') echo ' selected="selected"';?>><?php echo $text_position_l; ?></option>
                           <option value="right"<?php if($sellya_bg_image_f4_position == 'right') echo ' selected="selected"';?>><?php echo $text_position_r; ?></option>
                           <option value="bottom center"<?php if($sellya_bg_image_f4_position == 'bottom center') echo ' selected="selected"';?>><?php echo $text_position_bc; ?></option>
                           <option value="bottom left"<?php if($sellya_bg_image_f4_position == 'bottom left') echo ' selected="selected"';?>><?php echo $text_position_bl; ?></option>
                           <option value="bottom right"<?php if($sellya_bg_image_f4_position == 'bottom right') echo ' selected="selected"';?>><?php echo $text_position_br; ?></option>
                        </select>
                        </td>
					</tr> 
  					<tr>
						<td><?php echo $entry_bg_image_repeat; ?></td>
						<td>                        
                        <select name="sellya_bg_image_f4_repeat">
                           <option value="repeat"<?php if($sellya_bg_image_f4_repeat == 'repeat') echo ' selected="selected"';?>><?php echo $text_repeat_r; ?></option>
                           <option value="repeat-x"<?php if($sellya_bg_image_f4_repeat == 'repeat-x') echo ' selected="selected"';?>><?php echo $text_repeat_rx; ?></option> 
                           <option value="repeat-y"<?php if($sellya_bg_image_f4_repeat == 'repeat-y') echo ' selected="selected"';?>><?php echo $text_repeat_ry; ?></option> 
                           <option value="no-repeat"<?php if($sellya_bg_image_f4_repeat == 'no-repeat') echo ' selected="selected"';?>><?php echo $text_repeat_nr; ?></option>                      
                        </select>
                        </td>
					</tr>                        
                    
        </table> 
        
        <table class="form sellya_sep">    
                        
				    <tr>
					    <td><div><b><?php echo $entry_pattern_sellya_f5; ?></b><span class="sellya_help_tip"><a id="sellya-help-23" title="" href="#">?</a></span></div></td>
					    <td>
						<select name="sellya_pattern_sellya_f5">
                        <?php foreach ($bgp as $bgv => $bgcr) { ?>
                        <?php ($bgv == $this->config->get('sellya_pattern_sellya_f5'))?$bp='selected':$bp=''; ?>
                           <option value="<?php echo $bgv; ?>" <?php echo $bp; ?>> <?php echo $bgcr; ?> </option>	
                        <?php } ?> 
						</select>
						<span class="sellya_help"><?php echo $entry_pattern_sellya_help; ?></span>     
					    </td>
				    </tr> 
				    <tr>
					    <td><?php echo $entry_bg_image_custom; ?> </td>
					    <td><input type="hidden" name="sellya_bg_image_f5_custom" value="<?php echo $sellya_bg_image_f5_custom; ?>" id="sellya_bg_image_f5_custom" />
						<img src="<?php echo $sellya_bg_image_f5_thumb; ?>" id="sellya_bg_image_f5_thumb" />
						<br /><a onclick="image_upload('sellya_bg_image_f5_custom', 'sellya_bg_image_f5_thumb');"><?php echo $text_select; ?></a>
                        &nbsp;&nbsp;|&nbsp;&nbsp;
                        <a onclick="$('#sellya_bg_image_f5_thumb').attr('src', '<?php echo $no_image; ?>'); $('#sellya_bg_image_f5_custom').attr('value', '');"><?php echo $text_clear; ?></a>
					    </td>
				    </tr>  
  					<tr>
						<td><?php echo $entry_bg_image_position; ?></td>
						<td>                        
                        <select name="sellya_bg_image_f5_position">
                           <option value="top center"<?php if($sellya_bg_image_f5_position == 'top center') echo ' selected="selected"';?>><?php echo $text_position_tc; ?></option>
                           <option value="top left"<?php if($sellya_bg_image_f5_position == 'top left') echo ' selected="selected"';?>><?php echo $text_position_tl; ?></option>
                           <option value="top right"<?php if($sellya_bg_image_f5_position == 'top right') echo ' selected="selected"';?>><?php echo $text_position_tr; ?></option> 
                           <option value="center"<?php if($sellya_bg_image_f5_position == 'center') echo ' selected="selected"';?>><?php echo $text_position_c; ?></option>
                           <option value="left"<?php if($sellya_bg_image_f5_position == 'left') echo ' selected="selected"';?>><?php echo $text_position_l; ?></option>
                           <option value="right"<?php if($sellya_bg_image_f5_position == 'right') echo ' selected="selected"';?>><?php echo $text_position_r; ?></option>
                           <option value="bottom center"<?php if($sellya_bg_image_f5_position == 'bottom center') echo ' selected="selected"';?>><?php echo $text_position_bc; ?></option>
                           <option value="bottom left"<?php if($sellya_bg_image_f5_position == 'bottom left') echo ' selected="selected"';?>><?php echo $text_position_bl; ?></option>
                           <option value="bottom right"<?php if($sellya_bg_image_f5_position == 'bottom right') echo ' selected="selected"';?>><?php echo $text_position_br; ?></option>
                        </select>
                        </td>
					</tr> 
  					<tr>
						<td><?php echo $entry_bg_image_repeat; ?></td>
						<td>                        
                        <select name="sellya_bg_image_f5_repeat">
                           <option value="repeat"<?php if($sellya_bg_image_f5_repeat == 'repeat') echo ' selected="selected"';?>><?php echo $text_repeat_r; ?></option>
                           <option value="repeat-x"<?php if($sellya_bg_image_f5_repeat == 'repeat-x') echo ' selected="selected"';?>><?php echo $text_repeat_rx; ?></option> 
                           <option value="repeat-y"<?php if($sellya_bg_image_f5_repeat == 'repeat-y') echo ' selected="selected"';?>><?php echo $text_repeat_ry; ?></option>
                           <option value="no-repeat"<?php if($sellya_bg_image_f5_repeat == 'no-repeat') echo ' selected="selected"';?>><?php echo $text_repeat_nr; ?></option>         
                        </select>
                        </td>
					</tr>                        
                    
        </table> 
        </div>      
                             
        <div class="vtabs-content">            
           <table class="form">
        
					<tr>
					    <td>
                        <br />
                        <div>
                        <?php echo $entry_transparent_pattern_sellya; ?>
						</div><br />
                        
                        <div style="float:left;margin-bottom:20px">
						<div class="pattern"><img src="<?php echo HTTP_CATALOG; ?>catalog/view/theme/sellya/image/patterns/admin_thumb/p1.png"><span class="sellya_help pattern_number">1</span></div> 
                        <div class="pattern"><img src="<?php echo HTTP_CATALOG; ?>catalog/view/theme/sellya/image/patterns/admin_thumb/p2.png"><span class="sellya_help pattern_number">2</span></div>
                        <div class="pattern"><img src="<?php echo HTTP_CATALOG; ?>catalog/view/theme/sellya/image/patterns/admin_thumb/p3.png"><span class="sellya_help pattern_number">3</span></div>
                        <div class="pattern"><img src="<?php echo HTTP_CATALOG; ?>catalog/view/theme/sellya/image/patterns/admin_thumb/p4.png"><span class="sellya_help pattern_number">4</span></div>
                        <div class="pattern"><img src="<?php echo HTTP_CATALOG; ?>catalog/view/theme/sellya/image/patterns/admin_thumb/p5.png"><span class="sellya_help pattern_number">5</span></div>
                        <div class="pattern"><img src="<?php echo HTTP_CATALOG; ?>catalog/view/theme/sellya/image/patterns/admin_thumb/p6.png"><span class="sellya_help pattern_number">6</span></div>
                        <div class="pattern"><img src="<?php echo HTTP_CATALOG; ?>catalog/view/theme/sellya/image/patterns/admin_thumb/p7.png"><span class="sellya_help pattern_number">7</span></div>
                        <div class="pattern"><img src="<?php echo HTTP_CATALOG; ?>catalog/view/theme/sellya/image/patterns/admin_thumb/p8.png"><span class="sellya_help pattern_number">8</span></div>
                        <div class="pattern"><img src="<?php echo HTTP_CATALOG; ?>catalog/view/theme/sellya/image/patterns/admin_thumb/p9.png"><span class="sellya_help pattern_number">9</span></div>
                        <div class="pattern"><img src="<?php echo HTTP_CATALOG; ?>catalog/view/theme/sellya/image/patterns/admin_thumb/p10.png"><span class="sellya_help pattern_number">10</span></div>
                        <div class="pattern"><img src="<?php echo HTTP_CATALOG; ?>catalog/view/theme/sellya/image/patterns/admin_thumb/p11.png"><span class="sellya_help pattern_number">11</span></div>
                        <div class="pattern"><img src="<?php echo HTTP_CATALOG; ?>catalog/view/theme/sellya/image/patterns/admin_thumb/p12.png"><span class="sellya_help pattern_number">12</span></div>
                        <div class="pattern"><img src="<?php echo HTTP_CATALOG; ?>catalog/view/theme/sellya/image/patterns/admin_thumb/p13.png"><span class="sellya_help pattern_number">13</span></div>
                        <div class="pattern"><img src="<?php echo HTTP_CATALOG; ?>catalog/view/theme/sellya/image/patterns/admin_thumb/p14.png"><span class="sellya_help pattern_number">14</span></div>
                        <div class="pattern"><img src="<?php echo HTTP_CATALOG; ?>catalog/view/theme/sellya/image/patterns/admin_thumb/p15.png"><span class="sellya_help pattern_number">15</span></div>
                        <div class="pattern"><img src="<?php echo HTTP_CATALOG; ?>catalog/view/theme/sellya/image/patterns/admin_thumb/p16.png"><span class="sellya_help pattern_number">16</span></div>
                        <div class="pattern"><img src="<?php echo HTTP_CATALOG; ?>catalog/view/theme/sellya/image/patterns/admin_thumb/p17.png"><span class="sellya_help pattern_number">17</span></div>
                        <div class="pattern"><img src="<?php echo HTTP_CATALOG; ?>catalog/view/theme/sellya/image/patterns/admin_thumb/p18.png"><span class="sellya_help pattern_number">18</span></div>
                        <div class="pattern"><img src="<?php echo HTTP_CATALOG; ?>catalog/view/theme/sellya/image/patterns/admin_thumb/p19.png"><span class="sellya_help pattern_number">19</span></div>
                        <div class="pattern"><img src="<?php echo HTTP_CATALOG; ?>catalog/view/theme/sellya/image/patterns/admin_thumb/p20.png"><span class="sellya_help pattern_number">20</span></div>
                        <div class="pattern"><img src="<?php echo HTTP_CATALOG; ?>catalog/view/theme/sellya/image/patterns/admin_thumb/p21.png"><span class="sellya_help pattern_number">21</span></div>
                        <div class="pattern"><img src="<?php echo HTTP_CATALOG; ?>catalog/view/theme/sellya/image/patterns/admin_thumb/p22.png"><span class="sellya_help pattern_number">22</span></div>
                        <div class="pattern"><img src="<?php echo HTTP_CATALOG; ?>catalog/view/theme/sellya/image/patterns/admin_thumb/p23.png"><span class="sellya_help pattern_number">23</span></div>
                        <div class="pattern"><img src="<?php echo HTTP_CATALOG; ?>catalog/view/theme/sellya/image/patterns/admin_thumb/p24.png"><span class="sellya_help pattern_number">24</span></div>
                        <div class="pattern"><img src="<?php echo HTTP_CATALOG; ?>catalog/view/theme/sellya/image/patterns/admin_thumb/p25.png"><span class="sellya_help pattern_number">25</span></div>
                        <div class="pattern"><img src="<?php echo HTTP_CATALOG; ?>catalog/view/theme/sellya/image/patterns/admin_thumb/p26.png"><span class="sellya_help pattern_number">26</span></div>
                        <div class="pattern"><img src="<?php echo HTTP_CATALOG; ?>catalog/view/theme/sellya/image/patterns/admin_thumb/p27.png"><span class="sellya_help pattern_number">27</span></div>
                        <div class="pattern"><img src="<?php echo HTTP_CATALOG; ?>catalog/view/theme/sellya/image/patterns/admin_thumb/p28.png"><span class="sellya_help pattern_number">28</span></div>
                        <div class="pattern"><img src="<?php echo HTTP_CATALOG; ?>catalog/view/theme/sellya/image/patterns/admin_thumb/p29.png"><span class="sellya_help pattern_number">29</span></div>
                        <div class="pattern"><img src="<?php echo HTTP_CATALOG; ?>catalog/view/theme/sellya/image/patterns/admin_thumb/p30.png"><span class="sellya_help pattern_number">30</span></div>
                        <div class="pattern"><img src="<?php echo HTTP_CATALOG; ?>catalog/view/theme/sellya/image/patterns/admin_thumb/p31.png"><span class="sellya_help pattern_number">31</span></div>
                        <div class="pattern"><img src="<?php echo HTTP_CATALOG; ?>catalog/view/theme/sellya/image/patterns/admin_thumb/p32.png"><span class="sellya_help pattern_number">32</span></div>
                        <div class="pattern"><img src="<?php echo HTTP_CATALOG; ?>catalog/view/theme/sellya/image/patterns/admin_thumb/p33.png"><span class="sellya_help pattern_number">33</span></div>
                        <div class="pattern"><img src="<?php echo HTTP_CATALOG; ?>catalog/view/theme/sellya/image/patterns/admin_thumb/p34.png"><span class="sellya_help pattern_number">34</span></div>
                        <div class="pattern"><img src="<?php echo HTTP_CATALOG; ?>catalog/view/theme/sellya/image/patterns/admin_thumb/p35.png"><span class="sellya_help pattern_number">35</span></div>
                        <div class="pattern"><img src="<?php echo HTTP_CATALOG; ?>catalog/view/theme/sellya/image/patterns/admin_thumb/p36.png"><span class="sellya_help pattern_number">36</span></div>
                        <div class="pattern"><img src="<?php echo HTTP_CATALOG; ?>catalog/view/theme/sellya/image/patterns/admin_thumb/p37.png"><span class="sellya_help pattern_number">37</span></div>
                        <div class="pattern"><img src="<?php echo HTTP_CATALOG; ?>catalog/view/theme/sellya/image/patterns/admin_thumb/p38.png"><span class="sellya_help pattern_number">38</span></div>
                        <div class="pattern"><img src="<?php echo HTTP_CATALOG; ?>catalog/view/theme/sellya/image/patterns/admin_thumb/p39.png"><span class="sellya_help pattern_number">39</span></div>
                        <div class="pattern"><img src="<?php echo HTTP_CATALOG; ?>catalog/view/theme/sellya/image/patterns/admin_thumb/p40.png"><span class="sellya_help pattern_number">40</span></div>
                        <div class="pattern"><img src="<?php echo HTTP_CATALOG; ?>catalog/view/theme/sellya/image/patterns/admin_thumb/p41.png"><span class="sellya_help pattern_number">41</span></div>
                        <div class="pattern"><img src="<?php echo HTTP_CATALOG; ?>catalog/view/theme/sellya/image/patterns/admin_thumb/p42.png"><span class="sellya_help pattern_number">42</span></div>
                        <div class="pattern"><img src="<?php echo HTTP_CATALOG; ?>catalog/view/theme/sellya/image/patterns/admin_thumb/p43.png"><span class="sellya_help pattern_number">43</span></div>
                        <div class="pattern"><img src="<?php echo HTTP_CATALOG; ?>catalog/view/theme/sellya/image/patterns/admin_thumb/p44.png"><span class="sellya_help pattern_number">44</span></div>
                        <div class="pattern"><img src="<?php echo HTTP_CATALOG; ?>catalog/view/theme/sellya/image/patterns/admin_thumb/p45.png"><span class="sellya_help pattern_number">45</span></div>
                        <div class="pattern"><img src="<?php echo HTTP_CATALOG; ?>catalog/view/theme/sellya/image/patterns/admin_thumb/p46.png"><span class="sellya_help pattern_number">46</span></div>
                        <div class="pattern"><img src="<?php echo HTTP_CATALOG; ?>catalog/view/theme/sellya/image/patterns/admin_thumb/p47.png"><span class="sellya_help pattern_number">47</span></div>
                        <div class="pattern"><img src="<?php echo HTTP_CATALOG; ?>catalog/view/theme/sellya/image/patterns/admin_thumb/p48.png"><span class="sellya_help pattern_number">48</span></div>
                        <div class="pattern"><img src="<?php echo HTTP_CATALOG; ?>catalog/view/theme/sellya/image/patterns/admin_thumb/p49.png"><span class="sellya_help pattern_number">49</span></div>
                        <div class="pattern"><img src="<?php echo HTTP_CATALOG; ?>catalog/view/theme/sellya/image/patterns/admin_thumb/p50.png"><span class="sellya_help pattern_number">50</span></div>
                        <div class="pattern"><img src="<?php echo HTTP_CATALOG; ?>catalog/view/theme/sellya/image/patterns/admin_thumb/p51.png"><span class="sellya_help pattern_number">51</span></div>
                        <div class="pattern"><img src="<?php echo HTTP_CATALOG; ?>catalog/view/theme/sellya/image/patterns/admin_thumb/p52.png"><span class="sellya_help pattern_number">52</span></div>
                        <div class="pattern"><img src="<?php echo HTTP_CATALOG; ?>catalog/view/theme/sellya/image/patterns/admin_thumb/p53.png"><span class="sellya_help pattern_number">53</span></div>
                        <div class="pattern"><img src="<?php echo HTTP_CATALOG; ?>catalog/view/theme/sellya/image/patterns/admin_thumb/p54.png"><span class="sellya_help pattern_number">54</span></div>
                        <div class="pattern"><img src="<?php echo HTTP_CATALOG; ?>catalog/view/theme/sellya/image/patterns/admin_thumb/p55.png"><span class="sellya_help pattern_number">55</span></div>
                        <div class="pattern"><img src="<?php echo HTTP_CATALOG; ?>catalog/view/theme/sellya/image/patterns/admin_thumb/p56.png"><span class="sellya_help pattern_number">56</span></div>
                        <div class="pattern"><img src="<?php echo HTTP_CATALOG; ?>catalog/view/theme/sellya/image/patterns/admin_thumb/p57.png"><span class="sellya_help pattern_number">57</span></div>
                        <div class="pattern"><img src="<?php echo HTTP_CATALOG; ?>catalog/view/theme/sellya/image/patterns/admin_thumb/p58.png"><span class="sellya_help pattern_number">58</span></div>
                        <div class="pattern"><img src="<?php echo HTTP_CATALOG; ?>catalog/view/theme/sellya/image/patterns/admin_thumb/p59.png"><span class="sellya_help pattern_number">59</span></div>
                        <div class="pattern"><img src="<?php echo HTTP_CATALOG; ?>catalog/view/theme/sellya/image/patterns/admin_thumb/p60.png"><span class="sellya_help pattern_number">60</span></div>
                        <div class="pattern"><img src="<?php echo HTTP_CATALOG; ?>catalog/view/theme/sellya/image/patterns/admin_thumb/p61.png"><span class="sellya_help pattern_number">61</span></div>
                        <div class="pattern"><img src="<?php echo HTTP_CATALOG; ?>catalog/view/theme/sellya/image/patterns/admin_thumb/p62.png"><span class="sellya_help pattern_number">62</span></div>
                        <div class="pattern"><img src="<?php echo HTTP_CATALOG; ?>catalog/view/theme/sellya/image/patterns/admin_thumb/p63.png"><span class="sellya_help pattern_number">63</span></div>
                        <div class="pattern"><img src="<?php echo HTTP_CATALOG; ?>catalog/view/theme/sellya/image/patterns/admin_thumb/p64.png"><span class="sellya_help pattern_number">64</span></div>
                        <div class="pattern"><img src="<?php echo HTTP_CATALOG; ?>catalog/view/theme/sellya/image/patterns/admin_thumb/p65.png"><span class="sellya_help pattern_number">65</span></div>
                        <div class="pattern"><img src="<?php echo HTTP_CATALOG; ?>catalog/view/theme/sellya/image/patterns/admin_thumb/p66.png"><span class="sellya_help pattern_number">66</span></div>
                        <div class="pattern"><img src="<?php echo HTTP_CATALOG; ?>catalog/view/theme/sellya/image/patterns/admin_thumb/p67.png"><span class="sellya_help pattern_number">67</span></div>
                        <div class="pattern"><img src="<?php echo HTTP_CATALOG; ?>catalog/view/theme/sellya/image/patterns/admin_thumb/p68.png"><span class="sellya_help pattern_number">68</span></div>
                        <div class="pattern"><img src="<?php echo HTTP_CATALOG; ?>catalog/view/theme/sellya/image/patterns/admin_thumb/p69.png"><span class="sellya_help pattern_number">69</span></div>
                        <div class="pattern"><img src="<?php echo HTTP_CATALOG; ?>catalog/view/theme/sellya/image/patterns/admin_thumb/p70.png"><span class="sellya_help pattern_number">70</span></div>
                        <div class="pattern"><img src="<?php echo HTTP_CATALOG; ?>catalog/view/theme/sellya/image/patterns/admin_thumb/p71.png"><span class="sellya_help pattern_number">71</span></div>
                        <div class="pattern"><img src="<?php echo HTTP_CATALOG; ?>catalog/view/theme/sellya/image/patterns/admin_thumb/p72.png"><span class="sellya_help pattern_number">72</span></div>
                        <div class="pattern"><img src="<?php echo HTTP_CATALOG; ?>catalog/view/theme/sellya/image/patterns/admin_thumb/p73.png"><span class="sellya_help pattern_number">73</span></div>
                        <div class="pattern"><img src="<?php echo HTTP_CATALOG; ?>catalog/view/theme/sellya/image/patterns/admin_thumb/p74.png"><span class="sellya_help pattern_number">74</span></div>
                        <div class="pattern"><img src="<?php echo HTTP_CATALOG; ?>catalog/view/theme/sellya/image/patterns/admin_thumb/p75.png"><span class="sellya_help pattern_number">75</span></div>
                        </div>
                        
                        <div style="float:left;margin-bottom:20px">
                        <?php echo $entry_color_pattern_sellya; ?>
						</div>    
                          
                        <div style="float:left">                   
						<div class="pattern"><img src="<?php echo HTTP_CATALOG; ?>catalog/view/theme/sellya/image/patterns/admin_thumb/p101.png"><span class="sellya_help pattern_number">101</span></div> 
                        <div class="pattern"><img src="<?php echo HTTP_CATALOG; ?>catalog/view/theme/sellya/image/patterns/admin_thumb/p102.png"><span class="sellya_help pattern_number">102</span></div>
                        <div class="pattern"><img src="<?php echo HTTP_CATALOG; ?>catalog/view/theme/sellya/image/patterns/admin_thumb/p103.png"><span class="sellya_help pattern_number">103</span></div>
                        <div class="pattern"><img src="<?php echo HTTP_CATALOG; ?>catalog/view/theme/sellya/image/patterns/admin_thumb/p104.png"><span class="sellya_help pattern_number">104</span></div>
                        <div class="pattern"><img src="<?php echo HTTP_CATALOG; ?>catalog/view/theme/sellya/image/patterns/admin_thumb/p105.png"><span class="sellya_help pattern_number">105</span></div>
                        <div class="pattern"><img src="<?php echo HTTP_CATALOG; ?>catalog/view/theme/sellya/image/patterns/admin_thumb/p106.png"><span class="sellya_help pattern_number">106</span></div>
                        <div class="pattern"><img src="<?php echo HTTP_CATALOG; ?>catalog/view/theme/sellya/image/patterns/admin_thumb/p107.png"><span class="sellya_help pattern_number">107</span></div>
                        <div class="pattern"><img src="<?php echo HTTP_CATALOG; ?>catalog/view/theme/sellya/image/patterns/admin_thumb/p108.png"><span class="sellya_help pattern_number">108</span></div>
                        <div class="pattern"><img src="<?php echo HTTP_CATALOG; ?>catalog/view/theme/sellya/image/patterns/admin_thumb/p109.png"><span class="sellya_help pattern_number">109</span></div>
                        <div class="pattern"><img src="<?php echo HTTP_CATALOG; ?>catalog/view/theme/sellya/image/patterns/admin_thumb/p110.png"><span class="sellya_help pattern_number">110</span></div>
                        <div class="pattern"><img src="<?php echo HTTP_CATALOG; ?>catalog/view/theme/sellya/image/patterns/admin_thumb/p111.png"><span class="sellya_help pattern_number">111</span></div>
                        <div class="pattern"><img src="<?php echo HTTP_CATALOG; ?>catalog/view/theme/sellya/image/patterns/admin_thumb/p112.png"><span class="sellya_help pattern_number">112</span></div>
                        <div class="pattern"><img src="<?php echo HTTP_CATALOG; ?>catalog/view/theme/sellya/image/patterns/admin_thumb/p113.png"><span class="sellya_help pattern_number">113</span></div>
                        <div class="pattern"><img src="<?php echo HTTP_CATALOG; ?>catalog/view/theme/sellya/image/patterns/admin_thumb/p114.png"><span class="sellya_help pattern_number">114</span></div>
                        <div class="pattern"><img src="<?php echo HTTP_CATALOG; ?>catalog/view/theme/sellya/image/patterns/admin_thumb/p115.png"><span class="sellya_help pattern_number">115</span></div>
                        <div class="pattern"><img src="<?php echo HTTP_CATALOG; ?>catalog/view/theme/sellya/image/patterns/admin_thumb/p116.png"><span class="sellya_help pattern_number">116</span></div>
                        <div class="pattern"><img src="<?php echo HTTP_CATALOG; ?>catalog/view/theme/sellya/image/patterns/admin_thumb/p117.png"><span class="sellya_help pattern_number">117</span></div>
                        <div class="pattern"><img src="<?php echo HTTP_CATALOG; ?>catalog/view/theme/sellya/image/patterns/admin_thumb/p118.png"><span class="sellya_help pattern_number">118</span></div>
                        <div class="pattern"><img src="<?php echo HTTP_CATALOG; ?>catalog/view/theme/sellya/image/patterns/admin_thumb/p119.png"><span class="sellya_help pattern_number">119</span></div>
                        <div class="pattern"><img src="<?php echo HTTP_CATALOG; ?>catalog/view/theme/sellya/image/patterns/admin_thumb/p120.png"><span class="sellya_help pattern_number">120</span></div>
                        <div class="pattern"><img src="<?php echo HTTP_CATALOG; ?>catalog/view/theme/sellya/image/patterns/admin_thumb/p121.png"><span class="sellya_help pattern_number">121</span></div>
                        <div class="pattern"><img src="<?php echo HTTP_CATALOG; ?>catalog/view/theme/sellya/image/patterns/admin_thumb/p122.png"><span class="sellya_help pattern_number">122</span></div>
                        <div class="pattern"><img src="<?php echo HTTP_CATALOG; ?>catalog/view/theme/sellya/image/patterns/admin_thumb/p123.png"><span class="sellya_help pattern_number">123</span></div>
                        <div class="pattern"><img src="<?php echo HTTP_CATALOG; ?>catalog/view/theme/sellya/image/patterns/admin_thumb/p124.png"><span class="sellya_help pattern_number">124</span></div>
                        <div class="pattern"><img src="<?php echo HTTP_CATALOG; ?>catalog/view/theme/sellya/image/patterns/admin_thumb/p125.png"><span class="sellya_help pattern_number">125</span></div>
                        <div class="pattern"><img src="<?php echo HTTP_CATALOG; ?>catalog/view/theme/sellya/image/patterns/admin_thumb/p126.png"><span class="sellya_help pattern_number">126</span></div>
                        <div class="pattern"><img src="<?php echo HTTP_CATALOG; ?>catalog/view/theme/sellya/image/patterns/admin_thumb/p127.png"><span class="sellya_help pattern_number">127</span></div>
                        <div class="pattern"><img src="<?php echo HTTP_CATALOG; ?>catalog/view/theme/sellya/image/patterns/admin_thumb/p128.png"><span class="sellya_help pattern_number">128</span></div>
                        <div class="pattern"><img src="<?php echo HTTP_CATALOG; ?>catalog/view/theme/sellya/image/patterns/admin_thumb/p129.png"><span class="sellya_help pattern_number">129</span></div>
                        <div class="pattern"><img src="<?php echo HTTP_CATALOG; ?>catalog/view/theme/sellya/image/patterns/admin_thumb/p130.png"><span class="sellya_help pattern_number">130</span></div>
                        <div class="pattern"><img src="<?php echo HTTP_CATALOG; ?>catalog/view/theme/sellya/image/patterns/admin_thumb/p131.png"><span class="sellya_help pattern_number">131</span></div>
                        <div class="pattern"><img src="<?php echo HTTP_CATALOG; ?>catalog/view/theme/sellya/image/patterns/admin_thumb/p132.png"><span class="sellya_help pattern_number">132</span></div>
                        <div class="pattern"><img src="<?php echo HTTP_CATALOG; ?>catalog/view/theme/sellya/image/patterns/admin_thumb/p133.png"><span class="sellya_help pattern_number">133</span></div>
                        <div class="pattern"><img src="<?php echo HTTP_CATALOG; ?>catalog/view/theme/sellya/image/patterns/admin_thumb/p134.png"><span class="sellya_help pattern_number">134</span></div>
                        <div class="pattern"><img src="<?php echo HTTP_CATALOG; ?>catalog/view/theme/sellya/image/patterns/admin_thumb/p135.png"><span class="sellya_help pattern_number">135</span></div>
                        <div class="pattern"><img src="<?php echo HTTP_CATALOG; ?>catalog/view/theme/sellya/image/patterns/admin_thumb/p136.png"><span class="sellya_help pattern_number">136</span></div>
                        <div class="pattern"><img src="<?php echo HTTP_CATALOG; ?>catalog/view/theme/sellya/image/patterns/admin_thumb/p137.png"><span class="sellya_help pattern_number">137</span></div>
                        <div class="pattern"><img src="<?php echo HTTP_CATALOG; ?>catalog/view/theme/sellya/image/patterns/admin_thumb/p138.png"><span class="sellya_help pattern_number">138</span></div>
                        <div class="pattern"><img src="<?php echo HTTP_CATALOG; ?>catalog/view/theme/sellya/image/patterns/admin_thumb/p139.png"><span class="sellya_help pattern_number">139</span></div>
                        <div class="pattern"><img src="<?php echo HTTP_CATALOG; ?>catalog/view/theme/sellya/image/patterns/admin_thumb/p140.png"><span class="sellya_help pattern_number">140</span></div>
                        <div class="pattern"><img src="<?php echo HTTP_CATALOG; ?>catalog/view/theme/sellya/image/patterns/admin_thumb/p141.png"><span class="sellya_help pattern_number">141</span></div>
                        <div class="pattern"><img src="<?php echo HTTP_CATALOG; ?>catalog/view/theme/sellya/image/patterns/admin_thumb/p142.png"><span class="sellya_help pattern_number">142</span></div>
                        <div class="pattern"><img src="<?php echo HTTP_CATALOG; ?>catalog/view/theme/sellya/image/patterns/admin_thumb/p143.png"><span class="sellya_help pattern_number">143</span></div>
                        <div class="pattern"><img src="<?php echo HTTP_CATALOG; ?>catalog/view/theme/sellya/image/patterns/admin_thumb/p144.png"><span class="sellya_help pattern_number">144</span></div>
                        <div class="pattern"><img src="<?php echo HTTP_CATALOG; ?>catalog/view/theme/sellya/image/patterns/admin_thumb/p145.png"><span class="sellya_help pattern_number">145</span></div>
                        <div class="pattern"><img src="<?php echo HTTP_CATALOG; ?>catalog/view/theme/sellya/image/patterns/admin_thumb/p146.png"><span class="sellya_help pattern_number">146</span></div>
                        <div class="pattern"><img src="<?php echo HTTP_CATALOG; ?>catalog/view/theme/sellya/image/patterns/admin_thumb/p147.png"><span class="sellya_help pattern_number">147</span></div>
                        <div class="pattern"><img src="<?php echo HTTP_CATALOG; ?>catalog/view/theme/sellya/image/patterns/admin_thumb/p148.png"><span class="sellya_help pattern_number">148</span></div>
                        <div class="pattern"><img src="<?php echo HTTP_CATALOG; ?>catalog/view/theme/sellya/image/patterns/admin_thumb/p149.png"><span class="sellya_help pattern_number">149</span></div>
                        <div class="pattern"><img src="<?php echo HTTP_CATALOG; ?>catalog/view/theme/sellya/image/patterns/admin_thumb/p150.png"><span class="sellya_help pattern_number">150</span></div>
                        <div class="pattern"><img src="<?php echo HTTP_CATALOG; ?>catalog/view/theme/sellya/image/patterns/admin_thumb/p151.png"><span class="sellya_help pattern_number">151</span></div>
                        <div class="pattern"><img src="<?php echo HTTP_CATALOG; ?>catalog/view/theme/sellya/image/patterns/admin_thumb/p152.png"><span class="sellya_help pattern_number">152</span></div>
                        <div class="pattern"><img src="<?php echo HTTP_CATALOG; ?>catalog/view/theme/sellya/image/patterns/admin_thumb/p153.png"><span class="sellya_help pattern_number">153</span></div>
                        <div class="pattern"><img src="<?php echo HTTP_CATALOG; ?>catalog/view/theme/sellya/image/patterns/admin_thumb/p154.png"><span class="sellya_help pattern_number">154</span></div>
                        <div class="pattern"><img src="<?php echo HTTP_CATALOG; ?>catalog/view/theme/sellya/image/patterns/admin_thumb/p155.png"><span class="sellya_help pattern_number">155</span></div>
                        <div class="pattern"><img src="<?php echo HTTP_CATALOG; ?>catalog/view/theme/sellya/image/patterns/admin_thumb/p156.png"><span class="sellya_help pattern_number">156</span></div>
                        <div class="pattern"><img src="<?php echo HTTP_CATALOG; ?>catalog/view/theme/sellya/image/patterns/admin_thumb/p157.png"><span class="sellya_help pattern_number">157</span></div>
                        <div class="pattern"><img src="<?php echo HTTP_CATALOG; ?>catalog/view/theme/sellya/image/patterns/admin_thumb/p158.png"><span class="sellya_help pattern_number">158</span></div>
                        <div class="pattern"><img src="<?php echo HTTP_CATALOG; ?>catalog/view/theme/sellya/image/patterns/admin_thumb/p159.png"><span class="sellya_help pattern_number">159</span></div>
                        <div class="pattern"><img src="<?php echo HTTP_CATALOG; ?>catalog/view/theme/sellya/image/patterns/admin_thumb/p160.png"><span class="sellya_help pattern_number">160</span></div>
                        <div class="pattern"><img src="<?php echo HTTP_CATALOG; ?>catalog/view/theme/sellya/image/patterns/admin_thumb/p161.png"><span class="sellya_help pattern_number">161</span></div>
                        <div class="pattern"><img src="<?php echo HTTP_CATALOG; ?>catalog/view/theme/sellya/image/patterns/admin_thumb/p162.png"><span class="sellya_help pattern_number">162</span></div>
                        <div class="pattern"><img src="<?php echo HTTP_CATALOG; ?>catalog/view/theme/sellya/image/patterns/admin_thumb/p163.png"><span class="sellya_help pattern_number">163</span></div>
                        <div class="pattern"><img src="<?php echo HTTP_CATALOG; ?>catalog/view/theme/sellya/image/patterns/admin_thumb/p164.png"><span class="sellya_help pattern_number">164</span></div>
                        <div class="pattern"><img src="<?php echo HTTP_CATALOG; ?>catalog/view/theme/sellya/image/patterns/admin_thumb/p165.png"><span class="sellya_help pattern_number">165</span></div>
                        <div class="pattern"><img src="<?php echo HTTP_CATALOG; ?>catalog/view/theme/sellya/image/patterns/admin_thumb/p166.png"><span class="sellya_help pattern_number">166</span></div>
                        <div class="pattern"><img src="<?php echo HTTP_CATALOG; ?>catalog/view/theme/sellya/image/patterns/admin_thumb/p167.png"><span class="sellya_help pattern_number">167</span></div>
                        <div class="pattern"><img src="<?php echo HTTP_CATALOG; ?>catalog/view/theme/sellya/image/patterns/admin_thumb/p168.png"><span class="sellya_help pattern_number">168</span></div>
                        <div class="pattern"><img src="<?php echo HTTP_CATALOG; ?>catalog/view/theme/sellya/image/patterns/admin_thumb/p169.png"><span class="sellya_help pattern_number">169</span></div>
                        <div class="pattern"><img src="<?php echo HTTP_CATALOG; ?>catalog/view/theme/sellya/image/patterns/admin_thumb/p170.png"><span class="sellya_help pattern_number">170</span></div>
                        <div class="pattern"><img src="<?php echo HTTP_CATALOG; ?>catalog/view/theme/sellya/image/patterns/admin_thumb/p171.png"><span class="sellya_help pattern_number">171</span></div>
                        <div class="pattern"><img src="<?php echo HTTP_CATALOG; ?>catalog/view/theme/sellya/image/patterns/admin_thumb/p172.png"><span class="sellya_help pattern_number">172</span></div>
                        <div class="pattern"><img src="<?php echo HTTP_CATALOG; ?>catalog/view/theme/sellya/image/patterns/admin_thumb/p173.png"><span class="sellya_help pattern_number">173</span></div>
                        <div class="pattern"><img src="<?php echo HTTP_CATALOG; ?>catalog/view/theme/sellya/image/patterns/admin_thumb/p174.png"><span class="sellya_help pattern_number">174</span></div>
                        <div class="pattern"><img src="<?php echo HTTP_CATALOG; ?>catalog/view/theme/sellya/image/patterns/admin_thumb/p175.png"><span class="sellya_help pattern_number">175</span></div>
                        <div class="pattern"><img src="<?php echo HTTP_CATALOG; ?>catalog/view/theme/sellya/image/patterns/admin_thumb/p176.png"><span class="sellya_help pattern_number">176</span></div>
                        <div class="pattern"><img src="<?php echo HTTP_CATALOG; ?>catalog/view/theme/sellya/image/patterns/admin_thumb/p177.png"><span class="sellya_help pattern_number">177</span></div>
                        <div class="pattern"><img src="<?php echo HTTP_CATALOG; ?>catalog/view/theme/sellya/image/patterns/admin_thumb/p178.png"><span class="sellya_help pattern_number">178</span></div>
                        <div class="pattern"><img src="<?php echo HTTP_CATALOG; ?>catalog/view/theme/sellya/image/patterns/admin_thumb/p179.png"><span class="sellya_help pattern_number">179</span></div>
                        <div class="pattern"><img src="<?php echo HTTP_CATALOG; ?>catalog/view/theme/sellya/image/patterns/admin_thumb/p180.png"><span class="sellya_help pattern_number">180</span></div>
                        <div class="pattern"><img src="<?php echo HTTP_CATALOG; ?>catalog/view/theme/sellya/image/patterns/admin_thumb/p181.png"><span class="sellya_help pattern_number">181</span></div>
                        <div class="pattern"><img src="<?php echo HTTP_CATALOG; ?>catalog/view/theme/sellya/image/patterns/admin_thumb/p182.png"><span class="sellya_help pattern_number">182</span></div>
                        <div class="pattern"><img src="<?php echo HTTP_CATALOG; ?>catalog/view/theme/sellya/image/patterns/admin_thumb/p183.png"><span class="sellya_help pattern_number">183</span></div>
                        <div class="pattern"><img src="<?php echo HTTP_CATALOG; ?>catalog/view/theme/sellya/image/patterns/admin_thumb/p184.png"><span class="sellya_help pattern_number">184</span></div>
                        <div class="pattern"><img src="<?php echo HTTP_CATALOG; ?>catalog/view/theme/sellya/image/patterns/admin_thumb/p185.png"><span class="sellya_help pattern_number">185</span></div>
                        <div class="pattern"><img src="<?php echo HTTP_CATALOG; ?>catalog/view/theme/sellya/image/patterns/admin_thumb/p186.png"><span class="sellya_help pattern_number">186</span></div>
                        <div class="pattern"><img src="<?php echo HTTP_CATALOG; ?>catalog/view/theme/sellya/image/patterns/admin_thumb/p187.png"><span class="sellya_help pattern_number">187</span></div>
                        <div class="pattern"><img src="<?php echo HTTP_CATALOG; ?>catalog/view/theme/sellya/image/patterns/admin_thumb/p188.png"><span class="sellya_help pattern_number">188</span></div>
                        <div class="pattern"><img src="<?php echo HTTP_CATALOG; ?>catalog/view/theme/sellya/image/patterns/admin_thumb/p189.png"><span class="sellya_help pattern_number">189</span></div>
                        <div class="pattern"><img src="<?php echo HTTP_CATALOG; ?>catalog/view/theme/sellya/image/patterns/admin_thumb/p190.png"><span class="sellya_help pattern_number">190</span></div>
                        <div class="pattern"><img src="<?php echo HTTP_CATALOG; ?>catalog/view/theme/sellya/image/patterns/admin_thumb/p191.png"><span class="sellya_help pattern_number">191</span></div>
                        <div class="pattern"><img src="<?php echo HTTP_CATALOG; ?>catalog/view/theme/sellya/image/patterns/admin_thumb/p192.png"><span class="sellya_help pattern_number">192</span></div>
                        <div class="pattern"><img src="<?php echo HTTP_CATALOG; ?>catalog/view/theme/sellya/image/patterns/admin_thumb/p193.png"><span class="sellya_help pattern_number">193</span></div>
                        <div class="pattern"><img src="<?php echo HTTP_CATALOG; ?>catalog/view/theme/sellya/image/patterns/admin_thumb/p194.png"><span class="sellya_help pattern_number">194</span></div>
                        <div class="pattern"><img src="<?php echo HTTP_CATALOG; ?>catalog/view/theme/sellya/image/patterns/admin_thumb/p195.png"><span class="sellya_help pattern_number">195</span></div>
                        <div class="pattern"><img src="<?php echo HTTP_CATALOG; ?>catalog/view/theme/sellya/image/patterns/admin_thumb/p196.png"><span class="sellya_help pattern_number">196</span></div>
                        <div class="pattern"><img src="<?php echo HTTP_CATALOG; ?>catalog/view/theme/sellya/image/patterns/admin_thumb/p197.png"><span class="sellya_help pattern_number">197</span></div>
                        <div class="pattern"><img src="<?php echo HTTP_CATALOG; ?>catalog/view/theme/sellya/image/patterns/admin_thumb/p198.png"><span class="sellya_help pattern_number">198</span></div>
                        <div class="pattern"><img src="<?php echo HTTP_CATALOG; ?>catalog/view/theme/sellya/image/patterns/admin_thumb/p199.png"><span class="sellya_help pattern_number">199</span></div>
                        <div class="pattern"><img src="<?php echo HTTP_CATALOG; ?>catalog/view/theme/sellya/image/patterns/admin_thumb/p200.png"><span class="sellya_help pattern_number">200</span></div>
                        <div class="pattern"><img src="<?php echo HTTP_CATALOG; ?>catalog/view/theme/sellya/image/patterns/admin_thumb/p201.png"><span class="sellya_help pattern_number">201</span></div>
                        <div class="pattern"><img src="<?php echo HTTP_CATALOG; ?>catalog/view/theme/sellya/image/patterns/admin_thumb/p202.png"><span class="sellya_help pattern_number">202</span></div>
                        <div class="pattern"><img src="<?php echo HTTP_CATALOG; ?>catalog/view/theme/sellya/image/patterns/admin_thumb/p203.png"><span class="sellya_help pattern_number">203</span></div>
                        <div class="pattern"><img src="<?php echo HTTP_CATALOG; ?>catalog/view/theme/sellya/image/patterns/admin_thumb/p204.png"><span class="sellya_help pattern_number">204</span></div>
                        <div class="pattern"><img src="<?php echo HTTP_CATALOG; ?>catalog/view/theme/sellya/image/patterns/admin_thumb/p205.png"><span class="sellya_help pattern_number">205</span></div>
                        <div class="pattern"><img src="<?php echo HTTP_CATALOG; ?>catalog/view/theme/sellya/image/patterns/admin_thumb/p206.png"><span class="sellya_help pattern_number">206</span></div>
                        <div class="pattern"><img src="<?php echo HTTP_CATALOG; ?>catalog/view/theme/sellya/image/patterns/admin_thumb/p207.png"><span class="sellya_help pattern_number">207</span></div>
                        <div class="pattern"><img src="<?php echo HTTP_CATALOG; ?>catalog/view/theme/sellya/image/patterns/admin_thumb/p208.png"><span class="sellya_help pattern_number">208</span></div>
                        <div class="pattern"><img src="<?php echo HTTP_CATALOG; ?>catalog/view/theme/sellya/image/patterns/admin_thumb/p209.png"><span class="sellya_help pattern_number">209</span></div>
                        <div class="pattern"><img src="<?php echo HTTP_CATALOG; ?>catalog/view/theme/sellya/image/patterns/admin_thumb/p210.png"><span class="sellya_help pattern_number">210</span></div>
                        <div class="pattern"><img src="<?php echo HTTP_CATALOG; ?>catalog/view/theme/sellya/image/patterns/admin_thumb/p211.png"><span class="sellya_help pattern_number">211</span></div>
                        <div class="pattern"><img src="<?php echo HTTP_CATALOG; ?>catalog/view/theme/sellya/image/patterns/admin_thumb/p212.png"><span class="sellya_help pattern_number">212</span></div>
                        <div class="pattern"><img src="<?php echo HTTP_CATALOG; ?>catalog/view/theme/sellya/image/patterns/admin_thumb/p213.png"><span class="sellya_help pattern_number">213</span></div>
                        <div class="pattern"><img src="<?php echo HTTP_CATALOG; ?>catalog/view/theme/sellya/image/patterns/admin_thumb/p214.png"><span class="sellya_help pattern_number">214</span></div>
                        <div class="pattern"><img src="<?php echo HTTP_CATALOG; ?>catalog/view/theme/sellya/image/patterns/admin_thumb/p215.png"><span class="sellya_help pattern_number">215</span></div>
                        <div class="pattern"><img src="<?php echo HTTP_CATALOG; ?>catalog/view/theme/sellya/image/patterns/admin_thumb/p216.png"><span class="sellya_help pattern_number">216</span></div>
                        <div class="pattern"><img src="<?php echo HTTP_CATALOG; ?>catalog/view/theme/sellya/image/patterns/admin_thumb/p217.png"><span class="sellya_help pattern_number">217</span></div>
                        <div class="pattern"><img src="<?php echo HTTP_CATALOG; ?>catalog/view/theme/sellya/image/patterns/admin_thumb/p218.png"><span class="sellya_help pattern_number">218</span></div>
                        <div class="pattern"><img src="<?php echo HTTP_CATALOG; ?>catalog/view/theme/sellya/image/patterns/admin_thumb/p219.png"><span class="sellya_help pattern_number">219</span></div>
                        <div class="pattern"><img src="<?php echo HTTP_CATALOG; ?>catalog/view/theme/sellya/image/patterns/admin_thumb/p220.png"><span class="sellya_help pattern_number">220</span></div>
                        <div class="pattern"><img src="<?php echo HTTP_CATALOG; ?>catalog/view/theme/sellya/image/patterns/admin_thumb/p221.png"><span class="sellya_help pattern_number">221</span></div>
                        <div class="pattern"><img src="<?php echo HTTP_CATALOG; ?>catalog/view/theme/sellya/image/patterns/admin_thumb/p222.png"><span class="sellya_help pattern_number">222</span></div>
                        <div class="pattern"><img src="<?php echo HTTP_CATALOG; ?>catalog/view/theme/sellya/image/patterns/admin_thumb/p223.png"><span class="sellya_help pattern_number">223</span></div>
                        <div class="pattern"><img src="<?php echo HTTP_CATALOG; ?>catalog/view/theme/sellya/image/patterns/admin_thumb/p224.png"><span class="sellya_help pattern_number">224</span></div>
                        <div class="pattern"><img src="<?php echo HTTP_CATALOG; ?>catalog/view/theme/sellya/image/patterns/admin_thumb/p225.png"><span class="sellya_help pattern_number">225</span></div>
                        <div class="pattern"><img src="<?php echo HTTP_CATALOG; ?>catalog/view/theme/sellya/image/patterns/admin_thumb/p226.png"><span class="sellya_help pattern_number">226</span></div>
                        <div class="pattern"><img src="<?php echo HTTP_CATALOG; ?>catalog/view/theme/sellya/image/patterns/admin_thumb/p227.png"><span class="sellya_help pattern_number">227</span></div>
                        <div class="pattern"><img src="<?php echo HTTP_CATALOG; ?>catalog/view/theme/sellya/image/patterns/admin_thumb/p228.png"><span class="sellya_help pattern_number">228</span></div>
                        <div class="pattern"><img src="<?php echo HTTP_CATALOG; ?>catalog/view/theme/sellya/image/patterns/admin_thumb/p229.png"><span class="sellya_help pattern_number">229</span></div>
                        <div class="pattern"><img src="<?php echo HTTP_CATALOG; ?>catalog/view/theme/sellya/image/patterns/admin_thumb/p230.png"><span class="sellya_help pattern_number">230</span></div>
                        <div class="pattern"><img src="<?php echo HTTP_CATALOG; ?>catalog/view/theme/sellya/image/patterns/admin_thumb/p231.png"><span class="sellya_help pattern_number">231</span></div>
                        <div class="pattern"><img src="<?php echo HTTP_CATALOG; ?>catalog/view/theme/sellya/image/patterns/admin_thumb/p232.png"><span class="sellya_help pattern_number">232</span></div>
                        <div class="pattern"><img src="<?php echo HTTP_CATALOG; ?>catalog/view/theme/sellya/image/patterns/admin_thumb/p233.png"><span class="sellya_help pattern_number">233</span></div>
                        <div class="pattern"><img src="<?php echo HTTP_CATALOG; ?>catalog/view/theme/sellya/image/patterns/admin_thumb/p234.png"><span class="sellya_help pattern_number">234</span></div>
                        <div class="pattern"><img src="<?php echo HTTP_CATALOG; ?>catalog/view/theme/sellya/image/patterns/admin_thumb/p235.png"><span class="sellya_help pattern_number">235</span></div>
                        <div class="pattern"><img src="<?php echo HTTP_CATALOG; ?>catalog/view/theme/sellya/image/patterns/admin_thumb/p236.png"><span class="sellya_help pattern_number">236</span></div>
                        <div class="pattern"><img src="<?php echo HTTP_CATALOG; ?>catalog/view/theme/sellya/image/patterns/admin_thumb/p237.png"><span class="sellya_help pattern_number">237</span></div>
                        <div class="pattern"><img src="<?php echo HTTP_CATALOG; ?>catalog/view/theme/sellya/image/patterns/admin_thumb/p238.png"><span class="sellya_help pattern_number">238</span></div>
                        <div class="pattern"><img src="<?php echo HTTP_CATALOG; ?>catalog/view/theme/sellya/image/patterns/admin_thumb/p239.png"><span class="sellya_help pattern_number">239</span></div>
                        <div class="pattern"><img src="<?php echo HTTP_CATALOG; ?>catalog/view/theme/sellya/image/patterns/admin_thumb/p240.png"><span class="sellya_help pattern_number">240</span></div>
                        <div class="pattern"><img src="<?php echo HTTP_CATALOG; ?>catalog/view/theme/sellya/image/patterns/admin_thumb/p241.png"><span class="sellya_help pattern_number">241</span></div>
                        <div class="pattern"><img src="<?php echo HTTP_CATALOG; ?>catalog/view/theme/sellya/image/patterns/admin_thumb/p242.png"><span class="sellya_help pattern_number">242</span></div>
                        <div class="pattern"><img src="<?php echo HTTP_CATALOG; ?>catalog/view/theme/sellya/image/patterns/admin_thumb/p243.png"><span class="sellya_help pattern_number">243</span></div>
                        <div class="pattern"><img src="<?php echo HTTP_CATALOG; ?>catalog/view/theme/sellya/image/patterns/admin_thumb/p244.png"><span class="sellya_help pattern_number">244</span></div>
                        <div class="pattern"><img src="<?php echo HTTP_CATALOG; ?>catalog/view/theme/sellya/image/patterns/admin_thumb/p245.png"><span class="sellya_help pattern_number">245</span></div>
                        <div class="pattern"><img src="<?php echo HTTP_CATALOG; ?>catalog/view/theme/sellya/image/patterns/admin_thumb/p246.png"><span class="sellya_help pattern_number">246</span></div>
                        <div class="pattern"><img src="<?php echo HTTP_CATALOG; ?>catalog/view/theme/sellya/image/patterns/admin_thumb/p247.png"><span class="sellya_help pattern_number">247</span></div>
                        <div class="pattern"><img src="<?php echo HTTP_CATALOG; ?>catalog/view/theme/sellya/image/patterns/admin_thumb/p248.png"><span class="sellya_help pattern_number">248</span></div>
                        <div class="pattern"><img src="<?php echo HTTP_CATALOG; ?>catalog/view/theme/sellya/image/patterns/admin_thumb/p249.png"><span class="sellya_help pattern_number">249</span></div>
                        <div class="pattern"><img src="<?php echo HTTP_CATALOG; ?>catalog/view/theme/sellya/image/patterns/admin_thumb/p250.png"><span class="sellya_help pattern_number">250</span></div>
                        <div class="pattern"><img src="<?php echo HTTP_CATALOG; ?>catalog/view/theme/sellya/image/patterns/admin_thumb/p251.png"><span class="sellya_help pattern_number">251</span></div>
                        <div class="pattern"><img src="<?php echo HTTP_CATALOG; ?>catalog/view/theme/sellya/image/patterns/admin_thumb/p252.png"><span class="sellya_help pattern_number">252</span></div>
                        <div class="pattern"><img src="<?php echo HTTP_CATALOG; ?>catalog/view/theme/sellya/image/patterns/admin_thumb/p253.png"><span class="sellya_help pattern_number">253</span></div>
                        <div class="pattern"><img src="<?php echo HTTP_CATALOG; ?>catalog/view/theme/sellya/image/patterns/admin_thumb/p254.png"><span class="sellya_help pattern_number">254</span></div>
                        <div class="pattern"><img src="<?php echo HTTP_CATALOG; ?>catalog/view/theme/sellya/image/patterns/admin_thumb/p255.png"><span class="sellya_help pattern_number">255</span></div>
                        <div class="pattern"><img src="<?php echo HTTP_CATALOG; ?>catalog/view/theme/sellya/image/patterns/admin_thumb/p256.png"><span class="sellya_help pattern_number">256</span></div>
                        <div class="pattern"><img src="<?php echo HTTP_CATALOG; ?>catalog/view/theme/sellya/image/patterns/admin_thumb/p257.png"><span class="sellya_help pattern_number">257</span></div>
                        <div class="pattern"><img src="<?php echo HTTP_CATALOG; ?>catalog/view/theme/sellya/image/patterns/admin_thumb/p258.png"><span class="sellya_help pattern_number">258</span></div>
                        <div class="pattern"><img src="<?php echo HTTP_CATALOG; ?>catalog/view/theme/sellya/image/patterns/admin_thumb/p259.png"><span class="sellya_help pattern_number">259</span></div>
                        <div class="pattern"><img src="<?php echo HTTP_CATALOG; ?>catalog/view/theme/sellya/image/patterns/admin_thumb/p260.png"><span class="sellya_help pattern_number">260</span></div>
                        <div class="pattern"><img src="<?php echo HTTP_CATALOG; ?>catalog/view/theme/sellya/image/patterns/admin_thumb/p261.png"><span class="sellya_help pattern_number">261</span></div>
                        <div class="pattern"><img src="<?php echo HTTP_CATALOG; ?>catalog/view/theme/sellya/image/patterns/admin_thumb/p262.png"><span class="sellya_help pattern_number">262</span></div>
                        <div class="pattern"><img src="<?php echo HTTP_CATALOG; ?>catalog/view/theme/sellya/image/patterns/admin_thumb/p263.png"><span class="sellya_help pattern_number">263</span></div>
                        <div class="pattern"><img src="<?php echo HTTP_CATALOG; ?>catalog/view/theme/sellya/image/patterns/admin_thumb/p264.png"><span class="sellya_help pattern_number">264</span></div>
                        <div class="pattern"><img src="<?php echo HTTP_CATALOG; ?>catalog/view/theme/sellya/image/patterns/admin_thumb/p265.png"><span class="sellya_help pattern_number">265</span></div>
                        <div class="pattern"><img src="<?php echo HTTP_CATALOG; ?>catalog/view/theme/sellya/image/patterns/admin_thumb/p266.png"><span class="sellya_help pattern_number">266</span></div>
                        <div class="pattern"><img src="<?php echo HTTP_CATALOG; ?>catalog/view/theme/sellya/image/patterns/admin_thumb/p267.png"><span class="sellya_help pattern_number">267</span></div>
                        <div class="pattern"><img src="<?php echo HTTP_CATALOG; ?>catalog/view/theme/sellya/image/patterns/admin_thumb/p268.png"><span class="sellya_help pattern_number">268</span></div>
                        <div class="pattern"><img src="<?php echo HTTP_CATALOG; ?>catalog/view/theme/sellya/image/patterns/admin_thumb/p269.png"><span class="sellya_help pattern_number">269</span></div>
                        <div class="pattern"><img src="<?php echo HTTP_CATALOG; ?>catalog/view/theme/sellya/image/patterns/admin_thumb/p270.png"><span class="sellya_help pattern_number">270</span></div>
                        <div class="pattern"><img src="<?php echo HTTP_CATALOG; ?>catalog/view/theme/sellya/image/patterns/admin_thumb/p271.png"><span class="sellya_help pattern_number">271</span></div>
                        <div class="pattern"><img src="<?php echo HTTP_CATALOG; ?>catalog/view/theme/sellya/image/patterns/admin_thumb/p272.png"><span class="sellya_help pattern_number">272</span></div>
                        <div class="pattern"><img src="<?php echo HTTP_CATALOG; ?>catalog/view/theme/sellya/image/patterns/admin_thumb/p273.png"><span class="sellya_help pattern_number">273</span></div>
                        <div class="pattern"><img src="<?php echo HTTP_CATALOG; ?>catalog/view/theme/sellya/image/patterns/admin_thumb/p274.png"><span class="sellya_help pattern_number">274</span></div>
                        <div class="pattern"><img src="<?php echo HTTP_CATALOG; ?>catalog/view/theme/sellya/image/patterns/admin_thumb/p275.png"><span class="sellya_help pattern_number">275</span></div>
                        <div class="pattern"><img src="<?php echo HTTP_CATALOG; ?>catalog/view/theme/sellya/image/patterns/admin_thumb/p276.png"><span class="sellya_help pattern_number">276</span></div>
                        <div class="pattern"><img src="<?php echo HTTP_CATALOG; ?>catalog/view/theme/sellya/image/patterns/admin_thumb/p277.png"><span class="sellya_help pattern_number">277</span></div>
                        <div class="pattern"><img src="<?php echo HTTP_CATALOG; ?>catalog/view/theme/sellya/image/patterns/admin_thumb/p278.png"><span class="sellya_help pattern_number">278</span></div>
                        <div class="pattern"><img src="<?php echo HTTP_CATALOG; ?>catalog/view/theme/sellya/image/patterns/admin_thumb/p279.png"><span class="sellya_help pattern_number">279</span></div>
                        <div class="pattern"><img src="<?php echo HTTP_CATALOG; ?>catalog/view/theme/sellya/image/patterns/admin_thumb/p280.png"><span class="sellya_help pattern_number">280</span></div>
                        <div class="pattern"><img src="<?php echo HTTP_CATALOG; ?>catalog/view/theme/sellya/image/patterns/admin_thumb/p281.png"><span class="sellya_help pattern_number">281</span></div>
                        <div class="pattern"><img src="<?php echo HTTP_CATALOG; ?>catalog/view/theme/sellya/image/patterns/admin_thumb/p282.png"><span class="sellya_help pattern_number">282</span></div>
                        <div class="pattern"><img src="<?php echo HTTP_CATALOG; ?>catalog/view/theme/sellya/image/patterns/admin_thumb/p283.png"><span class="sellya_help pattern_number">283</span></div>
                        <div class="pattern"><img src="<?php echo HTTP_CATALOG; ?>catalog/view/theme/sellya/image/patterns/admin_thumb/p284.png"><span class="sellya_help pattern_number">284</span></div>
                        <div class="pattern"><img src="<?php echo HTTP_CATALOG; ?>catalog/view/theme/sellya/image/patterns/admin_thumb/p285.png"><span class="sellya_help pattern_number">285</span></div>
                        <div class="pattern"><img src="<?php echo HTTP_CATALOG; ?>catalog/view/theme/sellya/image/patterns/admin_thumb/p286.png"><span class="sellya_help pattern_number">286</span></div>
                        <div class="pattern"><img src="<?php echo HTTP_CATALOG; ?>catalog/view/theme/sellya/image/patterns/admin_thumb/p287.png"><span class="sellya_help pattern_number">287</span></div>
                        <div class="pattern"><img src="<?php echo HTTP_CATALOG; ?>catalog/view/theme/sellya/image/patterns/admin_thumb/p288.png"><span class="sellya_help pattern_number">288</span></div>
                        <div class="pattern"><img src="<?php echo HTTP_CATALOG; ?>catalog/view/theme/sellya/image/patterns/admin_thumb/p289.png"><span class="sellya_help pattern_number">289</span></div>
                        <div class="pattern"><img src="<?php echo HTTP_CATALOG; ?>catalog/view/theme/sellya/image/patterns/admin_thumb/p290.png"><span class="sellya_help pattern_number">290</span></div>
                        <div class="pattern"><img src="<?php echo HTTP_CATALOG; ?>catalog/view/theme/sellya/image/patterns/admin_thumb/p291.png"><span class="sellya_help pattern_number">291</span></div>
                        <div class="pattern"><img src="<?php echo HTTP_CATALOG; ?>catalog/view/theme/sellya/image/patterns/admin_thumb/p292.png"><span class="sellya_help pattern_number">292</span></div>
                        <div class="pattern"><img src="<?php echo HTTP_CATALOG; ?>catalog/view/theme/sellya/image/patterns/admin_thumb/p293.png"><span class="sellya_help pattern_number">293</span></div>
                        <div class="pattern"><img src="<?php echo HTTP_CATALOG; ?>catalog/view/theme/sellya/image/patterns/admin_thumb/p294.png"><span class="sellya_help pattern_number">294</span></div>
                        <div class="pattern"><img src="<?php echo HTTP_CATALOG; ?>catalog/view/theme/sellya/image/patterns/admin_thumb/p295.png"><span class="sellya_help pattern_number">295</span></div>
                        <div class="pattern"><img src="<?php echo HTTP_CATALOG; ?>catalog/view/theme/sellya/image/patterns/admin_thumb/p296.png"><span class="sellya_help pattern_number">296</span></div>
                        <div class="pattern"><img src="<?php echo HTTP_CATALOG; ?>catalog/view/theme/sellya/image/patterns/admin_thumb/p297.png"><span class="sellya_help pattern_number">297</span></div>
                        <div class="pattern"><img src="<?php echo HTTP_CATALOG; ?>catalog/view/theme/sellya/image/patterns/admin_thumb/p298.png"><span class="sellya_help pattern_number">298</span></div>
                        <div class="pattern"><img src="<?php echo HTTP_CATALOG; ?>catalog/view/theme/sellya/image/patterns/admin_thumb/p299.png"><span class="sellya_help pattern_number">299</span></div>
                        <div class="pattern"><img src="<?php echo HTTP_CATALOG; ?>catalog/view/theme/sellya/image/patterns/admin_thumb/p300.png"><span class="sellya_help pattern_number">300</span></div>
                        <div class="pattern"><img src="<?php echo HTTP_CATALOG; ?>catalog/view/theme/sellya/image/patterns/admin_thumb/p301.png"><span class="sellya_help pattern_number">301</span></div>
                        <div class="pattern"><img src="<?php echo HTTP_CATALOG; ?>catalog/view/theme/sellya/image/patterns/admin_thumb/p302.png"><span class="sellya_help pattern_number">302</span></div>
                        <div class="pattern"><img src="<?php echo HTTP_CATALOG; ?>catalog/view/theme/sellya/image/patterns/admin_thumb/p303.png"><span class="sellya_help pattern_number">303</span></div>
                        <div class="pattern"><img src="<?php echo HTTP_CATALOG; ?>catalog/view/theme/sellya/image/patterns/admin_thumb/p304.png"><span class="sellya_help pattern_number">304</span></div>
                        <div class="pattern"><img src="<?php echo HTTP_CATALOG; ?>catalog/view/theme/sellya/image/patterns/admin_thumb/p305.png"><span class="sellya_help pattern_number">305</span></div>
                        <div class="pattern"><img src="<?php echo HTTP_CATALOG; ?>catalog/view/theme/sellya/image/patterns/admin_thumb/p306.png"><span class="sellya_help pattern_number">306</span></div>
                        <div class="pattern"><img src="<?php echo HTTP_CATALOG; ?>catalog/view/theme/sellya/image/patterns/admin_thumb/p307.png"><span class="sellya_help pattern_number">307</span></div>
                        <div class="pattern"><img src="<?php echo HTTP_CATALOG; ?>catalog/view/theme/sellya/image/patterns/admin_thumb/p308.png"><span class="sellya_help pattern_number">308</span></div>
                        <div class="pattern"><img src="<?php echo HTTP_CATALOG; ?>catalog/view/theme/sellya/image/patterns/admin_thumb/p309.png"><span class="sellya_help pattern_number">309</span></div>
                        <div class="pattern"><img src="<?php echo HTTP_CATALOG; ?>catalog/view/theme/sellya/image/patterns/admin_thumb/p310.png"><span class="sellya_help pattern_number">310</span></div>
                        <div class="pattern"><img src="<?php echo HTTP_CATALOG; ?>catalog/view/theme/sellya/image/patterns/admin_thumb/p311.png"><span class="sellya_help pattern_number">311</span></div>
                        <div class="pattern"><img src="<?php echo HTTP_CATALOG; ?>catalog/view/theme/sellya/image/patterns/admin_thumb/p312.png"><span class="sellya_help pattern_number">312</span></div>
                        <div class="pattern"><img src="<?php echo HTTP_CATALOG; ?>catalog/view/theme/sellya/image/patterns/admin_thumb/p313.png"><span class="sellya_help pattern_number">313</span></div>
                        <div class="pattern"><img src="<?php echo HTTP_CATALOG; ?>catalog/view/theme/sellya/image/patterns/admin_thumb/p314.png"><span class="sellya_help pattern_number">314</span></div>
                        <div class="pattern"><img src="<?php echo HTTP_CATALOG; ?>catalog/view/theme/sellya/image/patterns/admin_thumb/p315.png"><span class="sellya_help pattern_number">315</span></div>
                        <div class="pattern"><img src="<?php echo HTTP_CATALOG; ?>catalog/view/theme/sellya/image/patterns/admin_thumb/p316.png"><span class="sellya_help pattern_number">316</span></div>
                        <div class="pattern"><img src="<?php echo HTTP_CATALOG; ?>catalog/view/theme/sellya/image/patterns/admin_thumb/p317.png"><span class="sellya_help pattern_number">317</span></div>
                        <div class="pattern"><img src="<?php echo HTTP_CATALOG; ?>catalog/view/theme/sellya/image/patterns/admin_thumb/p318.png"><span class="sellya_help pattern_number">318</span></div>
                        <div class="pattern"><img src="<?php echo HTTP_CATALOG; ?>catalog/view/theme/sellya/image/patterns/admin_thumb/p319.png"><span class="sellya_help pattern_number">319</span></div>
                        <div class="pattern"><img src="<?php echo HTTP_CATALOG; ?>catalog/view/theme/sellya/image/patterns/admin_thumb/p320.png"><span class="sellya_help pattern_number">320</span></div>
                        <div class="pattern"><img src="<?php echo HTTP_CATALOG; ?>catalog/view/theme/sellya/image/patterns/admin_thumb/p321.png"><span class="sellya_help pattern_number">321</span></div>
                        <div class="pattern"><img src="<?php echo HTTP_CATALOG; ?>catalog/view/theme/sellya/image/patterns/admin_thumb/p322.png"><span class="sellya_help pattern_number">322</span></div>
                        <div class="pattern"><img src="<?php echo HTTP_CATALOG; ?>catalog/view/theme/sellya/image/patterns/admin_thumb/p323.png"><span class="sellya_help pattern_number">323</span></div>
                        <div class="pattern"><img src="<?php echo HTTP_CATALOG; ?>catalog/view/theme/sellya/image/patterns/admin_thumb/p324.png"><span class="sellya_help pattern_number">324</span></div>
                        <div class="pattern"><img src="<?php echo HTTP_CATALOG; ?>catalog/view/theme/sellya/image/patterns/admin_thumb/p325.png"><span class="sellya_help pattern_number">325</span></div>
                        <div class="pattern"><img src="<?php echo HTTP_CATALOG; ?>catalog/view/theme/sellya/image/patterns/admin_thumb/p326.png"><span class="sellya_help pattern_number">326</span></div>
                        <div class="pattern"><img src="<?php echo HTTP_CATALOG; ?>catalog/view/theme/sellya/image/patterns/admin_thumb/p327.png"><span class="sellya_help pattern_number">327</span></div>
                        <div class="pattern"><img src="<?php echo HTTP_CATALOG; ?>catalog/view/theme/sellya/image/patterns/admin_thumb/p328.png"><span class="sellya_help pattern_number">328</span></div>
                        <div class="pattern"><img src="<?php echo HTTP_CATALOG; ?>catalog/view/theme/sellya/image/patterns/admin_thumb/p329.png"><span class="sellya_help pattern_number">329</span></div>
                        <div class="pattern"><img src="<?php echo HTTP_CATALOG; ?>catalog/view/theme/sellya/image/patterns/admin_thumb/p330.png"><span class="sellya_help pattern_number">330</span></div>
                        <div class="pattern"><img src="<?php echo HTTP_CATALOG; ?>catalog/view/theme/sellya/image/patterns/admin_thumb/p331.png"><span class="sellya_help pattern_number">331</span></div>
                        <div class="pattern"><img src="<?php echo HTTP_CATALOG; ?>catalog/view/theme/sellya/image/patterns/admin_thumb/p332.png"><span class="sellya_help pattern_number">332</span></div>
                        <div class="pattern"><img src="<?php echo HTTP_CATALOG; ?>catalog/view/theme/sellya/image/patterns/admin_thumb/p333.png"><span class="sellya_help pattern_number">333</span></div>
                        <div class="pattern"><img src="<?php echo HTTP_CATALOG; ?>catalog/view/theme/sellya/image/patterns/admin_thumb/p334.png"><span class="sellya_help pattern_number">334</span></div>
                        <div class="pattern"><img src="<?php echo HTTP_CATALOG; ?>catalog/view/theme/sellya/image/patterns/admin_thumb/p335.png"><span class="sellya_help pattern_number">335</span></div>
                        <div class="pattern"><img src="<?php echo HTTP_CATALOG; ?>catalog/view/theme/sellya/image/patterns/admin_thumb/p336.png"><span class="sellya_help pattern_number">336</span></div>
                        <div class="pattern"><img src="<?php echo HTTP_CATALOG; ?>catalog/view/theme/sellya/image/patterns/admin_thumb/p337.png"><span class="sellya_help pattern_number">337</span></div>
                        <div class="pattern"><img src="<?php echo HTTP_CATALOG; ?>catalog/view/theme/sellya/image/patterns/admin_thumb/p338.png"><span class="sellya_help pattern_number">338</span></div>
                        <div class="pattern"><img src="<?php echo HTTP_CATALOG; ?>catalog/view/theme/sellya/image/patterns/admin_thumb/p339.png"><span class="sellya_help pattern_number">339</span></div>
                        <div class="pattern"><img src="<?php echo HTTP_CATALOG; ?>catalog/view/theme/sellya/image/patterns/admin_thumb/p340.png"><span class="sellya_help pattern_number">340</span></div>
                        <div class="pattern"><img src="<?php echo HTTP_CATALOG; ?>catalog/view/theme/sellya/image/patterns/admin_thumb/p341.png"><span class="sellya_help pattern_number">341</span></div>
                        <div class="pattern"><img src="<?php echo HTTP_CATALOG; ?>catalog/view/theme/sellya/image/patterns/admin_thumb/p342.png"><span class="sellya_help pattern_number">342</span></div>
                        <div class="pattern"><img src="<?php echo HTTP_CATALOG; ?>catalog/view/theme/sellya/image/patterns/admin_thumb/p343.png"><span class="sellya_help pattern_number">343</span></div>
                        <div class="pattern"><img src="<?php echo HTTP_CATALOG; ?>catalog/view/theme/sellya/image/patterns/admin_thumb/p344.png"><span class="sellya_help pattern_number">344</span></div>
                        <div class="pattern"><img src="<?php echo HTTP_CATALOG; ?>catalog/view/theme/sellya/image/patterns/admin_thumb/p345.png"><span class="sellya_help pattern_number">345</span></div>
                        <div class="pattern"><img src="<?php echo HTTP_CATALOG; ?>catalog/view/theme/sellya/image/patterns/admin_thumb/p346.png"><span class="sellya_help pattern_number">346</span></div>
                        <div class="pattern"><img src="<?php echo HTTP_CATALOG; ?>catalog/view/theme/sellya/image/patterns/admin_thumb/p347.png"><span class="sellya_help pattern_number">347</span></div>
                        <div class="pattern"><img src="<?php echo HTTP_CATALOG; ?>catalog/view/theme/sellya/image/patterns/admin_thumb/p348.png"><span class="sellya_help pattern_number">348</span></div>
                        <div class="pattern"><img src="<?php echo HTTP_CATALOG; ?>catalog/view/theme/sellya/image/patterns/admin_thumb/p349.png"><span class="sellya_help pattern_number">349</span></div>
                        <div class="pattern"><img src="<?php echo HTTP_CATALOG; ?>catalog/view/theme/sellya/image/patterns/admin_thumb/p350.png"><span class="sellya_help pattern_number">350</span></div>
                        <div class="pattern"><img src="<?php echo HTTP_CATALOG; ?>catalog/view/theme/sellya/image/patterns/admin_thumb/p351.png"><span class="sellya_help pattern_number">351</span></div>
                        <div class="pattern"><img src="<?php echo HTTP_CATALOG; ?>catalog/view/theme/sellya/image/patterns/admin_thumb/p352.png"><span class="sellya_help pattern_number">352</span></div>
                        <div class="pattern"><img src="<?php echo HTTP_CATALOG; ?>catalog/view/theme/sellya/image/patterns/admin_thumb/p353.png"><span class="sellya_help pattern_number">353</span></div>
                        <div class="pattern"><img src="<?php echo HTTP_CATALOG; ?>catalog/view/theme/sellya/image/patterns/admin_thumb/p354.png"><span class="sellya_help pattern_number">354</span></div>
                        <div class="pattern"><img src="<?php echo HTTP_CATALOG; ?>catalog/view/theme/sellya/image/patterns/admin_thumb/p355.png"><span class="sellya_help pattern_number">355</span></div>
                        <div class="pattern"><img src="<?php echo HTTP_CATALOG; ?>catalog/view/theme/sellya/image/patterns/admin_thumb/p356.png"><span class="sellya_help pattern_number">356</span></div>
                        <div class="pattern"><img src="<?php echo HTTP_CATALOG; ?>catalog/view/theme/sellya/image/patterns/admin_thumb/p357.png"><span class="sellya_help pattern_number">357</span></div>
                        <div class="pattern"><img src="<?php echo HTTP_CATALOG; ?>catalog/view/theme/sellya/image/patterns/admin_thumb/p358.png"><span class="sellya_help pattern_number">358</span></div>
                        <div class="pattern"><img src="<?php echo HTTP_CATALOG; ?>catalog/view/theme/sellya/image/patterns/admin_thumb/p359.png"><span class="sellya_help pattern_number">359</span></div>
                        <div class="pattern"><img src="<?php echo HTTP_CATALOG; ?>catalog/view/theme/sellya/image/patterns/admin_thumb/p360.png"><span class="sellya_help pattern_number">360</span></div>
                        <div class="pattern"><img src="<?php echo HTTP_CATALOG; ?>catalog/view/theme/sellya/image/patterns/admin_thumb/p361.png"><span class="sellya_help pattern_number">361</span></div>
                        <div class="pattern"><img src="<?php echo HTTP_CATALOG; ?>catalog/view/theme/sellya/image/patterns/admin_thumb/p362.png"><span class="sellya_help pattern_number">362</span></div>
                        <div class="pattern"><img src="<?php echo HTTP_CATALOG; ?>catalog/view/theme/sellya/image/patterns/admin_thumb/p363.png"><span class="sellya_help pattern_number">363</span></div>
                        <div class="pattern"><img src="<?php echo HTTP_CATALOG; ?>catalog/view/theme/sellya/image/patterns/admin_thumb/p364.png"><span class="sellya_help pattern_number">364</span></div>
                        <div class="pattern"><img src="<?php echo HTTP_CATALOG; ?>catalog/view/theme/sellya/image/patterns/admin_thumb/p365.png"><span class="sellya_help pattern_number">365</span></div>
                        <div class="pattern"><img src="<?php echo HTTP_CATALOG; ?>catalog/view/theme/sellya/image/patterns/admin_thumb/p366.png"><span class="sellya_help pattern_number">366</span></div>
                        <div class="pattern"><img src="<?php echo HTTP_CATALOG; ?>catalog/view/theme/sellya/image/patterns/admin_thumb/p367.png"><span class="sellya_help pattern_number">367</span></div>
                        <div class="pattern"><img src="<?php echo HTTP_CATALOG; ?>catalog/view/theme/sellya/image/patterns/admin_thumb/p368.png"><span class="sellya_help pattern_number">368</span></div>
                        <div class="pattern"><img src="<?php echo HTTP_CATALOG; ?>catalog/view/theme/sellya/image/patterns/admin_thumb/p369.png"><span class="sellya_help pattern_number">369</span></div>
                        <div class="pattern"><img src="<?php echo HTTP_CATALOG; ?>catalog/view/theme/sellya/image/patterns/admin_thumb/p370.png"><span class="sellya_help pattern_number">370</span></div>
                        <div class="pattern"><img src="<?php echo HTTP_CATALOG; ?>catalog/view/theme/sellya/image/patterns/admin_thumb/p371.png"><span class="sellya_help pattern_number">371</span></div>
                        <div class="pattern"><img src="<?php echo HTTP_CATALOG; ?>catalog/view/theme/sellya/image/patterns/admin_thumb/p372.png"><span class="sellya_help pattern_number">372</span></div>
                        <div class="pattern"><img src="<?php echo HTTP_CATALOG; ?>catalog/view/theme/sellya/image/patterns/admin_thumb/p373.png"><span class="sellya_help pattern_number">373</span></div>
                        <div class="pattern"><img src="<?php echo HTTP_CATALOG; ?>catalog/view/theme/sellya/image/patterns/admin_thumb/p374.png"><span class="sellya_help pattern_number">374</span></div>
                        <div class="pattern"><img src="<?php echo HTTP_CATALOG; ?>catalog/view/theme/sellya/image/patterns/admin_thumb/p375.png"><span class="sellya_help pattern_number">375</span></div>
                        <div class="pattern"><img src="<?php echo HTTP_CATALOG; ?>catalog/view/theme/sellya/image/patterns/admin_thumb/p376.png"><span class="sellya_help pattern_number">376</span></div>
                        <div class="pattern"><img src="<?php echo HTTP_CATALOG; ?>catalog/view/theme/sellya/image/patterns/admin_thumb/p377.png"><span class="sellya_help pattern_number">377</span></div>
                        <div class="pattern"><img src="<?php echo HTTP_CATALOG; ?>catalog/view/theme/sellya/image/patterns/admin_thumb/p378.png"><span class="sellya_help pattern_number">378</span></div>
                        <div class="pattern"><img src="<?php echo HTTP_CATALOG; ?>catalog/view/theme/sellya/image/patterns/admin_thumb/p379.png"><span class="sellya_help pattern_number">379</span></div> 
                        </div>
                            
					    </td>
					</tr>
                    
        </table>  
        
        </div>
        
        </div>    
        
        
        
        
        <div id="tab-fonts">
      
        <table class="form">
        
					<tr>
						<td><a href="http://www.google.com/webfonts/" target="_blank" class="link" style="margin-left:0"><?php echo $text_google_font_collection; ?></a></td>
						<td></td>
					</tr>
                    
        </table> 
      
        <table class="form">
        
					<tr>
						<td><?php echo $entry_body_font; ?></td>
						<td>                        
                        <select name="sellya_body_font">
                        <?php foreach ($googlefonts as $vlfont => $crfont) { ?>
                        <?php ($vlfont == $this->config->get('sellya_body_font'))?$cf='selected':$cf=''; ?>
                           <option value="<?php echo $vlfont; ?>" <?php echo $cf; ?>> <?php echo $crfont; ?> </option>	
                        <?php } ?>                            
                        </select>
                        </td>
					</tr>
                    
        </table> 
        
        <table class="form sellya_sep">    
                                                                          
					<tr>
						<td><?php echo $entry_title_font; ?></td>
						<td>                        
                        <select name="sellya_title_font">
                        <?php foreach ($googlefonts as $vlfont => $crfont) { ?>
                        <?php ($vlfont == $this->config->get('sellya_title_font'))?$cf='selected':$cf=''; ?>
                           <option value="<?php echo $vlfont; ?>" <?php echo $cf; ?>> <?php echo $crfont; ?> </option>	
                        <?php } ?>                            
                        </select>
                        &nbsp;&nbsp;&nbsp;&nbsp;
                        <?php echo $text_weight; ?>&nbsp;&nbsp;
                        <select name="sellya_title_font_weight">
                           <option value="normal"<?php if($sellya_title_font_weight == 'normal') echo ' selected="selected"';?>><?php echo $text_normal; ?></option>
                           <option value="bold"<?php if($sellya_title_font_weight == 'bold') echo ' selected="selected"';?>><?php echo $text_bold; ?></option>                         
                        </select>
                        &nbsp;&nbsp;&nbsp;&nbsp;
                        <?php echo $text_uppercase; ?>&nbsp;&nbsp; 
                        <select name="sellya_title_font_uppercase">
                            <option value="1"<?php if($sellya_title_font_uppercase == '1') echo ' selected="selected"';?><?php if($sellya_title_font_uppercase == '') echo ' selected="selected"';?>><?php echo $text_yes; ?></option>
                            <option value="0"<?php if($sellya_title_font_uppercase == '0') echo ' selected="selected"';?>><?php echo $text_no; ?></option>
			            </select>
                        </td>
					</tr>
                    
        </table> 
        
        <table class="form">    
                                                                 
					<tr>
						<td><?php echo $entry_price_font; ?></td>
						<td>                        
                        <select name="sellya_price_font">
                        <?php foreach ($googlefonts as $vlfont => $crfont) { ?>
                        <?php ($vlfont == $this->config->get('sellya_price_font'))?$cf='selected':$cf=''; ?>
                           <option value="<?php echo $vlfont; ?>" <?php echo $cf; ?>> <?php echo $crfont; ?> </option>	
                        <?php } ?>                            
                        </select>
                        &nbsp;&nbsp;&nbsp;&nbsp;
                        <?php echo $text_weight; ?>&nbsp;&nbsp;
                        <select name="sellya_price_font_weight">
                           <option value="normal"<?php if($sellya_price_font_weight == 'normal') echo ' selected="selected"';?>><?php echo $text_normal; ?></option>
                           <option value="bold"<?php if($sellya_price_font_weight == 'bold') echo ' selected="selected"';?>><?php echo $text_bold; ?></option>                         
                        </select>                    
                        </td>
					</tr>                 
                    
        </table> 
        
        <table class="form sellya_sep">    
                                            
					<tr>
						<td><?php echo $entry_button_font; ?></td>
						<td>                        
                        <select name="sellya_button_font">
                        <?php foreach ($googlefonts as $vlfont => $crfont) { ?>
                        <?php ($vlfont == $this->config->get('sellya_button_font'))?$cf='selected':$cf=''; ?>
                           <option value="<?php echo $vlfont; ?>" <?php echo $cf; ?>> <?php echo $crfont; ?> </option>	
                        <?php } ?>                            
                        </select>
                        &nbsp;&nbsp;&nbsp;&nbsp;
                        <?php echo $text_weight; ?>&nbsp;&nbsp;
                        <select name="sellya_button_font_weight">
                           <option value="normal"<?php if($sellya_button_font_weight == 'normal') echo ' selected="selected"';?>><?php echo $text_normal; ?></option>
                           <option value="bold"<?php if($sellya_button_font_weight == 'bold') echo ' selected="selected"';?>><?php echo $text_bold; ?></option>                         
                        </select> 
                        &nbsp;&nbsp;&nbsp;&nbsp;
                        <?php echo $text_uppercase; ?>&nbsp;&nbsp;
                        <select name="sellya_button_font_uppercase">
                            <option value="1"<?php if($sellya_button_font_uppercase == '1') echo ' selected="selected"';?><?php if($sellya_button_font_uppercase == '') echo ' selected="selected"';?>><?php echo $text_yes; ?></option>
                            <option value="0"<?php if($sellya_button_font_uppercase == '0') echo ' selected="selected"';?>><?php echo $text_no; ?></option>
			            </select>
                        </td>
					</tr>                   
                    
        </table> 
        
        <table class="form">    
                                            
					<tr>
						<td><?php echo $entry_search_font; ?></td>
						<td>                        
                        <select name="sellya_search_font">
                        <?php foreach ($googlefonts as $vlfont => $crfont) { ?>
                        <?php ($vlfont == $this->config->get('sellya_search_font'))?$cf='selected':$cf=''; ?>
                           <option value="<?php echo $vlfont; ?>" <?php echo $cf; ?>> <?php echo $crfont; ?> </option>	
                        <?php } ?>                            
                        </select>
                        &nbsp;&nbsp;&nbsp;&nbsp;
                        <?php echo $text_weight; ?>&nbsp;&nbsp;
                       <select name="sellya_search_font_weight">
                           <option value="normal"<?php if($sellya_search_font_weight == 'normal') echo ' selected="selected"';?>><?php echo $text_normal; ?></option>
                           <option value="bold"<?php if($sellya_search_font_weight == 'bold') echo ' selected="selected"';?>><?php echo $text_bold; ?></option>                         
                        </select>   
                        &nbsp;&nbsp;&nbsp;&nbsp;
                        <?php echo $text_size; ?>&nbsp;&nbsp; 
                        <select name="sellya_search_font_size">
                           <option value="12"<?php if($sellya_search_font_size == '12') echo ' selected="selected"';?>>12px</option>
                           <option value="13"<?php if($sellya_search_font_size == '13') echo ' selected="selected"';?><?php if($sellya_search_font_size == '') echo ' selected="selected"';?>>13px</option>      
                           <option value="14"<?php if($sellya_search_font_size == '14') echo ' selected="selected"';?>>14px</option>      
                           <option value="15"<?php if($sellya_search_font_size == '15') echo ' selected="selected"';?>>15px</option>      
                           <option value="16"<?php if($sellya_search_font_size == '16') echo ' selected="selected"';?>>16px</option>
                           <option value="17"<?php if($sellya_search_font_size == '17') echo ' selected="selected"';?>>17px</option>      
                           <option value="18"<?php if($sellya_search_font_size == '18') echo ' selected="selected"';?>>18px</option>
                           <option value="19"<?php if($sellya_search_font_size == '19') echo ' selected="selected"';?>>19px</option>      
                           <option value="20"<?php if($sellya_search_font_size == '20') echo ' selected="selected"';?>>20px</option>
                           <option value="22"<?php if($sellya_search_font_size == '22') echo ' selected="selected"';?>>22px</option>      
                           <option value="24"<?php if($sellya_search_font_size == '24') echo ' selected="selected"';?>>24px</option>
                        </select>
                        &nbsp;&nbsp;&nbsp;&nbsp;
                        <?php echo $text_uppercase; ?>&nbsp;&nbsp;
                        <select name="sellya_search_font_uppercase">
                            <option value="1"<?php if($sellya_search_font_uppercase == '1') echo ' selected="selected"';?>><?php echo $text_yes; ?></option>
                            <option value="0"<?php if($sellya_search_font_uppercase == '0') echo ' selected="selected"';?><?php if($sellya_search_font_uppercase == '') echo ' selected="selected"';?>><?php echo $text_no; ?></option>
			            </select>
                        </td>
					</tr>                          
                        </td>
					</tr> 
                    
        </table> 
        
        <table class="form sellya_sep">    
                                               
					<tr>
						<td><?php echo $entry_cart_font; ?></td>
						<td>                        
                        <select name="sellya_cart_font">
                        <?php foreach ($googlefonts as $vlfont => $crfont) { ?>
                        <?php ($vlfont == $this->config->get('sellya_cart_font'))?$cf='selected':$cf=''; ?>
                           <option value="<?php echo $vlfont; ?>" <?php echo $cf; ?>> <?php echo $crfont; ?> </option>	
                        <?php } ?>                            
                        </select>
                        &nbsp;&nbsp;&nbsp;&nbsp;
                        <?php echo $text_weight; ?>&nbsp;&nbsp;
                        <select name="sellya_cart_font_weight">
                           <option value="normal"<?php if($sellya_cart_font_weight == 'normal') echo ' selected="selected"';?>><?php echo $text_normal; ?></option>
                           <option value="bold"<?php if($sellya_cart_font_weight == 'bold') echo ' selected="selected"';?>><?php echo $text_bold; ?></option>                         
                        </select>   
                        &nbsp;&nbsp;&nbsp;&nbsp;
                        <?php echo $text_size; ?>&nbsp;&nbsp; 
                        <select name="sellya_cart_font_size">
                           <option value="12"<?php if($sellya_cart_font_size == '12') echo ' selected="selected"';?>>12px</option>
                           <option value="13"<?php if($sellya_cart_font_size == '13') echo ' selected="selected"';?>>13px</option>      
                           <option value="14"<?php if($sellya_cart_font_size == '14') echo ' selected="selected"';?>>14px</option>      
                           <option value="15"<?php if($sellya_cart_font_size == '15') echo ' selected="selected"';?>>15px</option>      
                           <option value="16"<?php if($sellya_cart_font_size == '16') echo ' selected="selected"';?>>16px</option>
                           <option value="17"<?php if($sellya_cart_font_size == '17') echo ' selected="selected"';?>>17px</option>      
                           <option value="18"<?php if($sellya_cart_font_size == '18') echo ' selected="selected"';?>>18px</option>
                           <option value="19"<?php if($sellya_cart_font_size == '19') echo ' selected="selected"';?>>19px</option>      
                           <option value="20"<?php if($sellya_cart_font_size == '20') echo ' selected="selected"';?><?php if($sellya_cart_font_size == '') echo ' selected="selected"';?>>20px</option>
                           <option value="22"<?php if($sellya_cart_font_size == '22') echo ' selected="selected"';?>>22px</option>      
                           <option value="24"<?php if($sellya_cart_font_size == '24') echo ' selected="selected"';?>>24px</option>                           
                        </select> 
                        &nbsp;&nbsp;&nbsp;&nbsp;
                        <?php echo $text_uppercase; ?>&nbsp;&nbsp;
                        <select name="sellya_cart_font_uppercase">
                            <option value="1"<?php if($sellya_cart_font_uppercase == '1') echo ' selected="selected"';?>><?php echo $text_yes; ?></option>
                            <option value="0"<?php if($sellya_cart_font_uppercase == '0') echo ' selected="selected"';?><?php if($sellya_cart_font_uppercase == '') echo ' selected="selected"';?>><?php echo $text_no; ?></option>
			            </select>
                        </td>
					</tr>  
                                                                                                                                                          
        </table>           
        
        <table class="form">    
                                               
					<tr>
						<td><?php echo $entry_main_menu_font; ?></td>
						<td>                        
                        <select name="sellya_main_menu_font">
                        <?php foreach ($googlefonts as $vlfont => $crfont) { ?>
                        <?php ($vlfont == $this->config->get('sellya_main_menu_font'))?$cf='selected':$cf=''; ?>
                           <option value="<?php echo $vlfont; ?>" <?php echo $cf; ?>> <?php echo $crfont; ?> </option>	
                        <?php } ?>                            
                        </select>
                        &nbsp;&nbsp;&nbsp;&nbsp;
                        <?php echo $text_weight; ?>&nbsp;&nbsp;
                       <select name="sellya_mm_font_weight">
                           <option value="normal"<?php if($sellya_mm_font_weight == 'normal') echo ' selected="selected"';?>><?php echo $text_normal; ?></option>
                           <option value="bold"<?php if($sellya_mm_font_weight == 'bold') echo ' selected="selected"';?>><?php echo $text_bold; ?></option>                         
                        </select>   
                        &nbsp;&nbsp;&nbsp;&nbsp;
                        <?php echo $text_size; ?>&nbsp;&nbsp; 
                        <select name="sellya_mm_font_size">
                           <option value="12"<?php if($sellya_mm_font_size == '12') echo ' selected="selected"';?>>12px</option>
                           <option value="13"<?php if($sellya_mm_font_size == '13') echo ' selected="selected"';?>>13px</option>      
                           <option value="14"<?php if($sellya_mm_font_size == '14') echo ' selected="selected"';?>>14px</option>      
                           <option value="15"<?php if($sellya_mm_font_size == '15') echo ' selected="selected"';?><?php if($sellya_mm_font_size == '') echo ' selected="selected"';?>>15px</option>      
                           <option value="16"<?php if($sellya_mm_font_size == '16') echo ' selected="selected"';?>>16px</option>
                           <option value="17"<?php if($sellya_mm_font_size == '17') echo ' selected="selected"';?>>17px</option>      
                           <option value="18"<?php if($sellya_mm_font_size == '18') echo ' selected="selected"';?>>18px</option>
                           <option value="19"<?php if($sellya_mm_font_size == '19') echo ' selected="selected"';?>>19px</option>      
                           <option value="20"<?php if($sellya_mm_font_size == '20') echo ' selected="selected"';?>>20px</option>
                           <option value="22"<?php if($sellya_mm_font_size == '22') echo ' selected="selected"';?>>22px</option>      
                           <option value="24"<?php if($sellya_mm_font_size == '24') echo ' selected="selected"';?>>24px</option>
                        </select>
                        &nbsp;&nbsp;&nbsp;&nbsp;
                        <?php echo $text_uppercase; ?>&nbsp;&nbsp;

                        <select name="sellya_mm_font_uppercase">
                            <option value="1"<?php if($sellya_mm_font_uppercase == '1') echo ' selected="selected"';?><?php if($sellya_mm_font_uppercase == '') echo ' selected="selected"';?>><?php echo $text_yes; ?></option>
                            <option value="0"<?php if($sellya_mm_font_uppercase == '0') echo ' selected="selected"';?>><?php echo $text_no; ?></option>
			            </select>
                        </td>
					</tr>  
                                                                                                                                                          
        </table>   
       
        <table class="form sellya_sep">    
                                            
					<tr>
						<td><?php echo $entry_product_name_font_weight; ?></td>
						<td>                        
                        <select name="sellya_product_name_font_weight">
                           <option value="normal"<?php if($sellya_product_name_font_weight == 'normal') echo ' selected="selected"';?>><?php echo $text_normal; ?></option>
                           <option value="bold"<?php if($sellya_product_name_font_weight == 'bold') echo ' selected="selected"';?><?php if($sellya_product_name_font_weight == '') echo ' selected="selected"';?>><?php echo $text_bold; ?></option>                         
                        </select>
                        </td>
					</tr>                    
                    
        </table>                                     

        </div>               

        
        <div id="tab-footer">
           <div id="footer_settings_tabs" class="vtabs">
             <a href="#tab-footer-contacts"><?php echo $entry_contacts; ?></a>      
             <a href="#tab-footer-twitter-block"><?php echo $entry_twitter_block; ?></a>
             <a href="#tab-footer-custom"><?php echo $entry_custom; ?></a>
             <a href="#tab-footer-information-block"><?php echo $entry_information_block; ?></a>                                                     
             <a href="#tab-footer-payment-images"><?php echo $entry_payment_block; ?></a>
             <a href="#tab-footer-powered"><?php echo $entry_powered; ?></a>             
             <a href="#tab-footer-follow-us"><?php echo $entry_follow_us; ?></a>
             <a href="#tab-footer-info"><?php echo $entry_about; ?></a>                                                
           </div>
        
        <div id="tab-footer-contacts" class="vtabs-content">
        <table class="form">

					<tr>
						<td><?php echo $entry_contacts_status; ?></td>
						<td colspan="2">
                        <select name="sellya_contacts_status">
                            <option value="1"<?php if($sellya_contacts_status == '1') echo ' selected="selected"';?>><?php echo $text_yes; ?></option>
                            <option value="0"<?php if($sellya_contacts_status == '0') echo ' selected="selected"';?><?php if($sellya_contacts_status == '') echo ' selected="selected"';?>><?php echo $text_no; ?></option>
			            </select>
                        </td>
					</tr>
					<tr>
						<td><?php echo $entry_contacts_title; ?></td>
						<td colspan="2"><input type="text" name="sellya_contacts_title" value="<?php echo $sellya_contacts_title; ?>" /></td>
					</tr>                      
					<tr>
						<td><?php echo $entry_contacts_mphone; ?></td>
						<td width="130"><input type="text" name="sellya_contact_mphone1" value="<?php echo $sellya_contact_mphone1; ?>" /></td>
                        <td><input type="text" name="sellya_contact_mphone2" value="<?php echo $sellya_contact_mphone2; ?>" /></td>
					</tr>
					<tr>
						<td><?php echo $entry_contacts_sphone; ?></td>
						<td><input type="text" name="sellya_contact_sphone1" value="<?php echo $sellya_contact_sphone1; ?>" /></td>
                        <td><input type="text" name="sellya_contact_sphone2" value="<?php echo $sellya_contact_sphone2; ?>" /></td>
					</tr>        
					<tr>
						<td><?php echo $entry_contacts_fax; ?></td>
						<td><input type="text" name="sellya_contact_fax1" value="<?php echo $sellya_contact_fax1; ?>" /></td>
                        <td><input type="text" name="sellya_contact_fax2" value="<?php echo $sellya_contact_fax2; ?>" /></td>
					</tr>
					<tr>
						<td><?php echo $entry_contacts_email; ?></td>
						<td><input type="text" name="sellya_contact_email1" value="<?php echo $sellya_contact_email1; ?>" /></td>
                        <td><input type="text" name="sellya_contact_email2" value="<?php echo $sellya_contact_email2; ?>" /></td>
					</tr>  
					<tr>
						<td><?php echo $entry_contacts_skype; ?></td>
						<td><input type="text" name="sellya_contact_skype1" value="<?php echo $sellya_contact_skype1; ?>" /></td>
                        <td><input type="text" name="sellya_contact_skype2" value="<?php echo $sellya_contact_skype2; ?>" /></td>
					</tr>
					<tr>
						<td><?php echo $entry_contacts_location; ?></td>
						<td><input type="text" name="sellya_contact_location1" value="<?php echo $sellya_contact_location1; ?>" /></td>
                        <td><input type="text" name="sellya_contact_location2" value="<?php echo $sellya_contact_location2; ?>" /></td>
					</tr>   
					<tr>
						<td><?php echo $entry_contacts_hours; ?></td>
						<td colspan="2"><textarea name="sellya_contact_hours" rows="5" cols="30" /><?php echo $sellya_contact_hours; ?></textarea></td>
					</tr>                                                                                
   
		 </table> 
         </div>
                        
        <div id="tab-footer-twitter-block" class="vtabs-content">    
        <table class="form">

					<tr>
						<td><?php echo $entry_twitter_block_status; ?></td>
						<td colspan="2">
                        <select name="sellya_twitter_block_status">
                            <option value="1"<?php if($sellya_twitter_block_status == '1') echo ' selected="selected"';?>><?php echo $text_yes; ?></option>
                            <option value="0"<?php if($sellya_twitter_block_status == '0') echo ' selected="selected"';?><?php if($sellya_twitter_block_status == '') echo ' selected="selected"';?>><?php echo $text_no; ?></option>
			            </select>
                        </td>
					</tr>
					<tr>
						<td><?php echo $text_title; ?></td>
						<td colspan="2"><input type="text" name="sellya_twitter_block_title" value="<?php echo $sellya_twitter_block_title; ?>" /></td>
					</tr>                          
					<tr>
						<td><?php echo $entry_twitter_block_user; ?></td>
						<td width="170"><input type="text" name="sellya_twitter_block_user" value="<?php echo $sellya_twitter_block_user; ?>" /></td>
                        <td><?php echo $entry_twitter_block_tweets; ?>&nbsp;&nbsp;
                        <select name="sellya_twitter_block_tweets">
                           <option value="1"<?php if($sellya_twitter_block_tweets == '1') echo ' selected="selected"';?>>1</option>
                           <option value="2"<?php if($sellya_twitter_block_tweets == '2') echo ' selected="selected"';?>>2</option>
                           <option value="3"<?php if($sellya_twitter_block_tweets == '3') echo ' selected="selected"';?><?php if($sellya_twitter_block_tweets == '') echo ' selected="selected"';?>>3</option>
                        </select>
                        </td>
					</tr>                 

		 </table>  
         </div>
         
        <div id="tab-footer-custom" class="vtabs-content">
        <table class="form">

					<tr>
						<td><?php echo $entry_custom_status; ?></td>
						<td>
                        <select name="sellya_custom_status">
                            <option value="1"<?php if($sellya_custom_status == '1') echo ' selected="selected"';?>><?php echo $text_yes; ?></option>
                            <option value="0"<?php if($sellya_custom_status == '0') echo ' selected="selected"';?><?php if($sellya_custom_status == '') echo ' selected="selected"';?>><?php echo $text_no; ?></option>
			            </select>
                        </td>
					</tr>
					<tr>
						<td><?php echo $entry_custom_title; ?></td>
						<td><input type="text" name="sellya_custom_title" value="<?php echo $sellya_custom_title; ?>" /></td>
					</tr>                      
					<tr>
						<td><?php echo $entry_custom_content; ?></td>
						<td><textarea name="sellya_custom_content" id="sellya_custom"><?php echo $sellya_custom_content; ?></textarea></td>
					</tr>                             

		 </table>  
         </div>       
         
        <div id="tab-footer-information-block" class="vtabs-content">   
        <table class="form">

					<tr>
						<td><?php echo $entry_information_block_status; ?></td>
						<td>
                        <select name="sellya_information_block_status">
                            <option value="1"<?php if($sellya_information_block_status == '1') echo ' selected="selected"';?><?php if($sellya_information_block_status == '') echo ' selected="selected"';?>><?php echo $text_yes; ?></option>
                            <option value="0"<?php if($sellya_information_block_status == '0') echo ' selected="selected"';?>><?php echo $text_no; ?></option>
			            </select>
                        </td>
					</tr>                 

		 </table>
         </div>                                                      
         
        <div id="tab-footer-payment-images" class="vtabs-content">          
        <table class="form">
        
					<tr>
						<td><?php echo $entry_payment_block_status; ?></td>
						<td colspan="3">
                        <select name="sellya_payment_block_status">
                            <option value="1"<?php if($sellya_payment_block_status == '1') echo ' selected="selected"';?>><?php echo $text_yes; ?></option>
                            <option value="0"<?php if($sellya_payment_block_status == '0') echo ' selected="selected"';?><?php if($sellya_payment_block_status == '') echo ' selected="selected"';?>><?php echo $text_no; ?></option>
			            </select>
                        </td>
					</tr>     
				    <tr>
					    <td><?php echo $entry_payment_block_custom; ?></td>
						<td width="130">
                        <div style="margin-top:6px; float:left"><label class="s_checkbox">
                        <input type="checkbox" value="1" name="sellya_payment_block_custom_status"<?php if($sellya_payment_block_custom_status == '1') echo ' checked="checked"';?> /> 
                        Show</label>&nbsp;&nbsp;&nbsp;&nbsp;</div>
                        </td>                        
					    <td width="150"><input type="hidden" name="sellya_payment_block_custom" value="<?php echo $sellya_payment_block_custom; ?>" id="sellya_payment_block_custom" />
						<img src="<?php echo $sellya_payment_block_custom_thumb; ?>" id="sellya_payment_block_custom_thumb" />
						<br /><a onclick="image_upload('sellya_payment_block_custom', 'sellya_payment_block_custom_thumb');"><?php echo $text_select; ?></a>
                        &nbsp;&nbsp;|&nbsp;&nbsp;<a onclick="$('#sellya_payment_block_custom_thumb').attr('src', '<?php echo $no_image; ?>'); $('#sellya_payment_block_custom').attr('value', '');">
                        <?php echo $text_clear; ?></a>
					    </td>
						<td>
                        <?php echo $entry_payment_url; ?>&nbsp;&nbsp;&nbsp;<input type="text" name="sellya_payment_block_custom_url" value="<?php echo $sellya_payment_block_custom_url; ?>" />
                        </td>                          
				    </tr>
                          
		 </table>      
        
        <table class="form sellya_sep">
                                             
					<tr>
						<td colspan="4"><div><b><?php echo $entry_sellya_payment_images; ?></b></div></td>
					</tr>                                              
					<tr>
						<td><?php echo $entry_payment_paypal; ?></td>
						<td width="130">
                        <div style="margin-top:6px; float:left"><label class="s_checkbox">
                        <input type="checkbox" value="1" name="sellya_payment_paypal"<?php if($sellya_payment_paypal == '1') echo ' checked="checked"';?> /> Show</label>&nbsp;&nbsp;&nbsp;&nbsp;</div>
                        <div style="margin-top:0px;"><img src="<?php echo HTTP_CATALOG; ?>catalog/view/theme/sellya/image/payment/payment_image_paypal.png" border="0" alt="PayPal" title="PayPal"></div>
                        </td>
						<td colspan="2">
                        <?php echo $entry_payment_url; ?>&nbsp;&nbsp;&nbsp;<input type="text" name="sellya_payment_paypal_url" value="<?php echo $sellya_payment_paypal_url; ?>" />
                        </td>                        
					</tr>

					<tr>
						<td><?php echo $entry_payment_visa; ?></td>
						<td width="130">
                        <div style="margin-top:6px; float:left"><label class="s_checkbox">
                        <input type="checkbox" value="1" name="sellya_payment_visa"<?php if($sellya_payment_visa == '1') echo ' checked="checked"';?> /> Show</label>&nbsp;&nbsp;&nbsp;&nbsp;</div>
                        <div style="margin-top:0px;"><img src="<?php echo HTTP_CATALOG; ?>catalog/view/theme/sellya/image/payment/payment_image_visa.png" border="0" alt="Visa" title="Visa"></div>
                        </td>
						<td colspan="2">
                        <?php echo $entry_payment_url; ?>&nbsp;&nbsp;&nbsp;<input type="text" name="sellya_payment_visa_url" value="<?php echo $sellya_payment_visa_url; ?>" />
                        </td>                        
					</tr>  
                    
					<tr>
						<td><?php echo $entry_payment_mastercard; ?></td>
						<td width="130">
                        <div style="margin-top:6px; float:left"><label class="s_checkbox">
                        <input type="checkbox" value="1" name="sellya_payment_mastercard"<?php if($sellya_payment_mastercard == '1') echo ' checked="checked"';?> /> Show</label>&nbsp;&nbsp;&nbsp;&nbsp;</div>
                        <div style="margin-top:0px;"><img src="<?php echo HTTP_CATALOG; ?>catalog/view/theme/sellya/image/payment/payment_image_mastercard.png" border="0" alt="MasterCard" title="MasterCard"></div>
                        </td>
						<td colspan="2">
                        <?php echo $entry_payment_url; ?>&nbsp;&nbsp;&nbsp;<input type="text" name="sellya_payment_mastercard_url" value="<?php echo $sellya_payment_mastercard_url; ?>" />
                        </td>                        
					</tr>
                    
					<tr>
						<td><?php echo $entry_payment_maestro; ?></td>
						<td width="130">
                        <div style="margin-top:6px; float:left"><label class="s_checkbox">
                        <input type="checkbox" value="1" name="sellya_payment_maestro"<?php if($sellya_payment_maestro == '1') echo ' checked="checked"';?> /> Show</label>&nbsp;&nbsp;&nbsp;&nbsp;</div>
                        <div style="margin-top:0px;"><img src="<?php echo HTTP_CATALOG; ?>catalog/view/theme/sellya/image/payment/payment_image_maestro.png" border="0" alt="Maestro" title="Maestro"></div>
                        </td>
						<td colspan="2">
                        <?php echo $entry_payment_url; ?>&nbsp;&nbsp;&nbsp;<input type="text" name="sellya_payment_maestro_url" value="<?php echo $sellya_payment_maestro_url; ?>" />
                        </td>                        
					</tr>
                   
					<tr>
						<td><?php echo $entry_payment_discover; ?></td>
						<td width="130">
                        <div style="margin-top:6px; float:left"><label class="s_checkbox">
                        <input type="checkbox" value="1" name="sellya_payment_discover"<?php if($sellya_payment_discover == '1') echo ' checked="checked"';?> /> Show</label>&nbsp;&nbsp;&nbsp;&nbsp;</div>
                        <div style="margin-top:0px;"><img src="<?php echo HTTP_CATALOG; ?>catalog/view/theme/sellya/image/payment/payment_image_discover.png" border="0" alt="Discover" title="Discover"></div>
                        </td>
						<td colspan="2">
                        <?php echo $entry_payment_url; ?>&nbsp;&nbsp;&nbsp;<input type="text" name="sellya_payment_discover_url" value="<?php echo $sellya_payment_discover_url; ?>" />
                        </td>                        
					</tr>                                          
                    
					<tr>
						<td><?php echo $entry_payment_moneybookers; ?></td>
						<td width="130">
                        <div style="margin-top:6px; float:left"><label class="s_checkbox">
                        <input type="checkbox" value="1" name="sellya_payment_moneybookers"<?php if($sellya_payment_moneybookers == '1') echo ' checked="checked"';?> /> Show</label>&nbsp;&nbsp;&nbsp;&nbsp;
                        </div>
                        <div style="margin-top:0px;"><img src="<?php echo HTTP_CATALOG; ?>catalog/view/theme/sellya/image/payment/payment_image_moneybookers.png" border="0" alt="Moneybookers" title="Moneybookers"></div>
                        </td>
						<td colspan="2">
                        <?php echo $entry_payment_url; ?>&nbsp;&nbsp;&nbsp;<input type="text" name="sellya_payment_moneybookers_url" value="<?php echo $sellya_payment_moneybookers_url; ?>" />
                        </td>                        
					</tr>   
                    
					<tr>
						<td><?php echo $entry_payment_american_express; ?></td>
						<td width="130">
                        <div style="margin-top:6px; float:left"><label class="s_checkbox">
                        <input type="checkbox" value="1" name="sellya_payment_american_express"<?php if($sellya_payment_american_express == '1') echo ' checked="checked"';?> /> Show</label>&nbsp;&nbsp;&nbsp;&nbsp;</div>
                        <div style="margin-top:0px;"><img src="<?php echo HTTP_CATALOG; ?>catalog/view/theme/sellya/image/payment/payment_image_american_express.png" border="0" alt="American Express" title="American Express"></div>
                        </td>
						<td colspan="2">
                        <?php echo $entry_payment_url; ?>&nbsp;&nbsp;&nbsp;<input type="text" name="sellya_payment_american_express_url" value="<?php echo $sellya_payment_american_express_url; ?>" />
                        </td>                        
					</tr>                                                                                                         

		 </table>
         </div>  
        
        <div id="tab-footer-powered" class="vtabs-content">
        <table class="form">

					<tr>
						<td><?php echo $entry_powered_status; ?></td>
						<td>
                        <select name="sellya_powered_status">
                            <option value="1"<?php if($sellya_powered_status == '1') echo ' selected="selected"';?>><?php echo $text_yes; ?></option>
                            <option value="0"<?php if($sellya_powered_status == '0') echo ' selected="selected"';?><?php if($sellya_powered_status == '') echo ' selected="selected"';?>><?php echo $text_no; ?></option>
			            </select>
                        </td>
					</tr>
					<tr>
						<td><?php echo $entry_powered_content; ?></td>
						<td><textarea name="sellya_powered_content" id="sellya_powered"><?php echo $sellya_powered_content; ?></textarea></td>
					</tr>                             

		 </table>  
         </div>           
         
        <div id="tab-footer-follow-us" class="vtabs-content">                       
        <table class="form">
        
					<tr>
						<td><?php echo $entry_follow_us_status; ?></td>
						<td>
                        <select name="sellya_follow_us_status">
                            <option value="1"<?php if($sellya_follow_us_status == '1') echo ' selected="selected"';?>><?php echo $text_yes; ?></option>
                            <option value="0"<?php if($sellya_follow_us_status == '0') echo ' selected="selected"';?><?php if($sellya_follow_us_status == '') echo ' selected="selected"';?>><?php echo $text_no; ?></option>
			            </select>
                        </td>
					</tr>

					<tr>
						<td><div style="height:36px;margin-top:0px;padding:0px;float:left"><img src="<?php echo HTTP_CATALOG; ?>catalog/view/theme/sellya/image/follow_us/f_logo.png"></div>
                        <div style="padding-top:10px;padding-left:45px"><?php echo $entry_facebook; ?></div></td>
						<td>
                        <input type="text" name="sellya_facebook" value="<?php echo $sellya_facebook; ?>" />
                        <a href="http://findmyfacebookid.com/" target="_blank" class="link"><?php echo $text_facebook_find_id; ?></a>
                        </td>
					</tr>
					<tr>
						<td><div style="height:36px;margin-top:0px;padding:0px;float:left"><img src="<?php echo HTTP_CATALOG; ?>catalog/view/theme/sellya/image/follow_us/t_logo.png"></div>
                        <div style="padding-top:10px;padding-left:45px"><?php echo $entry_twitter; ?></div></td>
						<td><input type="text" name="sellya_twitter" value="<?php echo $sellya_twitter; ?>" /></td>
					</tr>          
					<tr>
						<td><div style="height:36px;margin-top:0px;padding:0px;float:left"><img src="<?php echo HTTP_CATALOG; ?>catalog/view/theme/sellya/image/follow_us/g_logo.png"></div>
                        <div style="padding-top:10px;padding-left:45px"><?php echo $entry_googleplus; ?></div></td>
						<td><input type="text" name="sellya_googleplus" value="<?php echo $sellya_googleplus; ?>" /></td>
					</tr>
					<tr>
						<td><div style="height:36px;margin-top:0px;padding:0px;float:left"><img src="<?php echo HTTP_CATALOG; ?>catalog/view/theme/sellya/image/follow_us/r_logo.png"></div>
                        <div style="padding-top:10px;padding-left:45px"><?php echo $entry_rss; ?></div></td>
						<td><input type="text" name="sellya_rss" value="<?php echo $sellya_rss; ?>" /></td>
					</tr> 
					<tr>
						<td><div style="height:36px;margin-top:0px;padding:0px;float:left"><img src="<?php echo HTTP_CATALOG; ?>catalog/view/theme/sellya/image/follow_us/p_logo.png"></div>
                        <div style="padding-top:10px;padding-left:45px"><?php echo $entry_pinterest; ?></div></td>
						<td><input type="text" name="sellya_pinterest" value="<?php echo $sellya_pinterest; ?>" /></td>
					</tr> 
					<tr>
						<td><div style="height:36px;margin-top:0px;padding:0px;float:left"><img src="<?php echo HTTP_CATALOG; ?>catalog/view/theme/sellya/image/follow_us/v_logo.png"></div>
                        <div style="padding-top:10px;padding-left:45px"><?php echo $entry_vimeo; ?></div></td>
						<td><input type="text" name="sellya_vimeo" value="<?php echo $sellya_vimeo; ?>" /></td>
					</tr> 
					<tr>
						<td><div style="height:36px;margin-top:0px;padding:0px;float:left"><img src="<?php echo HTTP_CATALOG; ?>catalog/view/theme/sellya/image/follow_us/fl_logo.png"></div>
                        <div style="padding-top:10px;padding-left:45px"><?php echo $entry_flickr; ?></div></td>
						<td><input type="text" name="sellya_flickr" value="<?php echo $sellya_flickr; ?>" /></td>
					</tr>                     
					<tr>
						<td><div style="height:36px;margin-top:0px;padding:0px;float:left"><img src="<?php echo HTTP_CATALOG; ?>catalog/view/theme/sellya/image/follow_us/l_logo.png"></div>
                        <div style="padding-top:10px;padding-left:45px"><?php echo $entry_linkedin; ?></div></td>
						<td><input type="text" name="sellya_linkedin" value="<?php echo $sellya_linkedin; ?>" /></td>
					</tr> 
					<tr>
						<td><div style="height:36px;margin-top:0px;padding:0px;float:left"><img src="<?php echo HTTP_CATALOG; ?>catalog/view/theme/sellya/image/follow_us/y_logo.png"></div>
                        <div style="padding-top:10px;padding-left:45px"><?php echo $entry_youtube; ?></div></td>
						<td><input type="text" name="sellya_youtube" value="<?php echo $sellya_youtube; ?>" /></td>
					</tr> 
					<tr>
						<td><div style="height:36px;margin-top:0px;padding:0px;float:left"><img src="<?php echo HTTP_CATALOG; ?>catalog/view/theme/sellya/image/follow_us/d_logo.png"></div>
                        <div style="padding-top:10px;padding-left:45px"><?php echo $entry_dribbble; ?></div></td>
						<td><input type="text" name="sellya_dribbble" value="<?php echo $sellya_dribbble; ?>" /></td>
					</tr>                                                                                         

		 </table>
         </div>  
         
        <div id="tab-footer-info" class="vtabs-content">
        <table class="form">

					<tr>
						<td><?php echo $entry_about_status; ?></td>
						<td>
                        <select name="sellya_about_status">
                            <option value="1"<?php if($sellya_about_status == '1') echo ' selected="selected"';?>><?php echo $text_yes; ?></option>
                            <option value="0"<?php if($sellya_about_status == '0') echo ' selected="selected"';?><?php if($sellya_about_status == '') echo ' selected="selected"';?>><?php echo $text_no; ?></option>
			            </select>
                        </td>
					</tr>
					<tr>
						<td><?php echo $entry_about_content; ?></td>
						<td><textarea name="sellya_about_content" id="sellya_about"><?php echo $sellya_about_content; ?></textarea></td>
					</tr>                             

		 </table>  
         </div>                    
        
        </div>    
        
        
        
        
         <div id="tab-widgets">
           <div id="widgets_settings_tabs" class="vtabs">
             <a href="#tab-widgets-facebook"><?php echo $entry_facebook_likebox; ?></a>      
             <a href="#tab-widgets-custom-box"><?php echo $entry_custom_box; ?></a>                                           
           </div>
           
        <div id="tab-widgets-facebook" class="vtabs-content">   
        <table class="form">

					<tr>
						<td><?php echo $entry_facebook_likebox_status; ?></td>
						<td>
                        <select name="sellya_facebook_likebox_status">
                            <option value="1"<?php if($sellya_facebook_likebox_status == '1') echo ' selected="selected"';?>><?php echo $text_yes; ?></option>
                            <option value="0"<?php if($sellya_facebook_likebox_status == '0') echo ' selected="selected"';?><?php if($sellya_facebook_likebox_status == '') echo ' selected="selected"';?>><?php echo $text_no; ?></option>
			            </select>
                        </td>
					</tr>   
					<tr>
						<td><?php echo $entry_facebook_likebox_id; ?></td>
						<td><input type="text" name="sellya_facebook_likebox_id" value="<?php echo $sellya_facebook_likebox_id; ?>" />
                        <a href="http://findmyfacebookid.com/" target="_blank" class="link"><?php echo $text_facebook_find_id; ?></a>
                        </td>
					</tr> 
					<tr>
						<td><?php echo $text_position; ?></td>
						<td>			
                        <select name="sellya_facebook_likebox_position">
                           <option value="right"<?php if($sellya_facebook_likebox_position == 'right') echo ' selected="selected"';?>><?php echo $text_position_r; ?></option>
                           <option value="left"<?php if($sellya_facebook_likebox_position == 'left') echo ' selected="selected"';?>><?php echo $text_position_l; ?></option>                     
                        </select>                        
                        </td>
					</tr>                                    

		 </table>
         </div>
         
        <div id="tab-widgets-custom-box" class="vtabs-content">   
        <table class="form">

					<tr>
						<td><?php echo $entry_custom_box_status; ?></td>
						<td>
                        <select name="sellya_custom_box_status">
                            <option value="1"<?php if($sellya_custom_box_status == '1') echo ' selected="selected"';?>><?php echo $text_yes; ?></option>
                            <option value="0"<?php if($sellya_custom_box_status == '0') echo ' selected="selected"';?><?php if($sellya_custom_box_status == '') echo ' selected="selected"';?>><?php echo $text_no; ?></option>
			            </select>
                        </td>
					</tr>   
					<tr>
						<td><?php echo $text_content; ?></td>
						<td><textarea name="sellya_custom_box_content" id="sellya_custom_box"><?php echo $sellya_custom_box_content; ?></textarea></td>
					</tr> 
					<tr>
						<td><?php echo $text_position; ?></td>
						<td>			
                        <select name="sellya_custom_box_position">
                           <option value="right"<?php if($sellya_custom_box_position == 'right') echo ' selected="selected"';?>><?php echo $text_position_r; ?></option>
                           <option value="left"<?php if($sellya_custom_box_position == 'left') echo ' selected="selected"';?>><?php echo $text_position_l; ?></option>                     
                        </select>                        
                        </td>
					</tr>                                    

		 </table>
         </div>             
        
         </div> 
         
         <div id="tab-css">

 
        <table class="form">

					<tr>
						<td><?php echo $entry_custom_css; ?></td>
						<td colspan="2"><textarea name="sellya_custom_css" rows="35" cols="100" /><?php echo $sellya_custom_css; ?></textarea></td>
					</tr>                                    

		 </table>
             
        
         </div>                 
   
                                             
        
    </form>
	</div>
		
</div>      

<script type="text/javascript" src="view/javascript/ckeditor/ckeditor.js"></script> 
<script type="text/javascript"><!--

CKEDITOR.replace('sellya_menu_custom', {
	filebrowserBrowseUrl: 'index.php?route=common/filemanager&token=<?php echo $token; ?>',
	filebrowserImageBrowseUrl: 'index.php?route=common/filemanager&token=<?php echo $token; ?>',
	filebrowserFlashBrowseUrl: 'index.php?route=common/filemanager&token=<?php echo $token; ?>',
	filebrowserUploadUrl: 'index.php?route=common/filemanager&token=<?php echo $token; ?>',
	filebrowserImageUploadUrl: 'index.php?route=common/filemanager&token=<?php echo $token; ?>',
	filebrowserFlashUploadUrl: 'index.php?route=common/filemanager&token=<?php echo $token; ?>'
});

//--></script> 
<script type="text/javascript"><!--

CKEDITOR.replace('sellya_product_custom', {
	filebrowserBrowseUrl: 'index.php?route=common/filemanager&token=<?php echo $token; ?>',
	filebrowserImageBrowseUrl: 'index.php?route=common/filemanager&token=<?php echo $token; ?>',
	filebrowserFlashBrowseUrl: 'index.php?route=common/filemanager&token=<?php echo $token; ?>',
	filebrowserUploadUrl: 'index.php?route=common/filemanager&token=<?php echo $token; ?>',
	filebrowserImageUploadUrl: 'index.php?route=common/filemanager&token=<?php echo $token; ?>',
	filebrowserFlashUploadUrl: 'index.php?route=common/filemanager&token=<?php echo $token; ?>'
});

//--></script> 
<script type="text/javascript"><!--

CKEDITOR.replace('sellya_product_custom_tab', {
	filebrowserBrowseUrl: 'index.php?route=common/filemanager&token=<?php echo $token; ?>',
	filebrowserImageBrowseUrl: 'index.php?route=common/filemanager&token=<?php echo $token; ?>',
	filebrowserFlashBrowseUrl: 'index.php?route=common/filemanager&token=<?php echo $token; ?>',
	filebrowserUploadUrl: 'index.php?route=common/filemanager&token=<?php echo $token; ?>',
	filebrowserImageUploadUrl: 'index.php?route=common/filemanager&token=<?php echo $token; ?>',
	filebrowserFlashUploadUrl: 'index.php?route=common/filemanager&token=<?php echo $token; ?>'
});

//--></script> 
<script type="text/javascript"><!--

CKEDITOR.replace('sellya_about', {
	filebrowserBrowseUrl: 'index.php?route=common/filemanager&token=<?php echo $token; ?>',
	filebrowserImageBrowseUrl: 'index.php?route=common/filemanager&token=<?php echo $token; ?>',
	filebrowserFlashBrowseUrl: 'index.php?route=common/filemanager&token=<?php echo $token; ?>',
	filebrowserUploadUrl: 'index.php?route=common/filemanager&token=<?php echo $token; ?>',
	filebrowserImageUploadUrl: 'index.php?route=common/filemanager&token=<?php echo $token; ?>',
	filebrowserFlashUploadUrl: 'index.php?route=common/filemanager&token=<?php echo $token; ?>'
});

//--></script> 
<script type="text/javascript"><!--

CKEDITOR.replace('sellya_custom', {
	filebrowserBrowseUrl: 'index.php?route=common/filemanager&token=<?php echo $token; ?>',
	filebrowserImageBrowseUrl: 'index.php?route=common/filemanager&token=<?php echo $token; ?>',
	filebrowserFlashBrowseUrl: 'index.php?route=common/filemanager&token=<?php echo $token; ?>',
	filebrowserUploadUrl: 'index.php?route=common/filemanager&token=<?php echo $token; ?>',
	filebrowserImageUploadUrl: 'index.php?route=common/filemanager&token=<?php echo $token; ?>',
	filebrowserFlashUploadUrl: 'index.php?route=common/filemanager&token=<?php echo $token; ?>'
});

//--></script>
<script type="text/javascript"><!--

CKEDITOR.replace('sellya_powered', {
	filebrowserBrowseUrl: 'index.php?route=common/filemanager&token=<?php echo $token; ?>',
	filebrowserImageBrowseUrl: 'index.php?route=common/filemanager&token=<?php echo $token; ?>',
	filebrowserFlashBrowseUrl: 'index.php?route=common/filemanager&token=<?php echo $token; ?>',
	filebrowserUploadUrl: 'index.php?route=common/filemanager&token=<?php echo $token; ?>',
	filebrowserImageUploadUrl: 'index.php?route=common/filemanager&token=<?php echo $token; ?>',
	filebrowserFlashUploadUrl: 'index.php?route=common/filemanager&token=<?php echo $token; ?>'
});

//--></script> 
<script type="text/javascript"><!--

CKEDITOR.replace('sellya_custom_box', {
	filebrowserBrowseUrl: 'index.php?route=common/filemanager&token=<?php echo $token; ?>',
	filebrowserImageBrowseUrl: 'index.php?route=common/filemanager&token=<?php echo $token; ?>',
	filebrowserFlashBrowseUrl: 'index.php?route=common/filemanager&token=<?php echo $token; ?>',
	filebrowserUploadUrl: 'index.php?route=common/filemanager&token=<?php echo $token; ?>',
	filebrowserImageUploadUrl: 'index.php?route=common/filemanager&token=<?php echo $token; ?>',
	filebrowserFlashUploadUrl: 'index.php?route=common/filemanager&token=<?php echo $token; ?>'
});

//--></script>
<script type="text/javascript"><!--

CKEDITOR.replace('sellya_contact_custom', {
	filebrowserBrowseUrl: 'index.php?route=common/filemanager&token=<?php echo $token; ?>',
	filebrowserImageBrowseUrl: 'index.php?route=common/filemanager&token=<?php echo $token; ?>',
	filebrowserFlashBrowseUrl: 'index.php?route=common/filemanager&token=<?php echo $token; ?>',
	filebrowserUploadUrl: 'index.php?route=common/filemanager&token=<?php echo $token; ?>',
	filebrowserImageUploadUrl: 'index.php?route=common/filemanager&token=<?php echo $token; ?>',
	filebrowserFlashUploadUrl: 'index.php?route=common/filemanager&token=<?php echo $token; ?>'
});

//--></script>  

<script type="text/javascript"><!--
function image_upload(field, thumb) {
	$('#dialog').remove();
	
	$('#content').prepend('<div id="dialog" style="padding: 3px 0px 0px 0px;"><iframe src="index.php?route=common/filemanager&token=<?php echo $token; ?>&field=' + encodeURIComponent(field) + '" style="padding:0; margin: 0; display: block; width: 100%; height: 100%;" frameborder="no" scrolling="auto"></iframe></div>');
	
	$('#dialog').dialog({
		title: '<?php echo $text_image_manager; ?>',
		close: function (event, ui) {
			if ($('#' + field).attr('value')) {
				$.ajax({
					url: 'index.php?route=common/filemanager/image&token=<?php echo $token; ?>&image=' + encodeURIComponent($('#' + field).val()),
					dataType: 'text',
					success: function(data) {
						$('#' + thumb).replaceWith('<img src="' + data + '" alt="" id="' + thumb + '" />');
					}
				});
			}
		},	
		bgiframe: false,
		width: 800,
		height: 400,
		resizable: false,
		modal: false
	});
};
//--></script>  
<script type="text/javascript">
	$('#settings_tabs a').tabs();  
	$('#store_features_tabs a').tabs();	
	$('#colors_styles_settings_tabs a').tabs();
	$('#background_images_settings_tabs a').tabs();
	$('#fonts_settings_tabs a').tabs();	
	$('#footer_settings_tabs a').tabs();
	$('#widgets_settings_tabs a').tabs();	
</script>

<script type="text/javascript" src="view/javascript/jscolor/jscolor.js"></script>
<script type="text/javascript" src="view/javascript/poshytip/jquery.poshytip.js"></script>
<link rel="stylesheet" type="text/css" href="view/javascript/poshytip/tip-twitter/tip-twitter.css" />
	<script type="text/javascript">
		//<![CDATA[
		$(function(){

			$('#sellya-help-1').poshytip({
				content: '<img src="view/image/help/content_column_1.png">',
			});
			$('#sellya-help-2').poshytip({
				content: '<img src="view/image/help/left_right_column_1.png">',
			});	
			$('#sellya-help-3').poshytip({
				content: '<img src="view/image/help/left_right_column_heading_1.png">',
			});	
			$('#sellya-help-4').poshytip({
				content: '<img src="view/image/help/left_right_column_box_1.png">',
			});	
			$('#sellya-help-5').poshytip({
				content: '<img src="view/image/help/main_column_1.png">',
			});
			$('#sellya-help-6').poshytip({
				content: '<img src="view/image/help/button_1.png">',
			});		
			$('#sellya-help-7').poshytip({
				content: '<img src="view/image/help/button_1.png">',
			});
			$('#sellya-help-8').poshytip({
				content: '<img src="view/image/help/product_box_1.png">',
			});	
			$('#sellya-help-9').poshytip({
				content: '<img src="view/image/help/product_page_buy_section_1.png">',
			});		
			$('#sellya-help-10').poshytip({
				content: '<img src="view/image/help/product_page_tabs_1.png">',
			});
			$('#sellya-help-11').poshytip({
				content: '<img src="view/image/help/home_page_product_slider_1.png">',
			});	
			$('#sellya-help-12').poshytip({
				content: '<img src="view/image/help/bottom_area_1_1.png">',
			});	
			$('#sellya-help-13').poshytip({
				content: '<img src="view/image/help/bottom_area_2_1.png">',
			});	
			$('#sellya-help-14').poshytip({
				content: '<img src="view/image/help/bottom_area_3_1.png">',
			});	
			$('#sellya-help-15').poshytip({
				content: '<img src="view/image/help/bottom_area_4_1.png">',
			});
			$('#sellya-help-16').poshytip({
				content: '<img src="view/image/help/background_body_1.png">',
			});
			$('#sellya-help-17').poshytip({
				content: '<img src="view/image/help/main_column_1.png">',
			});
			$('#sellya-help-18').poshytip({
				content: '<img src="view/image/help/background_top_area_1.png">',
			});			
			$('#sellya-help-19').poshytip({
				content: '<img src="view/image/help/background_main_menu_1.png">',
			});			
			$('#sellya-help-20').poshytip({
				content: '<img src="view/image/help/bottom_area_1_1.png">',
			});	
			$('#sellya-help-21').poshytip({
				content: '<img src="view/image/help/bottom_area_2_1.png">',
			});	
			$('#sellya-help-22').poshytip({
				content: '<img src="view/image/help/bottom_area_3_1.png">',
			});	
			$('#sellya-help-23').poshytip({
				content: '<img src="view/image/help/bottom_area_4_1.png">',
			});	
			$('#sellya-help-24').poshytip({
				content: '<img src="view/image/help/home_page_category_wall_1.png">',
			});	
			$('#sellya-help-25').poshytip({
				content: 'Before you turn on this option, add at least one manufacturer.<br><img src="view/image/help/home_page_brands_wall_1.png">',
			});	
			$('#sellya-help-26').poshytip({
				content: '<img src="view/image/help/home_page_banner_slider_1.png">',
			});	
			$('#sellya-help-27').poshytip({
				content: '<img src="view/image/help/product_page_related_1.png">',
			});	
			$('#sellya-help-28').poshytip({
				content: '<img src="view/image/help/product_page_custom_block_1.png">',
			});		
			$('#sellya-help-29').poshytip({
				content: '<img src="view/image/help/product_page_custom_tab_1.png">',
			});	
			$('#sellya-help-30').poshytip({
				content: '<img src="view/image/help/contact_page_custom_block_1.png">',
			});	
			$('#sellya-help-31').poshytip({
				content: '<img src="view/image/help/category_page_subcategories_1.png">',
			});
			$('#sellya-help-32').poshytip({
				content: 'Using this option, you have the ability to customize the default skin only.<br><a href="http://321cart.com/sellya/documentation/index.html#!/extra_skins" target="_blank" style="color:#66BCDA">How to customize the extra skins?</a>',
			});
			$('#sellya-help-33').poshytip({
				content: 'If you need help, please contact us. <br>We provide support only through our Sellya Support System.',
			});
			$('#sellya-help-34').poshytip({
				content: 'Before you turn on this option, add at least one manufacturer.',
			});				

		});
		//]]>
	</script>