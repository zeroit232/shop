# opencart theme: Optronics

# clean up
rm -rf Optronics-full-package Optronics-full-package.zip Optronics-theme-package Optronics-theme-package.zip

# export code from local repository
svn --ignore-externals export ../ Optronics-full-package/ --username lam.le

# copy database files
cat Optronics-full-package/db/1_schema.sql Optronics-full-package/db/2_init_data.sql Optronics-full-package/db/3_update_config.sql > sample-database.sql

# create Optronics-full-package.zip
zip -rq Optronics-full-package.zip Optronics-full-package/ sample-database.sql
echo "Created Optronics-full-package.zip"

# create Optronics-theme-package.zip
mkdir Optronics-theme-package \
	Optronics-theme-package/upload \
	Optronics-theme-package/extensions \
	Optronics-theme-package/upload/admin \
	Optronics-theme-package/upload/admin/controller \
	Optronics-theme-package/upload/admin/controller/module \
	Optronics-theme-package/upload/admin/view \
	Optronics-theme-package/upload/admin/view/image \
	Optronics-theme-package/upload/admin/view/template \
	Optronics-theme-package/upload/admin/view/template/module \
	Optronics-theme-package/upload/admin/language \
	Optronics-theme-package/upload/admin/language/english \
	Optronics-theme-package/upload/admin/language/english/module \
	Optronics-theme-package/upload/catalog \
	Optronics-theme-package/upload/catalog/controller \
	Optronics-theme-package/upload/catalog/controller/module \
	Optronics-theme-package/upload/catalog/language \
	Optronics-theme-package/upload/catalog/language/english \
	Optronics-theme-package/upload/catalog/language/english/module \
	Optronics-theme-package/upload/catalog/model \
	Optronics-theme-package/upload/catalog/model/catalog \
	Optronics-theme-package/upload/catalog/view \
	Optronics-theme-package/upload/catalog/view/theme \
	Optronics-theme-package/upload/catalog/view/javascript \
	Optronics-theme-package/upload/catalog/view/javascript/jquery \
	Optronics-theme-package/upload/catalog/view/theme/default \
	Optronics-theme-package/upload/catalog/view/theme/default/template \
	Optronics-theme-package/upload/catalog/view/theme/default/template/module \
	Optronics-theme-package/upload/catalog/view/theme/default/stylesheet \
	Optronics-theme-package/upload/image \
	Optronics-theme-package/upload/image/data \
	Optronics-theme-package/upload/image/templates \
	Optronics-theme-package/upload/vqmod \
	Optronics-theme-package/upload/vqmod/xml

# Optronics-theme-package/upload/admin/controller/module/

cp Optronics-full-package/admin/controller/module/boss_alphabet.php  Optronics-theme-package/upload/admin/controller/module
cp Optronics-full-package/admin/controller/module/boss_homefilter.php  Optronics-theme-package/upload/admin/controller/module
cp Optronics-full-package/admin/controller/module/boss_carousel.php  Optronics-theme-package/upload/admin/controller/module
cp Optronics-full-package/admin/controller/module/boss_homecategory.php  Optronics-theme-package/upload/admin/controller/module
cp Optronics-full-package/admin/controller/module/boss_megamenu.php  Optronics-theme-package/upload/admin/controller/module
cp Optronics-full-package/admin/controller/module/boss_slideshow.php  Optronics-theme-package/upload/admin/controller/module
cp Optronics-full-package/admin/controller/module/boss_staticblock.php  Optronics-theme-package/upload/admin/controller/module
cp Optronics-full-package/admin/controller/module/manufacturer.php  Optronics-theme-package/upload/admin/controller/module
cp Optronics-full-package/admin/controller/module/boss_zoom.php  Optronics-theme-package/upload/admin/controller/module

# Optronics-theme-package/upload/admin/language/english/module
cp Optronics-full-package/admin/language/english/module/boss_alphabet.php  Optronics-theme-package/upload/admin/language/english/module
cp Optronics-full-package/admin/language/english/module/boss_homefilter.php  Optronics-theme-package/upload/admin/language/english/module
cp Optronics-full-package/admin/language/english/module/boss_carousel.php  Optronics-theme-package/upload/admin/language/english/module
cp Optronics-full-package/admin/language/english/module/boss_homecategory.php  Optronics-theme-package/upload/admin/language/english/module
cp Optronics-full-package/admin/language/english/module/boss_megamenu.php  Optronics-theme-package/upload/admin/language/english/module
cp Optronics-full-package/admin/language/english/module/boss_slideshow.php  Optronics-theme-package/upload/admin/language/english/module
cp Optronics-full-package/admin/language/english/module/boss_staticblock.php  Optronics-theme-package/upload/admin/language/english/module
cp Optronics-full-package/admin/language/english/module/manufacturer.php  Optronics-theme-package/upload/admin/language/english/module
cp Optronics-full-package/admin/language/english/module/boss_zoom.php  Optronics-theme-package/upload/admin/language/english/module

# Optronics-theme-package/upload/admin/view/image
cp -r Optronics-full-package/admin/view/image/boss_zoom Optronics-theme-package/upload/admin/view/image
	
# Optronics-theme-package/upload/admin/view/template/module
cp Optronics-full-package/admin/view/template/module/boss_alphabet.tpl  Optronics-theme-package/upload/admin/view/template/module
cp Optronics-full-package/admin/view/template/module/boss_homefilter.tpl  Optronics-theme-package/upload/admin/view/template/module
cp Optronics-full-package/admin/view/template/module/boss_carousel.tpl  Optronics-theme-package/upload/admin/view/template/module
cp Optronics-full-package/admin/view/template/module/boss_homecategory.tpl  Optronics-theme-package/upload/admin/view/template/module
cp Optronics-full-package/admin/view/template/module/boss_megamenu.tpl  Optronics-theme-package/upload/admin/view/template/module
cp Optronics-full-package/admin/view/template/module/boss_slideshow.tpl  Optronics-theme-package/upload/admin/view/template/module
cp Optronics-full-package/admin/view/template/module/boss_staticblock.tpl  Optronics-theme-package/upload/admin/view/template/module
cp Optronics-full-package/admin/view/template/module/manufacturer.tpl  Optronics-theme-package/upload/admin/view/template/module
cp Optronics-full-package/admin/view/template/module/boss_zoom.tpl  Optronics-theme-package/upload/admin/view/template/module

# Optronics-theme-package/upload/catalog/controller
cp -r Optronics-full-package/catalog/controller/bossthemes Optronics-theme-package/upload/catalog/controller

# Optronics-theme-package/upload/catalog/controller/module
cp Optronics-full-package/catalog/controller/module/boss_alphabet.php Optronics-theme-package/upload/catalog/controller/module
cp Optronics-full-package/catalog/controller/module/boss_homefilter.php Optronics-theme-package/upload/catalog/controller/module
cp Optronics-full-package/catalog/controller/module/boss_carousel.php Optronics-theme-package/upload/catalog/controller/module
cp Optronics-full-package/catalog/controller/module/boss_homecategory.php Optronics-theme-package/upload/catalog/controller/module
cp Optronics-full-package/catalog/controller/module/boss_login.php Optronics-theme-package/upload/catalog/controller/module
cp Optronics-full-package/catalog/controller/module/boss_search.php Optronics-theme-package/upload/catalog/controller/module
cp Optronics-full-package/catalog/controller/module/boss_megamenu.php Optronics-theme-package/upload/catalog/controller/module
cp Optronics-full-package/catalog/controller/module/boss_slideshow.php Optronics-theme-package/upload/catalog/controller/module
cp Optronics-full-package/catalog/controller/module/boss_staticblock.php Optronics-theme-package/upload/catalog/controller/module
cp Optronics-full-package/catalog/controller/module/manufacturer.php Optronics-theme-package/upload/catalog/controller/module
cp Optronics-full-package/catalog/controller/module/boss_zoom.php Optronics-theme-package/upload/catalog/controller/module

# Optronics-theme-package/upload/catalog/language/english
cp -r Optronics-full-package/catalog/language/english/bossthemes Optronics-theme-package/upload/catalog/language/english

# Optronics-theme-package/upload/catalog/language/english/module
cp Optronics-full-package/catalog/language/english/module/boss_alphabet.php Optronics-theme-package/upload/catalog/language/english/module
cp Optronics-full-package/catalog/language/english/module/boss_homefilter.php Optronics-theme-package/upload/catalog/language/english/module
cp Optronics-full-package/catalog/language/english/module/boss_login.php Optronics-theme-package/upload/catalog/language/english/module
cp Optronics-full-package/catalog/language/english/module/boss_search.php Optronics-theme-package/upload/catalog/language/english/module
cp Optronics-full-package/catalog/language/english/module/manufacturer.php Optronics-theme-package/upload/catalog/language/english/module

# Optronics-theme-package/upload/catalog/view/javascript
cp -r Optronics-full-package/catalog/view/javascript/bossthemes Optronics-theme-package/upload/catalog/view/javascript

# Optronics-theme-package/upload/catalog/view/javascript/jquery
cp -r Optronics-full-package/catalog/view/javascript/jquery/cloud-zoom Optronics-theme-package/upload/catalog/view/javascript/jquery

# Optronics-theme-package/upload/catalog/view/theme/default/stylesheet
cp Optronics-full-package/catalog/view/theme/default/stylesheet/boss_alphabet.css Optronics-theme-package/upload/catalog/view/theme/default/stylesheet
cp Optronics-full-package/catalog/view/theme/default/stylesheet/boss_carousel.css Optronics-theme-package/upload/catalog/view/theme/default/stylesheet
cp Optronics-full-package/catalog/view/theme/default/stylesheet/boss_homecategory.css Optronics-theme-package/upload/catalog/view/theme/default/stylesheet
cp Optronics-full-package/catalog/view/theme/default/stylesheet/boss_homefilter.css Optronics-theme-package/upload/catalog/view/theme/default/stylesheet
cp Optronics-full-package/catalog/view/theme/default/stylesheet/boss_slideshow.css Optronics-theme-package/upload/catalog/view/theme/default/stylesheet
cp Optronics-full-package/catalog/view/theme/default/stylesheet/cloud-zoom.1.0.3.css Optronics-theme-package/upload/catalog/view/theme/default/stylesheet

# Optronics-theme-package/upload/catalog/view/theme/default/template/
cp -r Optronics-full-package/catalog/view/theme/default/template/bossthemes Optronics-theme-package/upload/catalog/view/theme/default/template

# Optronics-theme-package/upload/catalog/view/theme/default/template/module/
cp Optronics-full-package/catalog/view/theme/default/template/module/boss_alphabet.tpl Optronics-theme-package/upload/catalog/view/theme/default/template/module
cp Optronics-full-package/catalog/view/theme/default/template/module/boss_homefilter.tpl Optronics-theme-package/upload/catalog/view/theme/default/template/module
cp Optronics-full-package/catalog/view/theme/default/template/module/boss_carousel.tpl Optronics-theme-package/upload/catalog/view/theme/default/template/module
cp Optronics-full-package/catalog/view/theme/default/template/module/boss_homecategory.tpl Optronics-theme-package/upload/catalog/view/theme/default/template/module
cp Optronics-full-package/catalog/view/theme/default/template/module/boss_megamenu.tpl Optronics-theme-package/upload/catalog/view/theme/default/template/module
cp Optronics-full-package/catalog/view/theme/default/template/module/boss_search.tpl Optronics-theme-package/upload/catalog/view/theme/default/template/module
cp Optronics-full-package/catalog/view/theme/default/template/module/boss_login.tpl Optronics-theme-package/upload/catalog/view/theme/default/template/module
cp Optronics-full-package/catalog/view/theme/default/template/module/boss_slideshow.tpl Optronics-theme-package/upload/catalog/view/theme/default/template/module
cp Optronics-full-package/catalog/view/theme/default/template/module/boss_staticblock.tpl Optronics-theme-package/upload/catalog/view/theme/default/template/module
cp Optronics-full-package/catalog/view/theme/default/template/module/manufacturer.tpl Optronics-theme-package/upload/catalog/view/theme/default/template/module
cp Optronics-full-package/catalog/view/theme/default/template/module/boss_zoom.tpl Optronics-theme-package/upload/catalog/view/theme/default/template/module

# Optronics-theme-package/upload/catalog/view/theme/Optronics
cp -r Optronics-full-package/catalog/view/theme/bt_optronics Optronics-theme-package/upload/catalog/view/theme
	
# Optronics-theme-package/upload/image
cp -r Optronics-full-package/image/data/bt_optronics Optronics-theme-package/upload/image/data
cp Optronics-full-package/image/templates/bt_optronics.png  Optronics-theme-package/upload/image/templates

# Optronics-theme-package/upload/vqmod/xml
cp Optronics-full-package/vqmod/xml/boss_catalog_controller_common_header.xml Optronics-theme-package/upload/vqmod/xml
cp Optronics-full-package/vqmod/xml/boss_catalog_controller_common_footer.xml Optronics-theme-package/upload/vqmod/xml
cp Optronics-full-package/vqmod/xml/boss_catalog_theme_default_common_header.xml Optronics-theme-package/upload/vqmod/xml

# file install

# create Optronics-theme-package.zip
zip -rq Optronics-theme-package.zip Optronics-theme-package
echo "Created Optronics-theme-package.zip"

#clean up
rm -Rf Optronics-theme-package
rm -Rf Optronics-full-package
rm -Rf sample-database.sql
