##################################################################################
# SoundCloud auf Artikeldetailseite INSTALL - 2016-10-01 - webchills
##################################################################################

ALTER TABLE products ADD products_soundcloud VARCHAR( 15 ) NOT NULL;

INSERT INTO product_type_layout (configuration_title, configuration_key, configuration_value, configuration_description, product_type_id, sort_order, date_added, use_function, set_function, last_modified) VALUES
('Show SoundCloud', 'SHOW_PRODUCT_INFO_SOUNDCLOUD', '1', 'Display SoundCloud Stream on Product Info 0= off 1= on', 1, NULL, NOW(), NULL, 'zen_cfg_select_drop_down(array(array(\'id\'=>\'1\', \'text\'=>\'True\'), array(\'id\'=>\'0\', \'text\'=>\'False\')), ', NOW());

INSERT INTO product_type_layout_language (configuration_title, configuration_key, languages_id, configuration_description, last_modified, date_added) VALUES
('SoundCloud Stream anzeigen', 'SHOW_PRODUCT_INFO_SOUNDCLOUD', 43, 'Soll der SoundCloud Stream falls hinterlegt auf der Produktinfoseite angezeigt werden?<br/> 0= AUS 1= AN', NOW(), NOW());
