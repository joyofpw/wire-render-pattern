-- phpMyAdmin SQL Dump
-- version 4.4.10
-- http://www.phpmyadmin.net
--
-- Servidor: localhost:8889
-- Tiempo de generación: 30-07-2016 a las 13:44:38
-- Versión del servidor: 5.5.42
-- Versión de PHP: 7.0.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `ninjas`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `caches`
--
-- Creación: 20-07-2016 a las 14:01:50
-- Última actualización: 30-07-2016 a las 11:41:57
--

CREATE TABLE `caches` (
  `name` varchar(250) NOT NULL,
  `data` mediumtext NOT NULL,
  `expires` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `caches`
--

INSERT INTO `caches` (`name`, `data`, `expires`) VALUES
('Modules.wire/modules/', 'AdminTheme/AdminThemeDefault/AdminThemeDefault.module\nAdminTheme/AdminThemeReno/AdminThemeReno.module\nFieldtype/FieldtypeCache.module\nFieldtype/FieldtypeCheckbox.module\nFieldtype/FieldtypeComments/CommentFilterAkismet.module\nFieldtype/FieldtypeComments/FieldtypeComments.module\nFieldtype/FieldtypeComments/InputfieldCommentsAdmin.module\nFieldtype/FieldtypeDatetime.module\nFieldtype/FieldtypeEmail.module\nFieldtype/FieldtypeFieldsetClose.module\nFieldtype/FieldtypeFieldsetOpen.module\nFieldtype/FieldtypeFieldsetTabOpen.module\nFieldtype/FieldtypeFile.module\nFieldtype/FieldtypeFloat.module\nFieldtype/FieldtypeImage.module\nFieldtype/FieldtypeInteger.module\nFieldtype/FieldtypeModule.module\nFieldtype/FieldtypeOptions/FieldtypeOptions.module\nFieldtype/FieldtypePage.module\nFieldtype/FieldtypePageTable.module\nFieldtype/FieldtypePageTitle.module\nFieldtype/FieldtypePassword.module\nFieldtype/FieldtypeRepeater/FieldtypeRepeater.module\nFieldtype/FieldtypeRepeater/InputfieldRepeater.module\nFieldtype/FieldtypeSelector.module\nFieldtype/FieldtypeText.module\nFieldtype/FieldtypeTextarea.module\nFieldtype/FieldtypeURL.module\nFileCompilerTags.module\nImageSizerEngineIMagick.module\nInputfield/InputfieldAsmSelect/InputfieldAsmSelect.module\nInputfield/InputfieldButton.module\nInputfield/InputfieldCheckbox.module\nInputfield/InputfieldCheckboxes/InputfieldCheckboxes.module\nInputfield/InputfieldCKEditor/InputfieldCKEditor.module\nInputfield/InputfieldDatetime/InputfieldDatetime.module\nInputfield/InputfieldEmail.module\nInputfield/InputfieldFieldset.module\nInputfield/InputfieldFile/InputfieldFile.module\nInputfield/InputfieldFloat.module\nInputfield/InputfieldForm.module\nInputfield/InputfieldHidden.module\nInputfield/InputfieldIcon/InputfieldIcon.module\nInputfield/InputfieldImage/InputfieldImage.module\nInputfield/InputfieldInteger.module\nInputfield/InputfieldMarkup.module\nInputfield/InputfieldName.module\nInputfield/InputfieldPage/InputfieldPage.module\nInputfield/InputfieldPageAutocomplete/InputfieldPageAutocomplete.module\nInputfield/InputfieldPageListSelect/InputfieldPageListSelect.module\nInputfield/InputfieldPageListSelect/InputfieldPageListSelectMultiple.module\nInputfield/InputfieldPageName/InputfieldPageName.module\nInputfield/InputfieldPageTable/InputfieldPageTable.module\nInputfield/InputfieldPageTitle/InputfieldPageTitle.module\nInputfield/InputfieldPassword/InputfieldPassword.module\nInputfield/InputfieldRadios/InputfieldRadios.module\nInputfield/InputfieldSelect.module\nInputfield/InputfieldSelectMultiple.module\nInputfield/InputfieldSelector/InputfieldSelector.module\nInputfield/InputfieldSubmit/InputfieldSubmit.module\nInputfield/InputfieldText.module\nInputfield/InputfieldTextarea.module\nInputfield/InputfieldURL.module\nJquery/JqueryCore/JqueryCore.module\nJquery/JqueryMagnific/JqueryMagnific.module\nJquery/JqueryTableSorter/JqueryTableSorter.module\nJquery/JqueryUI/JqueryUI.module\nJquery/JqueryWireTabs/JqueryWireTabs.module\nLanguageSupport/FieldtypePageTitleLanguage.module\nLanguageSupport/FieldtypeTextareaLanguage.module\nLanguageSupport/FieldtypeTextLanguage.module\nLanguageSupport/LanguageSupport.module\nLanguageSupport/LanguageSupportFields.module\nLanguageSupport/LanguageSupportPageNames.module\nLanguageSupport/LanguageTabs.module\nLanguageSupport/ProcessLanguage.module\nLanguageSupport/ProcessLanguageTranslator.module\nLazyCron.module\nMarkup/MarkupAdminDataTable/MarkupAdminDataTable.module\nMarkup/MarkupCache.module\nMarkup/MarkupHTMLPurifier/MarkupHTMLPurifier.module\nMarkup/MarkupPageArray.module\nMarkup/MarkupPageFields.module\nMarkup/MarkupPagerNav/MarkupPagerNav.module\nMarkup/MarkupRSS.module\nPage/PageFrontEdit/PageFrontEdit.module\nPagePathHistory.module\nPagePaths.module\nPagePermissions.module\nPageRender.module\nProcess/ProcessCommentsManager/ProcessCommentsManager.module\nProcess/ProcessField/ProcessField.module\nProcess/ProcessForgotPassword.module\nProcess/ProcessHome.module\nProcess/ProcessList.module\nProcess/ProcessLogger/ProcessLogger.module\nProcess/ProcessLogin/ProcessLogin.module\nProcess/ProcessModule/ProcessModule.module\nProcess/ProcessPageAdd/ProcessPageAdd.module\nProcess/ProcessPageClone.module\nProcess/ProcessPageEdit/ProcessPageEdit.module\nProcess/ProcessPageEditImageSelect/ProcessPageEditImageSelect.module\nProcess/ProcessPageEditLink/ProcessPageEditLink.module\nProcess/ProcessPageList/ProcessPageList.module\nProcess/ProcessPageLister/ProcessPageLister.module\nProcess/ProcessPageSearch/ProcessPageSearch.module\nProcess/ProcessPageSort.module\nProcess/ProcessPageTrash.module\nProcess/ProcessPageType/ProcessPageType.module\nProcess/ProcessPageView.module\nProcess/ProcessPermission/ProcessPermission.module\nProcess/ProcessProfile/ProcessProfile.module\nProcess/ProcessRecentPages/ProcessRecentPages.module\nProcess/ProcessRole/ProcessRole.module\nProcess/ProcessTemplate/ProcessTemplate.module\nProcess/ProcessUser/ProcessUser.module\nSession/SessionHandlerDB/ProcessSessionDB.module\nSession/SessionHandlerDB/SessionHandlerDB.module\nSession/SessionLoginThrottle/SessionLoginThrottle.module\nSystem/SystemNotifications/FieldtypeNotifications.module\nSystem/SystemNotifications/SystemNotifications.module\nSystem/SystemUpdater/SystemUpdater.module\nTextformatter/TextformatterEntities.module\nTextformatter/TextformatterMarkdownExtra/TextformatterMarkdownExtra.module\nTextformatter/TextformatterNewlineBR.module\nTextformatter/TextformatterNewlineUL.module\nTextformatter/TextformatterPstripper.module\nTextformatter/TextformatterSmartypants/TextformatterSmartypants.module\nTextformatter/TextformatterStripTags.module', '2010-04-08 03:10:10'),
('ModulesVerbose.info', '{"148":{"summary":"Minimal admin theme that supports all ProcessWire features.","core":true,"versionStr":"0.1.4"},"97":{"summary":"This Fieldtype stores an ON\\/OFF toggle via a single checkbox. The ON value is 1 and OFF value is 0.","core":true,"versionStr":"1.0.1"},"28":{"summary":"Field that stores a date and optionally time","core":true,"versionStr":"1.0.4"},"29":{"summary":"Field that stores an e-mail address","core":true,"versionStr":"1.0.0"},"106":{"summary":"Close a fieldset opened by FieldsetOpen. ","core":true,"versionStr":"1.0.0"},"105":{"summary":"Open a fieldset to group fields. Should be followed by a Fieldset (Close) after one or more fields.","core":true,"versionStr":"1.0.0"},"107":{"summary":"Open a fieldset to group fields. Same as Fieldset (Open) except that it displays in a tab instead.","core":true,"versionStr":"1.0.0"},"6":{"summary":"Field that stores one or more files","core":true,"versionStr":"1.0.4"},"89":{"summary":"Field that stores a floating point (decimal) number","core":true,"versionStr":"1.0.5"},"57":{"summary":"Field that stores one or more GIF, JPG, or PNG images","core":true,"versionStr":"1.0.1"},"84":{"summary":"Field that stores an integer","core":true,"versionStr":"1.0.1"},"27":{"summary":"Field that stores a reference to another module","core":true,"versionStr":"1.0.1"},"4":{"summary":"Field that stores one or more references to ProcessWire pages","core":true,"versionStr":"1.0.3"},"111":{"summary":"Field that stores a page title","core":true,"versionStr":"1.0.0"},"133":{"summary":"Field that stores a hashed and salted password","core":true,"versionStr":"1.0.1"},"3":{"summary":"Field that stores a single line of text","core":true,"versionStr":"1.0.0"},"1":{"summary":"Field that stores multiple lines of text","core":true,"versionStr":"1.0.6"},"135":{"summary":"Field that stores a URL","core":true,"versionStr":"1.0.1"},"25":{"summary":"Multiple selection, progressive enhancement to select multiple","core":true,"versionStr":"1.2.0"},"131":{"summary":"Form button element that you can optionally pass an href attribute to.","core":true,"versionStr":"1.0.0"},"37":{"summary":"Single checkbox toggle","core":true,"versionStr":"1.0.4"},"38":{"summary":"Multiple checkbox toggles","core":true,"versionStr":"1.0.7"},"155":{"summary":"CKEditor textarea rich text editor.","core":true,"versionStr":"1.5.6"},"94":{"summary":"Inputfield that accepts date and optionally time","core":true,"versionStr":"1.0.5"},"80":{"summary":"E-Mail address in valid format","core":true,"versionStr":"1.0.1"},"78":{"summary":"Groups one or more fields together in a container","core":true,"versionStr":"1.0.1"},"55":{"summary":"One or more file uploads (sortable)","core":true,"versionStr":"1.2.4"},"90":{"summary":"Floating point number with precision","core":true,"versionStr":"1.0.3"},"30":{"summary":"Contains one or more fields in a form","core":true,"versionStr":"1.0.7"},"40":{"summary":"Hidden value in a form","core":true,"versionStr":"1.0.1"},"161":{"summary":"Select an icon","core":true,"versionStr":"0.0.2"},"56":{"summary":"One or more image uploads (sortable)","core":true,"versionStr":"1.1.9"},"85":{"summary":"Integer (positive or negative)","core":true,"versionStr":"1.0.4"},"79":{"summary":"Contains any other markup and optionally child Inputfields","core":true,"versionStr":"1.0.2"},"41":{"summary":"Text input validated as a ProcessWire name field","core":true,"versionStr":"1.0.0"},"60":{"summary":"Select one or more pages","core":true,"versionStr":"1.0.6"},"15":{"summary":"Selection of a single page from a ProcessWire page tree list","core":true,"versionStr":"1.0.1"},"137":{"summary":"Selection of multiple pages from a ProcessWire page tree list","core":true,"versionStr":"1.0.2"},"86":{"summary":"Text input validated as a ProcessWire Page name field","core":true,"versionStr":"1.0.6"},"112":{"summary":"Handles input of Page Title and auto-generation of Page Name (when name is blank)","core":true,"versionStr":"1.0.2"},"122":{"summary":"Password input with confirmation field that doesn&#039;t ever echo the input back.","core":true,"versionStr":"1.0.1"},"39":{"summary":"Radio buttons for selection of a single item","core":true,"versionStr":"1.0.5"},"36":{"summary":"Selection of a single value from a select pulldown","core":true,"versionStr":"1.0.2"},"43":{"summary":"Select multiple items from a list","core":true,"versionStr":"1.0.1"},"149":{"summary":"Build a page finding selector visually.","author":"Avoine + ProcessWire","core":true,"versionStr":"0.2.7"},"32":{"summary":"Form submit button","core":true,"versionStr":"1.0.2"},"34":{"summary":"Single line of text","core":true,"versionStr":"1.0.5"},"35":{"summary":"Multiple lines of text","core":true,"versionStr":"1.0.3"},"108":{"summary":"URL in valid format","core":true,"versionStr":"1.0.2"},"116":{"summary":"jQuery Core as required by ProcessWire Admin and plugins","href":"http:\\/\\/jquery.com","core":true,"versionStr":"1.8.3"},"151":{"summary":"Provides lightbox capability for image galleries. Replacement for FancyBox. Uses Magnific Popup by @dimsemenov.","href":"http:\\/\\/dimsemenov.com\\/plugins\\/magnific-popup\\/","core":true,"versionStr":"0.0.1"},"103":{"summary":"Provides a jQuery plugin for sorting tables.","href":"http:\\/\\/mottie.github.io\\/tablesorter\\/","core":true,"versionStr":"2.2.1"},"117":{"summary":"jQuery UI as required by ProcessWire and plugins","href":"http:\\/\\/ui.jquery.com","core":true,"versionStr":"1.9.6"},"45":{"summary":"Provides a jQuery plugin for generating tabs in ProcessWire.","core":true,"versionStr":"1.0.7"},"167":{"summary":"Field that stores a page title in multiple languages. Use this only if you want title inputs created for ALL languages on ALL pages. Otherwise create separate languaged-named title fields, i.e. title_fr, title_es, title_fi, etc. ","author":"Ryan Cramer","core":true,"versionStr":"1.0.0"},"168":{"summary":"Field that stores a multiple lines of text in multiple languages","core":true,"versionStr":"1.0.0"},"166":{"summary":"Field that stores a single line of text in multiple languages","core":true,"versionStr":"1.0.0"},"162":{"summary":"ProcessWire multi-language support.","author":"Ryan Cramer","core":true,"versionStr":"1.0.3"},"165":{"summary":"Required to use multi-language fields.","author":"Ryan Cramer","core":true,"versionStr":"1.0.0"},"169":{"summary":"Required to use multi-language page names.","author":"Ryan Cramer","core":true,"versionStr":"0.0.9"},"170":{"summary":"Organizes multi-language fields into tabs for a cleaner easier to use interface.","author":"adamspruijt, ryan","core":true,"versionStr":"1.1.4"},"163":{"summary":"Manage system languages","author":"Ryan Cramer","core":true,"versionStr":"1.0.3","permissions":{"lang-edit":"Administer languages and static translation files"}},"164":{"summary":"Provides language translation capabilities for ProcessWire core and modules.","author":"Ryan Cramer","core":true,"versionStr":"1.0.1"},"67":{"summary":"Generates markup for data tables used by ProcessWire admin","core":true,"versionStr":"1.0.7"},"156":{"summary":"Front-end to the HTML Purifier library.","core":true,"versionStr":"1.0.4"},"113":{"summary":"Adds a render() method to all PageArray instances for basic unordered list generation of PageArrays.","core":true,"versionStr":"1.0.0"},"172":{"summary":"Adds $page->renderFields() and $page->images->render() methods that return basic markup for output during development and debugging.","core":true,"versionStr":"1.0.0"},"98":{"summary":"Generates markup for pagination navigation","core":true,"versionStr":"1.0.4"},"171":{"summary":"Renders an RSS feed. Given a PageArray, renders an RSS feed of them.","core":true,"versionStr":"1.0.2"},"114":{"summary":"Adds various permission methods to Page objects that are used by Process modules.","core":true,"versionStr":"1.0.5"},"115":{"summary":"Adds a render method to Page and caches page output.","core":true,"versionStr":"1.0.5"},"48":{"summary":"Edit individual fields that hold page data","core":true,"versionStr":"1.1.2"},"87":{"summary":"Acts as a placeholder Process for the admin root. Ensures proper flow control after login.","core":true,"versionStr":"1.0.1"},"76":{"summary":"Lists the Process assigned to each child page of the current","core":true,"versionStr":"1.0.1"},"160":{"summary":"View and manage system logs.","author":"Ryan Cramer","core":true,"versionStr":"0.0.1","permissions":{"logs-view":"Can view system logs","logs-edit":"Can manage system logs"},"page":{"name":"logs","parent":"setup","title":"Logs"}},"10":{"summary":"Login to ProcessWire","core":true,"versionStr":"1.0.3"},"50":{"summary":"List, edit or install\\/uninstall modules","core":true,"versionStr":"1.1.8"},"17":{"summary":"Add a new page","core":true,"versionStr":"1.0.8"},"7":{"summary":"Edit a Page","core":true,"versionStr":"1.0.8"},"129":{"summary":"Provides image manipulation functions for image fields and rich text editors.","core":true,"versionStr":"1.2.0"},"121":{"summary":"Provides a link capability as used by some Fieldtype modules (like rich text editors).","core":true,"versionStr":"1.0.8"},"12":{"summary":"List pages in a hierarchal tree structure","core":true,"versionStr":"1.1.8"},"150":{"summary":"Admin tool for finding and listing pages by any property.","author":"Ryan Cramer","core":true,"versionStr":"0.2.4","permissions":{"page-lister":"Use Page Lister"}},"104":{"summary":"Provides a page search engine for admin use.","core":true,"versionStr":"1.0.6"},"14":{"summary":"Handles page sorting and moving for PageList","core":true,"versionStr":"1.0.0"},"109":{"summary":"Handles emptying of Page trash","core":true,"versionStr":"1.0.2"},"134":{"summary":"List, Edit and Add pages of a specific type","core":true,"versionStr":"1.0.1"},"83":{"summary":"All page views are routed through this Process","core":true,"versionStr":"1.0.4"},"136":{"summary":"Manage system permissions","core":true,"versionStr":"1.0.1"},"138":{"summary":"Enables user to change their password, email address and other settings that you define.","core":true,"versionStr":"1.0.1"},"159":{"summary":"Shows a list of recently edited pages in your admin.","author":"Ryan Cramer","href":"http:\\/\\/modules.processwire.com\\/","core":true,"versionStr":"0.0.2","permissions":{"page-edit-recent":"Can see recently edited pages"},"page":{"name":"recent-pages","parent":"page","title":"Recent"}},"68":{"summary":"Manage user roles and what permissions are attached","core":true,"versionStr":"1.0.3"},"47":{"summary":"List and edit the templates that control page output","core":true,"versionStr":"1.1.4"},"66":{"summary":"Manage system users","core":true,"versionStr":"1.0.7"},"125":{"summary":"Throttles the frequency of logins for a given account, helps to reduce dictionary attacks by introducing an exponential delay between logins.","core":true,"versionStr":"1.0.2"},"139":{"summary":"Manages system versions and upgrades.","core":true,"versionStr":"0.1.5"},"61":{"summary":"Entity encode ampersands, quotes (single and double) and greater-than\\/less-than signs using htmlspecialchars(str, ENT_QUOTES). It is recommended that you use this on all text\\/textarea fields except those using a rich text editor like TinyMCE or a markup language like Markdown.","core":true,"versionStr":"1.0.0"},"173":{"summary":"Multiple Page selection using auto completion and sorting capability. Intended for use as an input field for Page reference fields.","core":true,"versionStr":"1.1.1"}}', '2010-04-08 03:10:10'),
('ModulesUninstalled.info', '{"AdminThemeReno":{"name":"AdminThemeReno","title":"Reno","version":17,"versionStr":"0.1.7","author":"Tom Reno (Renobird)","summary":"Admin theme for ProcessWire 2.5+ by Tom Reno (Renobird)","requiresVersions":{"AdminThemeDefault":[">=",0]},"autoload":"template=admin","created":1467939476,"installed":false,"configurable":3,"namespace":"ProcessWire\\\\","core":true},"FieldtypeCache":{"name":"FieldtypeCache","title":"Cache","version":101,"versionStr":"1.0.1","summary":"Caches the values of other fields for fewer runtime queries. Can also be used to combine multiple text fields and have them all be searchable under the cached field name.","created":1467939476,"installed":false,"namespace":"ProcessWire\\\\","core":true},"CommentFilterAkismet":{"name":"CommentFilterAkismet","title":"Comment Filter: Akismet","version":102,"versionStr":"1.0.2","summary":"Uses the Akismet service to identify comment spam. Module plugin for the Comments Fieldtype.","requiresVersions":{"FieldtypeComments":[">=",0]},"created":1467939476,"installed":false,"configurable":3,"namespace":"ProcessWire\\\\","core":true},"FieldtypeComments":{"name":"FieldtypeComments","title":"Comments","version":107,"versionStr":"1.0.7","summary":"Field that stores user posted comments for a single Page","installs":["InputfieldCommentsAdmin"],"created":1467939476,"installed":false,"namespace":"ProcessWire\\\\","core":true},"InputfieldCommentsAdmin":{"name":"InputfieldCommentsAdmin","title":"Comments Admin","version":104,"versionStr":"1.0.4","summary":"Provides an administrative interface for working with comments","requiresVersions":{"FieldtypeComments":[">=",0]},"created":1467939476,"installed":false,"namespace":"ProcessWire\\\\","core":true},"FieldtypeOptions":{"name":"FieldtypeOptions","title":"Select Options","version":1,"versionStr":"0.0.1","summary":"Field that stores single and multi select options.","created":1467939476,"installed":false,"namespace":"ProcessWire\\\\","core":true},"FieldtypePageTable":{"name":"FieldtypePageTable","title":"ProFields: Page Table","version":8,"versionStr":"0.0.8","summary":"A fieldtype containing a group of editable pages.","installs":["InputfieldPageTable"],"autoload":true,"created":1467939476,"installed":false,"namespace":"ProcessWire\\\\","core":true},"FieldtypeRepeater":{"name":"FieldtypeRepeater","title":"Repeater","version":105,"versionStr":"1.0.5","summary":"Maintains a collection of fields that are repeated for any number of times.","installs":["InputfieldRepeater"],"autoload":true,"created":1467939476,"installed":false,"configurable":3,"namespace":"ProcessWire\\\\","core":true},"InputfieldRepeater":{"name":"InputfieldRepeater","title":"Repeater","version":104,"versionStr":"1.0.4","summary":"Repeats fields from another template. Provides the input for FieldtypeRepeater.","requiresVersions":{"FieldtypeRepeater":[">=",0]},"created":1467939476,"installed":false,"namespace":"ProcessWire\\\\","core":true},"FieldtypeSelector":{"name":"FieldtypeSelector","title":"Selector","version":13,"versionStr":"0.1.3","author":"Avoine + ProcessWire","summary":"Build a page finding selector visually.","created":1467939476,"installed":false,"namespace":"ProcessWire\\\\","core":true},"FileCompilerTags":{"name":"FileCompilerTags","title":"Tags File Compiler","version":1,"versionStr":"0.0.1","summary":"Enables {var} or {var.property} variables in markup sections of a file. Can be used with any API variable.","created":1467939476,"installed":false,"configurable":4,"namespace":"ProcessWire\\\\","core":true},"ImageSizerEngineIMagick":{"name":"ImageSizerEngineIMagick","title":"IMagick Image Sizer","version":1,"versionStr":"0.0.1","author":"Horst Nogajski","summary":"Upgrades image manipulations to use PHP''s ImageMagick library when possible.","created":1467939476,"installed":false,"configurable":4,"namespace":"ProcessWire\\\\","core":true},"InputfieldPageTable":{"name":"InputfieldPageTable","title":"ProFields: Page Table","version":13,"versionStr":"0.1.3","summary":"Inputfield to accompany FieldtypePageTable","requiresVersions":{"FieldtypePageTable":[">=",0]},"created":1467939476,"installed":false,"namespace":"ProcessWire\\\\","core":true},"LazyCron":{"name":"LazyCron","title":"Lazy Cron","version":102,"versionStr":"1.0.2","summary":"Provides hooks that are automatically executed at various intervals. It is called ''lazy'' because it''s triggered by a pageview, so the interval is guaranteed to be at least the time requested, rather than exactly the time requested. This is fine for most cases, but you can make it not lazy by connecting this to a real CRON job. See the module file for details. ","href":"http:\\/\\/processwire.com\\/talk\\/index.php\\/topic,284.0.html","autoload":true,"singular":true,"created":1467939476,"installed":false,"namespace":"ProcessWire\\\\","core":true},"MarkupCache":{"name":"MarkupCache","title":"Markup Cache","version":101,"versionStr":"1.0.1","summary":"A simple way to cache segments of markup in your templates. ","href":"https:\\/\\/processwire.com\\/api\\/modules\\/markupcache\\/","autoload":true,"singular":true,"created":1467939476,"installed":false,"configurable":3,"namespace":"ProcessWire\\\\","core":true},"PageFrontEdit":{"name":"PageFrontEdit","title":"Front-End Page Editor","version":2,"versionStr":"0.0.2","author":"Ryan Cramer","summary":"Enables front-end editing of page fields.","icon":"cube","permissions":{"page-edit-front":"Use the front-end page editor"},"autoload":true,"created":1467939476,"installed":false,"configurable":"PageFrontEditConfig.php","namespace":"ProcessWire\\\\","core":true,"license":"MPL 2.0"},"PagePathHistory":{"name":"PagePathHistory","title":"Page Path History","version":2,"versionStr":"0.0.2","summary":"Keeps track of past URLs where pages have lived and automatically redirects (301 permament) to the new location whenever the past URL is accessed.","autoload":true,"singular":true,"created":1467939476,"installed":false,"namespace":"ProcessWire\\\\","core":true},"PagePaths":{"name":"PagePaths","title":"Page Paths","version":1,"versionStr":"0.0.1","summary":"Enables page paths\\/urls to be queryable by selectors. Also offers potential for improved load performance. Builds an index at install (may take time on a large site). Currently supports only single languages sites.","autoload":true,"singular":true,"created":1467939476,"installed":false,"namespace":"ProcessWire\\\\","core":true},"ProcessCommentsManager":{"name":"ProcessCommentsManager","title":"Comments","version":6,"versionStr":"0.0.6","author":"Ryan Cramer","summary":"Manage comments in your site outside of the page editor.","icon":"comments","requiresVersions":{"FieldtypeComments":[">=",0]},"permission":"comments-manager","permissions":{"comments-manager":"Use the comments manager"},"created":1467939476,"installed":false,"namespace":"ProcessWire\\\\","core":true,"page":{"name":"comments","parent":"setup","title":"Comments"},"nav":[{"url":"?go=approved","label":"Approved"},{"url":"?go=pending","label":"Pending"},{"url":"?go=spam","label":"Spam"},{"url":"?go=all","label":"All"}]},"ProcessForgotPassword":{"name":"ProcessForgotPassword","title":"Forgot Password","version":101,"versionStr":"1.0.1","summary":"Provides password reset\\/email capability for the Login process.","permission":"page-view","created":1467939476,"installed":false,"configurable":3,"namespace":"ProcessWire\\\\","core":true},"ProcessPageClone":{"name":"ProcessPageClone","title":"Page Clone","version":103,"versionStr":"1.0.3","summary":"Provides ability to clone\\/copy\\/duplicate pages in the admin. Adds a &quot;copy&quot; option to all applicable pages in the PageList.","permission":"page-clone","permissions":{"page-clone":"Clone a page","page-clone-tree":"Clone a tree of pages"},"autoload":"template=admin","created":1467939476,"installed":false,"namespace":"ProcessWire\\\\","core":true,"page":{"name":"clone","title":"Clone","parent":"page","status":1024}},"ProcessSessionDB":{"name":"ProcessSessionDB","title":"Sessions","version":3,"versionStr":"0.0.3","summary":"Enables you to browse active database sessions.","icon":"dashboard","requiresVersions":{"SessionHandlerDB":[">=",0]},"created":1467939476,"installed":false,"namespace":"ProcessWire\\\\","core":true},"SessionHandlerDB":{"name":"SessionHandlerDB","title":"Session Handler Database","version":5,"versionStr":"0.0.5","summary":"Installing this module makes ProcessWire store sessions in the database rather than the file system. Note that this module will log you out after install or uninstall.","installs":["ProcessSessionDB"],"created":1467939476,"installed":false,"configurable":3,"namespace":"ProcessWire\\\\","core":true},"FieldtypeNotifications":{"name":"FieldtypeNotifications","title":"Notifications","version":4,"versionStr":"0.0.4","summary":"Field that stores user notifications.","requiresVersions":{"SystemNotifications":[">=",0]},"created":1467939476,"installed":false,"namespace":"ProcessWire\\\\","core":true},"SystemNotifications":{"name":"SystemNotifications","title":"System Notifications","version":12,"versionStr":"0.1.2","summary":"Adds support for notifications in ProcessWire (currently in development)","icon":"bell","installs":["FieldtypeNotifications"],"autoload":true,"created":1467939476,"installed":false,"configurable":"SystemNotificationsConfig.php","namespace":"ProcessWire\\\\","core":true},"TextformatterMarkdownExtra":{"name":"TextformatterMarkdownExtra","title":"Markdown\\/Parsedown Extra","version":130,"versionStr":"1.3.0","summary":"Markdown\\/Parsedown extra lightweight markup language by Emanuil Rusev. Based on Markdown by John Gruber.","created":1467939476,"installed":false,"configurable":3,"namespace":"ProcessWire\\\\","core":true},"TextformatterNewlineBR":{"name":"TextformatterNewlineBR","title":"Newlines to XHTML Line Breaks","version":100,"versionStr":"1.0.0","summary":"Converts newlines to XHTML line break <br \\/> tags. ","created":1467939476,"installed":false,"namespace":"ProcessWire\\\\","core":true},"TextformatterNewlineUL":{"name":"TextformatterNewlineUL","title":"Newlines to Unordered List","version":100,"versionStr":"1.0.0","summary":"Converts newlines to <li> list items and surrounds in an <ul> unordered list. ","created":1467939476,"installed":false,"namespace":"ProcessWire\\\\","core":true},"TextformatterPstripper":{"name":"TextformatterPstripper","title":"Paragraph Stripper","version":100,"versionStr":"1.0.0","summary":"Strips paragraph <p> tags that may have been applied by other text formatters before it. ","created":1467939476,"installed":false,"namespace":"ProcessWire\\\\","core":true},"TextformatterSmartypants":{"name":"TextformatterSmartypants","title":"SmartyPants Typographer","version":152,"versionStr":"1.5.2","summary":"Smart typography for web sites, by Michel Fortin based on SmartyPants by John Gruber. If combined with Markdown, it should be applied AFTER Markdown.","created":1467939476,"installed":false,"namespace":"ProcessWire\\\\","core":true,"url":"http:\\/\\/michelf.com\\/projects\\/php-smartypants\\/typographer\\/"},"TextformatterStripTags":{"name":"TextformatterStripTags","title":"Strip Markup Tags","version":100,"versionStr":"1.0.0","summary":"Strips HTML\\/XHTML Markup Tags","created":1467939476,"installed":false,"configurable":3,"namespace":"ProcessWire\\\\","core":true},"Helloworld":{"name":"Helloworld","title":"Hello World","version":2,"versionStr":"0.0.2","summary":"An example module used for demonstration purposes. See the \\/site\\/modules\\/Helloworld.module file for details.","href":"http:\\/\\/processwire.com","icon":"smile-o","autoload":true,"singular":true,"created":1469023310,"installed":false}}', '2010-04-08 03:10:10'),
('Modules.site/modules/', 'Helloworld.module', '2010-04-08 03:10:10'),
('Modules.info', '{"148":{"name":"AdminThemeDefault","title":"Default","version":14,"autoload":"template=admin","created":1469070110,"configurable":19,"namespace":"ProcessWire\\\\"},"97":{"name":"FieldtypeCheckbox","title":"Checkbox","version":101,"singular":1,"created":1469070110,"namespace":"ProcessWire\\\\","permanent":true},"28":{"name":"FieldtypeDatetime","title":"Datetime","version":104,"created":1469070110,"namespace":"ProcessWire\\\\"},"29":{"name":"FieldtypeEmail","title":"E-Mail","version":100,"created":1469070110,"namespace":"ProcessWire\\\\"},"106":{"name":"FieldtypeFieldsetClose","title":"Fieldset (Close)","version":100,"singular":1,"created":1469070110,"namespace":"ProcessWire\\\\","permanent":true},"105":{"name":"FieldtypeFieldsetOpen","title":"Fieldset (Open)","version":100,"singular":1,"created":1469070110,"namespace":"ProcessWire\\\\","permanent":true},"107":{"name":"FieldtypeFieldsetTabOpen","title":"Fieldset in Tab (Open)","version":100,"singular":1,"created":1469070110,"namespace":"ProcessWire\\\\","permanent":true},"6":{"name":"FieldtypeFile","title":"Files","version":104,"created":1469070110,"namespace":"ProcessWire\\\\","permanent":true},"89":{"name":"FieldtypeFloat","title":"Float","version":105,"singular":1,"created":1469070110,"namespace":"ProcessWire\\\\","permanent":true},"57":{"name":"FieldtypeImage","title":"Images","version":101,"created":1469070110,"namespace":"ProcessWire\\\\","permanent":true},"84":{"name":"FieldtypeInteger","title":"Integer","version":101,"created":1469070110,"namespace":"ProcessWire\\\\","permanent":true},"27":{"name":"FieldtypeModule","title":"Module Reference","version":101,"created":1469070110,"namespace":"ProcessWire\\\\","permanent":true},"4":{"name":"FieldtypePage","title":"Page Reference","version":103,"created":1469070110,"configurable":3,"namespace":"ProcessWire\\\\","permanent":true},"111":{"name":"FieldtypePageTitle","title":"Page Title","version":100,"singular":1,"created":1469070110,"namespace":"ProcessWire\\\\","permanent":true},"133":{"name":"FieldtypePassword","title":"Password","version":101,"singular":true,"created":1469070110,"namespace":"ProcessWire\\\\","permanent":true},"3":{"name":"FieldtypeText","title":"Text","version":100,"created":1469070110,"namespace":"ProcessWire\\\\","permanent":true},"1":{"name":"FieldtypeTextarea","title":"Textarea","version":106,"created":1469070110,"namespace":"ProcessWire\\\\","permanent":true},"135":{"name":"FieldtypeURL","title":"URL","version":101,"singular":true,"created":1469070110,"namespace":"ProcessWire\\\\","permanent":true},"25":{"name":"InputfieldAsmSelect","title":"asmSelect","version":120,"created":1469070110,"namespace":"ProcessWire\\\\","permanent":true},"131":{"name":"InputfieldButton","title":"Button","version":100,"created":1469070110,"namespace":"ProcessWire\\\\","permanent":true},"37":{"name":"InputfieldCheckbox","title":"Checkbox","version":104,"created":1469070110,"namespace":"ProcessWire\\\\","permanent":true},"38":{"name":"InputfieldCheckboxes","title":"Checkboxes","version":107,"created":1469070110,"namespace":"ProcessWire\\\\","permanent":true},"155":{"name":"InputfieldCKEditor","title":"CKEditor","version":156,"installs":["MarkupHTMLPurifier"],"created":1469070110,"namespace":"ProcessWire\\\\"},"94":{"name":"InputfieldDatetime","title":"Datetime","version":105,"created":1469070110,"namespace":"ProcessWire\\\\","permanent":true},"80":{"name":"InputfieldEmail","title":"Email","version":101,"created":1469070110,"namespace":"ProcessWire\\\\"},"78":{"name":"InputfieldFieldset","title":"Fieldset","version":101,"created":1469070110,"namespace":"ProcessWire\\\\","permanent":true},"55":{"name":"InputfieldFile","title":"Files","version":124,"created":1469070110,"namespace":"ProcessWire\\\\","permanent":true},"90":{"name":"InputfieldFloat","title":"Float","version":103,"created":1469070110,"namespace":"ProcessWire\\\\","permanent":true},"30":{"name":"InputfieldForm","title":"Form","version":107,"created":1469070110,"namespace":"ProcessWire\\\\","permanent":true},"40":{"name":"InputfieldHidden","title":"Hidden","version":101,"created":1469070110,"namespace":"ProcessWire\\\\","permanent":true},"161":{"name":"InputfieldIcon","title":"Icon","version":2,"created":1469070139,"namespace":"ProcessWire\\\\"},"56":{"name":"InputfieldImage","title":"Images","version":119,"created":1469070110,"namespace":"ProcessWire\\\\","permanent":true},"85":{"name":"InputfieldInteger","title":"Integer","version":104,"created":1469070110,"namespace":"ProcessWire\\\\","permanent":true},"79":{"name":"InputfieldMarkup","title":"Markup","version":102,"created":1469070110,"namespace":"ProcessWire\\\\","permanent":true},"41":{"name":"InputfieldName","title":"Name","version":100,"created":1469070110,"namespace":"ProcessWire\\\\","permanent":true},"60":{"name":"InputfieldPage","title":"Page","version":106,"created":1469070110,"configurable":3,"namespace":"ProcessWire\\\\","permanent":true},"15":{"name":"InputfieldPageListSelect","title":"Page List Select","version":101,"created":1469070110,"namespace":"ProcessWire\\\\","permanent":true},"137":{"name":"InputfieldPageListSelectMultiple","title":"Page List Select Multiple","version":102,"created":1469070110,"namespace":"ProcessWire\\\\","permanent":true},"86":{"name":"InputfieldPageName","title":"Page Name","version":106,"created":1469070110,"configurable":3,"namespace":"ProcessWire\\\\","permanent":true},"112":{"name":"InputfieldPageTitle","title":"Page Title","version":102,"created":1469070110,"namespace":"ProcessWire\\\\","permanent":true},"122":{"name":"InputfieldPassword","title":"Password","version":101,"created":1469070110,"namespace":"ProcessWire\\\\","permanent":true},"39":{"name":"InputfieldRadios","title":"Radio Buttons","version":105,"created":1469070110,"namespace":"ProcessWire\\\\","permanent":true},"36":{"name":"InputfieldSelect","title":"Select","version":102,"created":1469070110,"namespace":"ProcessWire\\\\","permanent":true},"43":{"name":"InputfieldSelectMultiple","title":"Select Multiple","version":101,"created":1469070110,"namespace":"ProcessWire\\\\","permanent":true},"149":{"name":"InputfieldSelector","title":"Selector","version":27,"autoload":"template=admin","created":1469070110,"configurable":3,"namespace":"ProcessWire\\\\"},"32":{"name":"InputfieldSubmit","title":"Submit","version":102,"created":1469070110,"namespace":"ProcessWire\\\\","permanent":true},"34":{"name":"InputfieldText","title":"Text","version":105,"created":1469070110,"namespace":"ProcessWire\\\\","permanent":true},"35":{"name":"InputfieldTextarea","title":"Textarea","version":103,"created":1469070110,"namespace":"ProcessWire\\\\","permanent":true},"108":{"name":"InputfieldURL","title":"URL","version":102,"created":1469070110,"namespace":"ProcessWire\\\\"},"116":{"name":"JqueryCore","title":"jQuery Core","version":183,"singular":true,"created":1469070110,"namespace":"ProcessWire\\\\","permanent":true},"151":{"name":"JqueryMagnific","title":"jQuery Magnific Popup","version":1,"singular":1,"created":1469070110,"namespace":"ProcessWire\\\\"},"103":{"name":"JqueryTableSorter","title":"jQuery Table Sorter Plugin","version":221,"singular":1,"created":1469070110,"namespace":"ProcessWire\\\\"},"117":{"name":"JqueryUI","title":"jQuery UI","version":196,"singular":true,"created":1469070110,"namespace":"ProcessWire\\\\","permanent":true},"45":{"name":"JqueryWireTabs","title":"jQuery Wire Tabs Plugin","version":107,"created":1469070110,"configurable":3,"namespace":"ProcessWire\\\\","permanent":true},"167":{"name":"FieldtypePageTitleLanguage","title":"Page Title (Multi-Language)","version":100,"requiresVersions":{"LanguageSupportFields":[">=",0],"FieldtypeTextLanguage":[">=",0]},"singular":true,"created":1469070162,"namespace":"ProcessWire\\\\"},"168":{"name":"FieldtypeTextareaLanguage","title":"Textarea (Multi-language)","version":100,"requiresVersions":{"LanguageSupportFields":[">=",0]},"singular":true,"created":1469070162,"namespace":"ProcessWire\\\\"},"166":{"name":"FieldtypeTextLanguage","title":"Text (Multi-language)","version":100,"requiresVersions":{"LanguageSupportFields":[">=",0]},"singular":true,"created":1469070162,"namespace":"ProcessWire\\\\"},"162":{"name":"LanguageSupport","title":"Languages Support","version":103,"installs":["ProcessLanguage","ProcessLanguageTranslator"],"autoload":true,"singular":true,"created":1469070157,"configurable":true,"namespace":"ProcessWire\\\\"},"165":{"name":"LanguageSupportFields","title":"Languages Support - Fields","version":100,"requiresVersions":{"LanguageSupport":[">=",0]},"installs":["FieldtypePageTitleLanguage","FieldtypeTextareaLanguage","FieldtypeTextLanguage"],"autoload":true,"singular":true,"created":1469070162,"namespace":"ProcessWire\\\\"},"169":{"name":"LanguageSupportPageNames","title":"Languages Support - Page Names","version":9,"requiresVersions":{"LanguageSupport":[">=",0],"LanguageSupportFields":[">=",0]},"autoload":true,"singular":true,"created":1469070165,"configurable":3,"namespace":"ProcessWire\\\\"},"170":{"name":"LanguageTabs","title":"Languages Support - Tabs","version":114,"requiresVersions":{"LanguageSupport":[">=",0]},"autoload":"template=admin","singular":true,"created":1469070168,"configurable":4,"namespace":"ProcessWire\\\\"},"163":{"name":"ProcessLanguage","title":"Languages","version":103,"icon":"language","requiresVersions":{"LanguageSupport":[">=",0]},"permission":"lang-edit","singular":1,"created":1469070157,"configurable":3,"namespace":"ProcessWire\\\\","useNavJSON":true},"164":{"name":"ProcessLanguageTranslator","title":"Language Translator","version":101,"requiresVersions":{"LanguageSupport":[">=",0]},"permission":"lang-edit","singular":1,"created":1469070158,"namespace":"ProcessWire\\\\"},"67":{"name":"MarkupAdminDataTable","title":"Admin Data Table","version":107,"created":1469070110,"namespace":"ProcessWire\\\\","permanent":true},"156":{"name":"MarkupHTMLPurifier","title":"HTML Purifier","version":104,"created":1469070110,"namespace":"ProcessWire\\\\"},"113":{"name":"MarkupPageArray","title":"PageArray Markup","version":100,"autoload":true,"singular":true,"created":1469070110,"namespace":"ProcessWire\\\\"},"172":{"name":"MarkupPageFields","title":"Markup Page Fields","version":100,"autoload":true,"singular":true,"created":1469357115,"namespace":"ProcessWire\\\\","permanent":true},"98":{"name":"MarkupPagerNav","title":"Pager (Pagination) Navigation","version":104,"created":1469070110,"namespace":"ProcessWire\\\\"},"171":{"name":"MarkupRSS","title":"Markup RSS Feed","version":102,"created":1469357047,"configurable":3,"namespace":"ProcessWire\\\\"},"114":{"name":"PagePermissions","title":"Page Permissions","version":105,"autoload":true,"singular":true,"created":1469070110,"namespace":"ProcessWire\\\\","permanent":true},"115":{"name":"PageRender","title":"Page Render","version":105,"autoload":true,"singular":true,"created":1469070110,"configurable":3,"namespace":"ProcessWire\\\\","permanent":true},"48":{"name":"ProcessField","title":"Fields","version":112,"icon":"cube","permission":"field-admin","created":1469070110,"configurable":3,"namespace":"ProcessWire\\\\","permanent":true,"useNavJSON":true},"87":{"name":"ProcessHome","title":"Admin Home","version":101,"permission":"page-view","created":1469070110,"namespace":"ProcessWire\\\\","permanent":true},"76":{"name":"ProcessList","title":"List","version":101,"permission":"page-view","created":1469070110,"namespace":"ProcessWire\\\\","permanent":true},"160":{"name":"ProcessLogger","title":"Logs","version":1,"icon":"tree","permission":"logs-view","singular":1,"created":1469070139,"namespace":"ProcessWire\\\\","useNavJSON":true},"10":{"name":"ProcessLogin","title":"Login","version":103,"permission":"page-view","created":1469070110,"namespace":"ProcessWire\\\\","permanent":true},"50":{"name":"ProcessModule","title":"Modules","version":118,"permission":"module-admin","created":1469070110,"namespace":"ProcessWire\\\\","permanent":true,"useNavJSON":true,"nav":[{"url":"?site#tab_site_modules","label":"Site","icon":"plug","navJSON":"navJSON\\/?site=1"},{"url":"?core#tab_core_modules","label":"Core","icon":"plug","navJSON":"navJSON\\/?core=1"},{"url":"?configurable#tab_configurable_modules","label":"Configure","icon":"gear","navJSON":"navJSON\\/?configurable=1"},{"url":"?install#tab_install_modules","label":"Install","icon":"sign-in","navJSON":"navJSON\\/?install=1"},{"url":"?reset=1","label":"Refresh","icon":"refresh"}]},"17":{"name":"ProcessPageAdd","title":"Page Add","version":108,"icon":"plus-circle","permission":"page-edit","created":1469070110,"configurable":3,"namespace":"ProcessWire\\\\","permanent":true,"useNavJSON":true},"7":{"name":"ProcessPageEdit","title":"Page Edit","version":108,"icon":"edit","permission":"page-edit","singular":1,"created":1469070110,"configurable":3,"namespace":"ProcessWire\\\\","permanent":true,"useNavJSON":true},"129":{"name":"ProcessPageEditImageSelect","title":"Page Edit Image","version":120,"permission":"page-edit","singular":1,"created":1469070110,"configurable":3,"namespace":"ProcessWire\\\\","permanent":true},"121":{"name":"ProcessPageEditLink","title":"Page Edit Link","version":108,"icon":"link","permission":"page-edit","singular":true,"created":1469070110,"configurable":3,"namespace":"ProcessWire\\\\","permanent":true},"12":{"name":"ProcessPageList","title":"Page List","version":118,"icon":"sitemap","permission":"page-edit","created":1469070110,"configurable":3,"namespace":"ProcessWire\\\\","permanent":true,"useNavJSON":true},"150":{"name":"ProcessPageLister","title":"Lister","version":24,"icon":"search","permission":"page-lister","created":1469070110,"configurable":true,"namespace":"ProcessWire\\\\","permanent":true,"useNavJSON":true},"104":{"name":"ProcessPageSearch","title":"Page Search","version":106,"permission":"page-edit","singular":1,"created":1469070110,"configurable":3,"namespace":"ProcessWire\\\\","permanent":true},"14":{"name":"ProcessPageSort","title":"Page Sort and Move","version":100,"permission":"page-edit","created":1469070110,"namespace":"ProcessWire\\\\","permanent":true},"109":{"name":"ProcessPageTrash","title":"Page Trash","version":102,"singular":1,"created":1469070110,"namespace":"ProcessWire\\\\","permanent":true},"134":{"name":"ProcessPageType","title":"Page Type","version":101,"singular":1,"created":1469070110,"configurable":3,"namespace":"ProcessWire\\\\","permanent":true,"useNavJSON":true},"83":{"name":"ProcessPageView","title":"Page View","version":104,"permission":"page-view","created":1469070110,"namespace":"ProcessWire\\\\","permanent":true},"136":{"name":"ProcessPermission","title":"Permissions","version":101,"icon":"gear","permission":"permission-admin","singular":1,"created":1469070110,"configurable":3,"namespace":"ProcessWire\\\\","permanent":true,"useNavJSON":true},"138":{"name":"ProcessProfile","title":"User Profile","version":101,"permission":"profile-edit","singular":1,"created":1469070110,"configurable":3,"namespace":"ProcessWire\\\\","permanent":true},"159":{"name":"ProcessRecentPages","title":"Recent Pages","version":2,"icon":"clock-o","permission":"page-edit-recent","singular":1,"created":1469070135,"namespace":"ProcessWire\\\\","useNavJSON":true,"nav":[{"url":"?edited=1","label":"Edited","icon":"users","navJSON":"navJSON\\/?edited=1"},{"url":"?added=1","label":"Created","icon":"users","navJSON":"navJSON\\/?added=1&me=1"},{"url":"?edited=1&me=1","label":"Edited by me","icon":"user","navJSON":"navJSON\\/?edited=1&me=1"},{"url":"?added=1&me=1","label":"Created by me","icon":"user","navJSON":"navJSON\\/?added=1&me=1"},{"url":"another\\/","label":"Add another","icon":"plus-circle","navJSON":"anotherNavJSON\\/"}]},"68":{"name":"ProcessRole","title":"Roles","version":103,"icon":"gears","permission":"role-admin","created":1469070110,"configurable":3,"namespace":"ProcessWire\\\\","permanent":true,"useNavJSON":true},"47":{"name":"ProcessTemplate","title":"Templates","version":114,"icon":"cubes","permission":"template-admin","created":1469070110,"namespace":"ProcessWire\\\\","permanent":true,"useNavJSON":true},"66":{"name":"ProcessUser","title":"Users","version":107,"icon":"group","permission":"user-admin","created":1469070110,"configurable":"ProcessUserConfig.php","namespace":"ProcessWire\\\\","permanent":true,"useNavJSON":true},"125":{"name":"SessionLoginThrottle","title":"Session Login Throttle","version":102,"autoload":"function","singular":true,"created":1469070110,"configurable":3,"namespace":"ProcessWire\\\\"},"139":{"name":"SystemUpdater","title":"System Updater","version":15,"singular":true,"created":1469070110,"configurable":3,"namespace":"ProcessWire\\\\","permanent":true},"61":{"name":"TextformatterEntities","title":"HTML Entity Encoder (htmlspecialchars)","version":100,"created":1469070110,"namespace":"ProcessWire\\\\"},"173":{"name":"InputfieldPageAutocomplete","title":"Page Auto Complete","version":111,"namespace":"ProcessWire\\\\"}}', '2010-04-08 03:10:10'),
('FileCompiler__c1078fb1a6625f25022bb7ec973cf66f', '{"source":{"file":"\\/Applications\\/MAMP\\/htdocs\\/ninjas\\/site\\/templates\\/authors.php","hash":"5619cbfee8f735c97114bc8183819b7e","size":1393,"time":1469877752,"ns":"Processwire"},"target":{"file":"\\/Applications\\/MAMP\\/htdocs\\/ninjas\\/site\\/assets\\/cache\\/FileCompiler\\/site\\/templates\\/authors.php","hash":"5619cbfee8f735c97114bc8183819b7e","size":1393,"time":1469877752}}', '2010-04-08 03:10:10'),
('Permissions.names', '{"lang-edit":1015,"logs-edit":1014,"logs-view":1013,"page-delete":34,"page-edit":32,"page-edit-recent":1011,"page-lister":1006,"page-lock":54,"page-move":35,"page-sort":50,"page-template":51,"page-view":36,"profile-edit":53,"user-admin":52}', '2010-04-08 03:10:10'),
('FileCompiler__723e0dafe080990babf5061dfe7eb00a', '{"source":{"file":"\\/Applications\\/MAMP\\/htdocs\\/ninjas\\/site\\/templates\\/admin.php","hash":"9636f854995462a4cb877cb1204bc2fe","size":467,"time":1467939476,"ns":"ProcessWire"},"target":{"file":"\\/Applications\\/MAMP\\/htdocs\\/ninjas\\/site\\/assets\\/cache\\/FileCompiler\\/site\\/templates\\/admin.php","hash":"9636f854995462a4cb877cb1204bc2fe","size":467,"time":1467939476}}', '2010-04-08 03:10:10'),
('FileCompiler__403d227264a665bc50c199ca7637340a', '{"source":{"file":"\\/Applications\\/MAMP\\/htdocs\\/ninjas\\/site\\/templates\\/_init.php","hash":"c8fa73dcbca692f4640600faa7605720","size":2382,"time":1469878084,"ns":"Processwire"},"target":{"file":"\\/Applications\\/MAMP\\/htdocs\\/ninjas\\/site\\/assets\\/cache\\/FileCompiler\\/site\\/templates\\/_init.php","hash":"c8fa73dcbca692f4640600faa7605720","size":2382,"time":1469878084}}', '2010-04-08 03:10:10'),
('FileCompiler__02e22acbf09fe7de60ebc2f3cea361aa', '{"source":{"file":"\\/Applications\\/MAMP\\/htdocs\\/ninjas\\/site\\/templates\\/_main.php","hash":"30de0d7eb05cfc0cf1edd596f681e745","size":1111,"time":1469878040,"ns":"\\\\"},"target":{"file":"\\/Applications\\/MAMP\\/htdocs\\/ninjas\\/site\\/assets\\/cache\\/FileCompiler\\/site\\/templates\\/_main.php","hash":"594c4270cb99bc3eeebbbdf5583831cf","size":1771,"time":1469878040}}', '2010-04-08 03:10:10'),
('FileCompiler__0453f858be4054e59b6efb1bc4aa4c1c', '{"source":{"file":"views\\/home_view.php","hash":"a8cc6e647126d06947d10bd0712c0238","size":271,"time":1469374155,"ns":"\\\\"},"target":{"file":"\\/Applications\\/MAMP\\/htdocs\\/ninjas\\/site\\/assets\\/cache\\/FileCompiler\\/views\\/home_view.php","hash":"178bbec6bc9d405aa989572749764823","size":533,"time":1469374155}}', '2010-04-08 03:10:10'),
('FileCompiler__97644c0d3e8ce67bab89306c677cf2d7', '{"source":{"file":"views\\/default_view.php","hash":"7ca3f0424b5476e36a1d6281e2e17e3f","size":2675,"time":1469877476,"ns":"Processwire"},"target":{"file":"\\/Applications\\/MAMP\\/htdocs\\/ninjas\\/site\\/assets\\/cache\\/FileCompiler\\/views\\/default_view.php","hash":"7ca3f0424b5476e36a1d6281e2e17e3f","size":2675,"time":1469877476}}', '2010-04-08 03:10:10'),
('FileCompiler__25182cef6175e68124787c25a99a42f7', '{"source":{"file":"\\/Applications\\/MAMP\\/htdocs\\/ninjas\\/site\\/templates\\/rss.php","hash":"2cb14cc9a79ae832dd4925cbee8d5ddc","size":761,"time":1469537002,"ns":"Processwire"},"target":{"file":"\\/Applications\\/MAMP\\/htdocs\\/ninjas\\/site\\/assets\\/cache\\/FileCompiler\\/site\\/templates\\/rss.php","hash":"2cb14cc9a79ae832dd4925cbee8d5ddc","size":761,"time":1469537002}}', '2010-04-08 03:10:10');
INSERT INTO `caches` (`name`, `data`, `expires`) VALUES
('FileCompiler__d0231c3806f8a8223bb7bc9b12b64e19', '{"source":{"file":"\\/Applications\\/MAMP\\/htdocs\\/ninjas\\/site\\/templates\\/blog-item.php","hash":"0381335be142364b8aecbee21c0e68f3","size":1796,"time":1469878199,"ns":"Processwire"},"target":{"file":"\\/Applications\\/MAMP\\/htdocs\\/ninjas\\/site\\/assets\\/cache\\/FileCompiler\\/site\\/templates\\/blog-item.php","hash":"0381335be142364b8aecbee21c0e68f3","size":1796,"time":1469878199}}', '2010-04-08 03:10:10'),
('FileCompiler__59ac674cf4f48260219045820a9f0435', '{"source":{"file":"\\/Applications\\/MAMP\\/htdocs\\/ninjas\\/site\\/templates\\/blog.php","hash":"25796fe6c81fae44b560b1f558ac008c","size":65,"time":1469472619,"ns":"Processwire"},"target":{"file":"\\/Applications\\/MAMP\\/htdocs\\/ninjas\\/site\\/assets\\/cache\\/FileCompiler\\/site\\/templates\\/blog.php","hash":"25796fe6c81fae44b560b1f558ac008c","size":65,"time":1469472619}}', '2010-04-08 03:10:10'),
('FileCompiler__44ed1d90e6c4e7966e1546c116549ef9', '{"source":{"file":"\\/Applications\\/MAMP\\/htdocs\\/ninjas\\/site\\/templates\\/home.php","hash":"8a232f4f491ea440d9d36f8639abc328","size":694,"time":1469878511,"ns":"Processwire"},"target":{"file":"\\/Applications\\/MAMP\\/htdocs\\/ninjas\\/site\\/assets\\/cache\\/FileCompiler\\/site\\/templates\\/home.php","hash":"8a232f4f491ea440d9d36f8639abc328","size":694,"time":1469878511}}', '2010-04-08 03:10:10'),
('FileCompiler__fe72cdf992d59d97dcbbe23ce625fd47', '{"source":{"file":"\\/Applications\\/MAMP\\/htdocs\\/ninjas\\/site\\/templates\\/tag-item.php","hash":"f7bf8b83407807d957efdfe4e3fb7bd8","size":878,"time":1469878881,"ns":"Processwire"},"target":{"file":"\\/Applications\\/MAMP\\/htdocs\\/ninjas\\/site\\/assets\\/cache\\/FileCompiler\\/site\\/templates\\/tag-item.php","hash":"f7bf8b83407807d957efdfe4e3fb7bd8","size":878,"time":1469878881}}', '2010-04-08 03:10:10'),
('FileCompiler__705b0deab807b3ea45bb21db4d3dccab', '{"source":{"file":"\\/Applications\\/MAMP\\/htdocs\\/ninjas\\/site\\/templates\\/tags.php","hash":"a75e538c038a7a709ee8d236acab1f04","size":120,"time":1469534812,"ns":"Processwire"},"target":{"file":"\\/Applications\\/MAMP\\/htdocs\\/ninjas\\/site\\/assets\\/cache\\/FileCompiler\\/site\\/templates\\/tags.php","hash":"a75e538c038a7a709ee8d236acab1f04","size":120,"time":1469534812}}', '2010-04-08 03:10:10'),
('FileCompiler__44ed57367874421066f38e308d385d2e', '{"source":{"file":"partials\\/header_bag\\/facebook_og.php","hash":"d8fa1091d9ec2219887a12651b06a72e","size":396,"time":1469538294,"ns":"Processwire"},"target":{"file":"\\/Applications\\/MAMP\\/htdocs\\/ninjas\\/site\\/assets\\/cache\\/FileCompiler\\/partials\\/header_bag\\/facebook_og.php","hash":"d8fa1091d9ec2219887a12651b06a72e","size":396,"time":1469538294}}', '2010-04-08 03:10:10'),
('FileCompiler__f1eae3a941a1db9fe391ed0ca5c14645', '{"source":{"file":"partials\\/header_bag\\/twitter_card.php","hash":"9dc18034671c4c661726f95c3557a8b7","size":412,"time":1469538286,"ns":"Processwire"},"target":{"file":"\\/Applications\\/MAMP\\/htdocs\\/ninjas\\/site\\/assets\\/cache\\/FileCompiler\\/partials\\/header_bag\\/twitter_card.php","hash":"9dc18034671c4c661726f95c3557a8b7","size":412,"time":1469538286}}', '2010-04-08 03:10:10'),
('FileCompiler__5bd6aab16882f77d8e4c1cad16414217', '{"source":{"file":"partials\\/header_bag\\/ld_json.php","hash":"ec2a9e4254ec715ad27520f20c1a72e6","size":315,"time":1469556016,"ns":"Processwire"},"target":{"file":"\\/Applications\\/MAMP\\/htdocs\\/ninjas\\/site\\/assets\\/cache\\/FileCompiler\\/partials\\/header_bag\\/ld_json.php","hash":"ec2a9e4254ec715ad27520f20c1a72e6","size":315,"time":1469556016}}', '2010-04-08 03:10:10'),
('FileCompiler__1e54c7ddf11668c5ad8e99c24c4c35e5', '{"source":{"file":"\\/Applications\\/MAMP\\/htdocs\\/ninjas\\/site\\/templates\\/404.php","hash":"776335e998685378d206df77558cd244","size":130,"time":1469540061,"ns":"Processwire"},"target":{"file":"\\/Applications\\/MAMP\\/htdocs\\/ninjas\\/site\\/assets\\/cache\\/FileCompiler\\/site\\/templates\\/404.php","hash":"776335e998685378d206df77558cd244","size":130,"time":1469540061}}', '2010-04-08 03:10:10'),
('FileCompiler__447f9ae099040309615d21f802f83a52', '{"source":{"file":"\\/Applications\\/MAMP\\/htdocs\\/ninjas\\/site\\/templates\\/basic-page.php","hash":"2919cf4ef8fdb64936cc2624be5b2de6","size":614,"time":1469878521,"ns":"Processwire"},"target":{"file":"\\/Applications\\/MAMP\\/htdocs\\/ninjas\\/site\\/assets\\/cache\\/FileCompiler\\/site\\/templates\\/basic-page.php","hash":"2919cf4ef8fdb64936cc2624be5b2de6","size":614,"time":1469878521}}', '2010-04-08 03:10:10'),
('FileCompiler__e4ee91d7ed4a35ba9dbfed208042bb27', '{"source":{"file":"partials\\/navigation.php","hash":"202dc987f902276f4e041fd686d06025","size":1744,"time":1469556020,"ns":"Processwire"},"target":{"file":"\\/Applications\\/MAMP\\/htdocs\\/ninjas\\/site\\/assets\\/cache\\/FileCompiler\\/partials\\/navigation.php","hash":"202dc987f902276f4e041fd686d06025","size":1744,"time":1469556020}}', '2010-04-08 03:10:10');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `fieldgroups`
--
-- Creación: 20-07-2016 a las 14:01:50
-- Última actualización: 26-07-2016 a las 13:37:59
--

CREATE TABLE `fieldgroups` (
  `id` int(10) unsigned NOT NULL,
  `name` varchar(250) CHARACTER SET ascii NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=110 DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `fieldgroups`
--

INSERT INTO `fieldgroups` (`id`, `name`) VALUES
(2, 'admin'),
(3, 'user'),
(4, 'role'),
(5, 'permission'),
(1, 'home'),
(83, 'basic-page'),
(97, 'language'),
(98, 'menu'),
(99, 'menu-item'),
(100, 'tags'),
(101, 'tag-item'),
(102, 'classes'),
(103, 'class-item'),
(104, 'blog'),
(105, 'blog-item'),
(106, 'meta'),
(107, 'authors'),
(108, 'rss'),
(109, '404');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `fieldgroups_fields`
--
-- Creación: 20-07-2016 a las 14:01:50
-- Última actualización: 28-07-2016 a las 11:04:03
--

CREATE TABLE `fieldgroups_fields` (
  `fieldgroups_id` int(10) unsigned NOT NULL DEFAULT '0',
  `fields_id` int(10) unsigned NOT NULL DEFAULT '0',
  `sort` int(11) unsigned NOT NULL DEFAULT '0',
  `data` text
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `fieldgroups_fields`
--

INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES
(2, 2, 1, NULL),
(3, 92, 3, NULL),
(4, 5, 0, NULL),
(5, 1, 0, NULL),
(3, 105, 1, NULL),
(83, 1, 0, NULL),
(1, 1, 0, NULL),
(97, 1, 0, NULL),
(97, 97, 1, NULL),
(3, 102, 8, NULL),
(2, 1, 0, NULL),
(1, 100, 2, NULL),
(97, 98, 2, NULL),
(98, 1, 0, NULL),
(99, 103, 1, NULL),
(100, 1, 0, NULL),
(101, 100, 2, NULL),
(101, 1, 0, NULL),
(3, 4, 4, NULL),
(3, 99, 5, NULL),
(3, 106, 6, NULL),
(102, 1, 0, NULL),
(103, 100, 2, NULL),
(103, 1, 0, NULL),
(104, 1, 0, NULL),
(105, 112, 7, NULL),
(105, 110, 6, NULL),
(105, 100, 4, NULL),
(105, 111, 1, NULL),
(105, 113, 2, NULL),
(105, 114, 3, NULL),
(103, 102, 1, NULL),
(101, 102, 1, NULL),
(106, 117, 2, NULL),
(106, 1, 0, NULL),
(105, 109, 5, NULL),
(105, 1, 0, NULL),
(1, 102, 1, NULL),
(99, 1, 0, NULL),
(106, 101, 3, NULL),
(3, 100, 7, NULL),
(3, 3, 2, NULL),
(106, 102, 1, NULL),
(107, 1, 0, NULL),
(108, 1, 0, NULL),
(105, 115, 8, NULL),
(106, 118, 4, NULL),
(3, 119, 0, '{"description":"Used in the URL","description1019":"Usado en la URL","notes":"Example author","notes1019":"Ejemplo autor"}'),
(100, 100, 1, NULL),
(109, 1, 0, NULL),
(83, 100, 1, NULL),
(83, 102, 2, NULL),
(83, 113, 3, NULL),
(3, 108, 9, NULL),
(3, 107, 10, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `fields`
--
-- Creación: 20-07-2016 a las 14:01:50
-- Última actualización: 28-07-2016 a las 11:05:33
--

CREATE TABLE `fields` (
  `id` int(10) unsigned NOT NULL,
  `type` varchar(128) CHARACTER SET ascii NOT NULL,
  `name` varchar(250) CHARACTER SET ascii NOT NULL,
  `flags` int(11) NOT NULL DEFAULT '0',
  `label` varchar(250) NOT NULL DEFAULT '',
  `data` text NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=120 DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `fields`
--

INSERT INTO `fields` (`id`, `type`, `name`, `flags`, `label`, `data`) VALUES
(1, 'FieldtypePageTitleLanguage', 'title', 13, 'Title', '{"required":1,"textformatters":["TextformatterEntities"],"size":0,"maxlength":255,"label1019":"T\\u00edtulo","langBlankInherit":0,"collapsed":0,"tags":"text","icon":"pencil"}'),
(2, 'FieldtypeModule', 'process', 25, 'Process', '{"description":"The process that is executed on this page. Since this is mostly used by ProcessWire internally, it is recommended that you don''t change the value of this unless adding your own pages in the admin.","collapsed":1,"required":1,"moduleTypes":["Process"],"permanent":1}'),
(3, 'FieldtypePassword', 'pass', 24, 'Set Password', '{"collapsed":1,"size":50,"maxlength":128}'),
(5, 'FieldtypePage', 'permissions', 24, 'Permissions', '{"derefAsPage":0,"parent_id":31,"labelFieldName":"title","inputfield":"InputfieldCheckboxes"}'),
(4, 'FieldtypePage', 'roles', 24, 'Roles', '{"derefAsPage":0,"parent_id":30,"labelFieldName":"name","inputfield":"InputfieldCheckboxes","description":"User will inherit the permissions assigned to each role. You may assign multiple roles to a user. When accessing a page, the user will only inherit permissions from the roles that are also assigned to the page''s template."}'),
(92, 'FieldtypeEmail', 'email', 9, 'E-Mail Address', '{"size":70,"maxlength":255}'),
(97, 'FieldtypeFile', 'language_files_site', 24, 'Site Translation Files', '{"extensions":"json csv","maxFiles":0,"inputfieldClass":"InputfieldFile","unzip":1,"description":"Use this field for translations specific to your site (like files in \\/site\\/templates\\/ for example).","descriptionRows":0,"fileSchema":2}'),
(98, 'FieldtypeFile', 'language_files', 24, 'Core Translation Files', '{"extensions":"json csv","maxFiles":0,"inputfieldClass":"InputfieldFile","unzip":1,"description":"Use this field for [language packs](http:\\/\\/modules.processwire.com\\/categories\\/language-pack\\/). To delete all files, double-click the trash can for any file, then save.","descriptionRows":0,"fileSchema":2}'),
(99, 'FieldtypePage', 'language', 24, 'Language', '{"derefAsPage":1,"parent_id":1016,"labelFieldName":"title","inputfield":"InputfieldRadios","required":1}'),
(100, 'FieldtypeImage', 'cover', 0, 'Cover', '{"label1019":"Cover","description":"Background Image","description1019":"Imagen de Fondo","extensions":"gif jpg jpeg png svg","maxFiles":1,"outputFormat":2,"defaultValuePage":0,"inputfieldClass":"InputfieldImage","descriptionRows":1,"gridMode":"grid","maxReject":0,"tags":"image","icon":"camera","fileSchema":2,"collapsed":0}'),
(101, 'FieldtypeImage', 'logo', 0, 'Logo', '{"label1019":"Logo","extensions":"gif jpg jpeg png svg","maxFiles":1,"outputFormat":2,"defaultValuePage":0,"inputfieldClass":"InputfieldImage","descriptionRows":1,"gridMode":"grid","maxReject":0,"tags":"image","icon":"camera","fileSchema":2,"collapsed":0}'),
(102, 'FieldtypeTextareaLanguage', 'about', 0, 'About', '{"label1019":"Acerca","inputfieldClass":"InputfieldTextarea","contentType":1,"htmlOptions":[4,8],"langBlankInherit":0,"collapsed":0,"rows":5,"tags":"text","icon":"comment"}'),
(103, 'FieldtypePage', 'pointer', 0, 'Related Page', '{"label1019":"P\\u00e1gina Asociada","derefAsPage":2,"collapsed":0,"parent_id":0,"labelFieldName":"title","inputfield":"InputfieldPageListSelect","findPagesSelector":"template!=menu|menu-item|user|admin|language|permission|role","usePageEdit":0,"tags":"menu","icon":"leanpub","allowUnpub":1}'),
(119, 'FieldtypeText', 'nickname', 0, 'Nickname', '{"label1019":"Pseud\\u00f3nimo","size":0,"maxlength":2048,"tags":"author","icon":"star","required":1,"requiredAttr":1,"noRelative":0,"allowIDN":0,"allowQuotes":0,"addRoot":0}'),
(105, 'FieldtypeText', 'fullname', 0, 'Full Name', '{"label1019":"Nombre Completo","textformatters":["TextformatterEntities"],"collapsed":0,"size":0,"maxlength":2048,"tags":"user","icon":"child"}'),
(106, 'FieldtypeImage', 'picture', 0, 'Picture', '{"label1019":"Fotograf\\u00eda","extensions":"gif jpg jpeg png svg","maxFiles":1,"outputFormat":2,"defaultValuePage":0,"inputfieldClass":"InputfieldImage","descriptionRows":1,"gridMode":"grid","maxReject":0,"tags":"image","icon":"camera","fileSchema":2,"collapsed":0}'),
(107, 'FieldtypeURL', 'website', 0, 'Website', '{"label1019":"Sitio web","noRelative":0,"allowIDN":1,"allowQuotes":0,"addRoot":1,"collapsed":0,"size":0,"maxlength":1024,"tags":"user","icon":"globe","textformatters":["TextformatterEntities"]}'),
(108, 'FieldtypeTextLanguage', 'location', 0, 'Location', '{"label1019":"Ubicaci\\u00f3n","textformatters":["TextformatterEntities"],"langBlankInherit":0,"collapsed":0,"size":0,"maxlength":2048,"tags":"user","icon":"map-marker"}'),
(109, 'FieldtypePage', 'class', 0, 'Class', '{"label1019":"Clase","derefAsPage":2,"collapsed":0,"parent_id":1024,"labelFieldName":"title","inputfield":"InputfieldSelect","tags":"blog","icon":"bolt","required":1}'),
(110, 'FieldtypePage', 'tags', 0, 'Tags', '{"label1019":"Tags","derefAsPage":0,"collapsed":0,"parent_id":1022,"labelFieldName":"title","inputfield":"InputfieldAsmSelect","tags":"blog","icon":"tags","template_id":47,"addable":1,"size":10}'),
(111, 'FieldtypeTextareaLanguage', 'excerpt', 0, 'Excerpt', '{"label1019":"Resumen","inputfieldClass":"InputfieldTextarea","contentType":1,"langBlankInherit":0,"collapsed":2,"rows":5,"tags":"blog","icon":"align-justify"}'),
(112, 'FieldtypeDatetime', 'publishedAt', 0, 'Publication Date', '{"label1019":"Fecha de Publicaci\\u00f3n","dateOutputFormat":"d\\/m\\/Y","collapsed":0,"size":25,"datepicker":3,"timeInputSelect":0,"dateInputFormat":"l, j F Y","defaultToday":1,"tags":"blog","icon":"calendar","yearRange":"-30:+5"}'),
(113, 'FieldtypeTextareaLanguage', 'content', 0, 'Content', '{"label1019":"Contenido","inputfieldClass":"InputfieldCKEditor","contentType":1,"htmlOptions":[4,8],"langBlankInherit":0,"collapsed":0,"rows":5,"tags":"blog","icon":"pencil","toolbar":"Format, Styles, -, Bold, Italic, -, RemoveFormat\\nNumberedList, BulletedList, -, Blockquote\\nPWLink, Unlink, Anchor\\nPWImage, Table, HorizontalRule, SpecialChar\\nPasteText, PasteFromWord\\nScayt, -, Sourcedialog","inlineMode":0,"useACF":1,"usePurifier":1,"formatTags":"p;h1;h2;h3;h4;h5;h6;pre;address","extraPlugins":["pwimage","pwlink","sourcedialog"],"removePlugins":"image,magicline"}'),
(114, 'FieldtypeImage', 'images', 0, 'Images', '{"label1019":"Imagenes","textformatters":["TextformatterEntities"],"extensions":"gif jpg jpeg png svg","maxFiles":0,"outputFormat":0,"defaultValuePage":0,"inputfieldClass":"InputfieldImage","descriptionRows":1,"gridMode":"grid","maxReject":0,"tags":"blog","icon":"camera-retro","fileSchema":2,"collapsed":0}'),
(115, 'FieldtypePage', 'author', 0, 'Author', '{"label1019":"Autor","derefAsPage":2,"collapsed":0,"parent_id":0,"template_id":3,"labelFieldName":".","inputfield":"InputfieldSelect","tags":"blog","icon":"user","usePageEdit":0,"required":1,"labelFieldFormat":"{fullname} - ({name})"}'),
(117, 'FieldtypeInteger', 'year', 0, 'Year', '{"label1019":"A\\u00f1o","zeroNotEmpty":0,"collapsed":0,"inputType":"number","size":10,"defaultValue":2016,"min":1900,"max":2100,"tags":"site","icon":"wpforms"}'),
(118, 'FieldtypeImage', 'favicon', 0, 'Favicon', '{"extensions":"png ico svg","maxFiles":1,"outputFormat":2,"defaultValuePage":0,"inputfieldClass":"InputfieldImage","descriptionRows":1,"gridMode":"grid","maxReject":0,"tags":"image","icon":"puzzle-piece","fileSchema":2,"label1019":"Favicon","collapsed":0}');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `field_about`
--
-- Creación: 23-07-2016 a las 16:23:21
-- Última actualización: 26-07-2016 a las 15:34:36
--

CREATE TABLE `field_about` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` mediumtext NOT NULL,
  `data1019` mediumtext
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `field_about`
--

INSERT INTO `field_about` (`pages_id`, `data`, `data1019`) VALUES
(1, 'Processwire Ghost Blog', 'Processwire Blog Ghost'),
(1025, 'Tipo de Clase Post', 'Post class type'),
(1023, 'Some of the greatest words ever spoken.', ''),
(1029, 'It´s a blog inspired on Ghost but with a Processwire touch.', 'Un blog inspirado por Ghost pero con un toque de Processwire.'),
(41, 'Ghostwriter is an American children''s mystery television series created by Liz Nealon and produced by the Children''s Television Workshop (now known as Sesame Workshop) and BBC One.', ''),
(1034, 'A series of short stories that make you think.', ''),
(1036, 'An American pastor, activist, humanitarian. People know me for leading the African-American Civil Rights movement using nonviolent civil disobedience.', 'An American pastor, activist, humanitarian. People know me for leading the African-American Civil Rights movement using nonviolent civil disobedience.'),
(1039, 'I''m an American novelist, best known for my work writing about a brave jungle hero called Tarzan and his muse, Jane.', ''),
(1041, '', ''),
(1042, 'My real name is Charles Lutwidge Dodgson, but people call me Lewis. I''m an English writer, mathematician, logician, Anglican deacon and photographer. People know me best for writing about Alice.', ''),
(1045, 'This is a demo blog for Processwire Ghost Blog, it contains dummy content which allows you to click around and see how Processwire Ghost Blog was made.', '');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `field_author`
--
-- Creación: 23-07-2016 a las 20:25:07
-- Última actualización: 26-07-2016 a las 15:04:36
--

CREATE TABLE `field_author` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` int(11) NOT NULL,
  `sort` int(10) unsigned NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `field_author`
--

INSERT INTO `field_author` (`pages_id`, `data`, `sort`) VALUES
(1035, 1036, 0),
(1037, 1036, 0),
(1040, 1039, 0),
(1043, 1042, 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `field_class`
--
-- Creación: 23-07-2016 a las 20:10:32
-- Última actualización: 26-07-2016 a las 15:04:36
--

CREATE TABLE `field_class` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` int(11) NOT NULL,
  `sort` int(10) unsigned NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `field_class`
--

INSERT INTO `field_class` (`pages_id`, `data`, `sort`) VALUES
(1035, 1025, 0),
(1037, 1025, 0),
(1040, 1025, 0),
(1043, 1025, 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `field_content`
--
-- Creación: 23-07-2016 a las 20:17:20
-- Última actualización: 26-07-2016 a las 15:36:06
--

CREATE TABLE `field_content` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` mediumtext NOT NULL,
  `data1019` mediumtext
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `field_content`
--

INSERT INTO `field_content` (`pages_id`, `data`, `data1019`) VALUES
(1037, '<p>I am happy to join with you today in what will go down in history as the greatest demonstration for freedom in the history of our nation.</p>\n\n<p>Five score years ago, a great American, in whose symbolic shadow we stand today, signed the Emancipation Proclamation. This momentous decree came as a great beacon light of hope to millions of Negro slaves who had been seared in the flames of withering injustice. It came as a joyous daybreak to end the long night of their captivity.</p>\n\n<p>But one hundred years later, the Negro still is not free. One hundred years later, the life of the Negro is still sadly crippled by the manacles of segregation and the chains of discrimination. One hundred years later, the Negro lives on a lonely island of poverty in the midst of a vast ocean of material prosperity. One hundred years later, the Negro is still languished in the corners of American society and finds himself an exile in his own land. And so we''ve come here today to dramatize a shameful condition.</p>\n\n<p>In a sense we''ve come to our nation''s capital to cash a check. When the architects of our republic wrote the magnificent words of the Constitution and the Declaration of Independence, they were signing a promissory note to which every American was to fall heir. This note was a promise that all men, yes, black men as well as white men, would be guaranteed the "unalienable Rights" of "Life, Liberty and the pursuit of Happiness." It is obvious today that America has defaulted on this promissory note, insofar as her citizens of color are concerned. Instead of honoring this sacred obligation, America has given the Negro people a bad check, a check which has come back marked "insufficient funds."</p>\n\n<p>But we refuse to believe that the bank of justice is bankrupt. We refuse to believe that there are insufficient funds in the great vaults of opportunity of this nation. And so, we''ve come to cash this check, a check that will give us upon demand the riches of freedom and the security of justice.</p>\n\n<p>We have also come to this hallowed spot to remind America of the fierce urgency of Now. This is no time to engage in the luxury of cooling off or to take the tranquilizing drug of gradualism. Now is the time to make real the promises of democracy. Now is the time to rise from the dark and desolate valley of segregation to the sunlit path of racial justice. Now is the time to lift our nation from the quicksands of racial injustice to the solid rock of brotherhood. Now is the time to make justice a reality for all of God''s children.</p>\n\n<p>It would be fatal for the nation to overlook the urgency of the moment. This sweltering summer of the Negro''s legitimate discontent will not pass until there is an invigorating autumn of freedom and equality. Nineteen sixty-three is not an end, but a beginning. And those who hope that the Negro needed to blow off steam and will now be content will have a rude awakening if the nation returns to business as usual. And there will be neither rest nor tranquility in America until the Negro is granted his citizenship rights. The whirlwinds of revolt will continue to shake the foundations of our nation until the bright day of justice emerges.</p>\n\n<p>But there is something that I must say to my people, who stand on the warm threshold which leads into the palace of justice: In the process of gaining our rightful place, we must not be guilty of wrongful deeds. Let us not seek to satisfy our thirst for freedom by drinking from the cup of bitterness and hatred. We must forever conduct our struggle on the high plane of dignity and discipline. We must not allow our creative protest to degenerate into physical violence. Again and again, we must rise to the majestic heights of meeting physical force with soul force.</p>\n\n<p>The marvelous new militancy which has engulfed the Negro community must not lead us to a distrust of all white people, for many of our white brothers, as evidenced by their presence here today, have come to realize that their destiny is tied up with our destiny. And they have come to realize that their freedom is inextricably bound to our freedom.</p>\n\n<p>We cannot walk alone.</p>\n\n<p>And as we walk, we must make the pledge that we shall always march ahead.</p>\n\n<p>We cannot turn back.</p>\n\n<p>There are those who are asking the devotees of civil rights, "When will you be satisfied?" We can never be satisfied as long as the Negro is the victim of the unspeakable horrors of police brutality. We can never be satisfied as long as our bodies, heavy with the fatigue of travel, cannot gain lodging in the motels of the highways and the hotels of the cities. We cannot be satisfied as long as the negro''s basic mobility is from a smaller ghetto to a larger one. We can never be satisfied as long as our children are stripped of their self-hood and robbed of their dignity by signs stating: "For Whites Only." We cannot be satisfied as long as a Negro in Mississippi cannot vote and a Negro in New York believes he has nothing for which to vote. No, no, we are not satisfied, and we will not be satisfied until "justice rolls down like waters, and righteousness like a mighty stream."</p>\n\n<p>I am not unmindful that some of you have come here out of great trials and tribulations. Some of you have come fresh from narrow jail cells. And some of you have come from areas where your quest -- quest for freedom left you battered by the storms of persecution and staggered by the winds of police brutality. You have been the veterans of creative suffering. Continue to work with the faith that unearned suffering is redemptive. Go back to Mississippi, go back to Alabama, go back to South Carolina, go back to Georgia, go back to Louisiana, go back to the slums and ghettos of our northern cities, knowing that somehow this situation can and will be changed.</p>\n\n<p>Let us not wallow in the valley of despair, I say to you today, my friends.</p>\n\n<p>And so even though we face the difficulties of today and tomorrow, I still have a dream. It is a dream deeply rooted in the American dream.</p>\n\n<p>I have a dream that one day this nation will rise up and live out the true meaning of its creed: "We hold these truths to be self-evident, that all men are created equal."</p>\n\n<p>I have a dream that one day on the red hills of Georgia, the sons of former slaves and the sons of former slave owners will be able to sit down together at the table of brotherhood.</p>\n\n<p>I have a dream that one day even the state of Mississippi, a state sweltering with the heat of injustice, sweltering with the heat of oppression, will be transformed into an oasis of freedom and justice.</p>\n\n<p>I have a dream that my four little children will one day live in a nation where they will not be judged by the color of their skin but by the content of their character.</p>\n\n<p>I have a <strong>dream</strong> today!</p>\n\n<p>I have a dream that one day, down in Alabama, with its vicious racists, with its governor having his lips dripping with the words of "interposition" and "nullification" -- one day right there in Alabama little black boys and black girls will be able to join hands with little white boys and white girls as sisters and brothers.</p>\n\n<p>I have a <strong>dream</strong> today!</p>\n\n<p>I have a dream that one day every valley shall be exalted, and every hill and mountain shall be made low, the rough places will be made plain, and the crooked places will be made straight; "and the glory of the Lord shall be revealed and all flesh shall see it together."</p>\n\n<p>This is our hope, and this is the faith that I go back to the South with.</p>\n\n<p>With this faith, we will be able to hew out of the mountain of despair a stone of hope. With this faith, we will be able to transform the jangling discords of our nation into a beautiful symphony of brotherhood. With this faith, we will be able to work together, to pray together, to struggle together, to go to jail together, to stand up for freedom together, knowing that we will be free one day.</p>\n\n<p>And this will be the day -- this will be the day when all of God''s children will be able to sing with new meaning:</p>\n\n<blockquote>\n<p>My country ''tis of thee, sweet land of liberty, of thee I sing.</p>\n\n<p>Land where my fathers died, land of the Pilgrim''s pride,</p>\n\n<p>From every mountainside, let freedom ring!</p>\n</blockquote>\n\n<p>And if America is to be a great nation, this must become true.</p>\n\n<p>And so let freedom ring from the prodigious hilltops of New Hampshire.</p>\n\n<blockquote>\n<p>Let freedom ring from the mighty mountains of New York.</p>\n\n<p>Let freedom ring from the heightening Alleghenies of Pennsylvania.</p>\n\n<p>Let freedom ring from the snow-capped Rockies of Colorado.</p>\n\n<p>Let freedom ring from the curvaceous slopes of California.</p>\n</blockquote>\n\n<p>But not only that:</p>\n\n<blockquote>\n<p>Let freedom ring from Stone Mountain of Georgia.</p>\n\n<p>Let freedom ring from Lookout Mountain of Tennessee.</p>\n\n<p>Let freedom ring from every hill and molehill of Mississippi.</p>\n\n<p>From every mountainside, let freedom ring.</p>\n</blockquote>\n\n<p>And when this happens, and when we allow freedom ring, when we let it ring from every village and every hamlet, from every state and every city, we will be able to speed up that day when all of God''s children, black men and white men, Jews and Gentiles, Protestants and Catholics, will be able to join hands and sing in the words of the old Negro spiritual:</p>\n\n<p><em>Free at last! Free at last!</em></p>\n\n<p><em>Thank God Almighty, we are free at last!</em></p>', ''),
(1035, '<p>As I engage in the so-called "bull sessions" around and about the school, I too often find that most college men have a misconception of the purpose of education. Most of the "brethren" think that education should equip them with the proper instruments of exploitation so that they can forever trample over the masses. Still others think that education should furnish them with noble ends rather than means to an end.</p>\n\n<p>It seems to me that education has a two-fold function to perform in the life of man and in society: the one is utility and the other is culture. Education must enable a man to become more efficient, to achieve with increasing facility the ligitimate goals of his life.</p>\n\n<p>Education must also train one for quick, resolute and effective thinking. To think incisively and to think for one''s self is very difficult. We are prone to let our mental life become invaded by legions of half truths, prejudices, and propaganda. At this point, I often wonder whether or not education is fulfilling its purpose. A great majority of the so-called educated people do not think logically and scientifically. Even the press, the classroom, the platform, and the pulpit in many instances do not give us objective and unbiased truths. To save man from the morass of propaganda, in my opinion, is one of the chief aims of education. Education must enable one to sift and weigh evidence, to discern the true from the false, the real from the unreal, and the facts from the fiction.</p>\n\n<p>The function of education, therefore, is to teach one to think intensively and to think critically. But education which stops with efficiency may prove the greatest menace to society. The most dangerous criminal may be the man gifted with reason, but with no morals.</p>\n\n<p>The late Eugene Talmadge, in my opinion, possessed one of the better minds of Georgia, or even America. Moreover, he wore the Phi Beta Kappa key. By all measuring rods, Mr. Talmadge could think critically and intensively; yet he contends that I am an inferior being. Are those the types of men we call educated?</p>\n\n<p>We must remember that intelligence is not enough. Intelligence plus character--that is the goal of true education. The complete education gives one not only power of concentration, but worthy objectives upon which to concentrate. The broad education will, therefore, transmit to one not only the accumulated knowledge of the race but also the accumulated experience of social living.</p>\n\n<p>If we are not careful, our colleges will produce a group of close-minded, unscientific, illogical propagandists, consumed with immoral acts. Be careful, "brethren!" Be careful, teachers!</p>', ''),
(1040, '<p>I had this story from one who had no business to tell it to me, or to any other. I may credit the seductive influence of an old vintage upon the narrator for the beginning of it, and my own skeptical incredulity during the days that followed for the balance of the strange tale.</p>\n\n<p><img alt=""	src="/site/assets/files/1040/giants_causeway_1c.740x0-is.jpg" width="740" /></p>\n\n<p>When my convivial host discovered that he had told me so much, and that I was prone to doubtfulness, his foolish pride assumed the task the old vintage had commenced, and so he unearthed written evidence in the form of musty manuscript, and dry official records of the British Colonial Office to support many of the salient features of his remarkable narrative.</p>\n\n<p>I do not say the story is true, for I did not witness the happenings which it portrays, but the fact that in the telling of it to you I have taken fictitious names for the principal characters quite sufficiently evidences the sincerity of my own belief that it MAY be true.</p>\n\n<p>The yellow, mildewed pages of the diary of a man long dead, and the records of the Colonial Office dovetail perfectly with the narrative of my convivial host, and so I give you the story as I painstakingly pieced it out from these several various agencies.</p>\n\n<p>If you do not find it credible you will at least be as one with me in acknowledging that it is unique, remarkable, and interesting.</p>\n\n<p>From the records of the Colonial Office and from the dead man''s diary we learn that a certain young English nobleman, whom we shall call John Clayton, Lord Greystoke, was commissioned to make a peculiarly delicate investigation of conditions in a British West Coast African Colony from whose simple native inhabitants another European power was known to be recruiting soldiers for its native army, which it used solely for the forcible collection of rubber and ivory from the savage tribes along the Congo and the Aruwimi. The natives of the British Colony complained that many of their young men were enticed away through the medium of fair and glowing promises, but that few if any ever returned to their families.</p>\n\n<p>The Englishmen in Africa went even further, saying that these poor blacks were held in virtual slavery, since after their terms of enlistment expired their ignorance was imposed upon by their white officers, and they were told that they had yet several years to serve.</p>\n\n<p>And so the Colonial Office appointed John Clayton to a new post in British West Africa, but his confidential instructions centered on a thorough investigation of the unfair treatment of black British subjects by the officers of a friendly European power. Why he was sent, is, however, of little moment to this story, for he never made an investigation, nor, in fact, did he ever reach his destination.</p>\n\n<p>Clayton was the type of Englishman that one likes best to associate with the noblest monuments of historic achievement upon a thousand victorious battlefields--a strong, virile man --mentally, morally, and physically.</p>\n\n<p>In stature he was above the average height; his eyes were gray, his features regular and strong; his carriage that of perfect, robust health influenced by his years of army training.</p>\n\n<p>Political ambition had caused him to seek transference from the army to the Colonial Office and so we find him, still young, entrusted with a delicate and important commission in the service of the Queen.</p>\n\n<p>When he received this appointment he was both elated and appalled. The preferment seemed to him in the nature of a well-merited reward for painstaking and intelligent service, and as a stepping stone to posts of greater importance and responsibility; but, on the other hand, he had been married to the Hon. Alice Rutherford for scarce a three months, and it was the thought of taking this fair young girl into the dangers and isolation of tropical Africa that appalled him.</p>\n\n<p>For her sake he would have refused the appointment, but she would not have it so. Instead she insisted that he accept, and, indeed, take her with him.</p>\n\n<p>There were mothers and brothers and sisters, and aunts and cousins to express various opinions on the subject, but as to what they severally advised history is silent.</p>\n\n<p>We know only that on a bright May morning in 1888, John, Lord Greystoke, and Lady Alice sailed from Dover on their way to Africa.</p>\n\n<p>A month later they arrived at Freetown where they chartered a small sailing vessel, the Fuwalda, which was to bear them to their final destination.</p>\n\n<p>And here John, Lord Greystoke, and Lady Alice, his wife, vanished from the eyes and from the knowledge of men.</p>\n\n<p>Two months after they weighed anchor and cleared from the port of Freetown a half dozen British war vessels were scouring the south Atlantic for trace of them or their little vessel, and it was almost immediately that the wreckage was found upon the shores of St. Helena which convinced the world that the Fuwalda had gone down with all on board, and hence the search was stopped ere it had scarce begun; though hope lingered in longing hearts for many years.</p>\n\n<p>The Fuwalda, a barkentine of about one hundred tons, was a vessel of the type often seen in coastwise trade in the far southern Atlantic, their crews composed of the offscourings of the sea--unhanged murderers and cutthroats of every race and every nation.</p>\n\n<p>The Fuwalda was no exception to the rule. Her officers were swarthy bullies, hating and hated by their crew. The captain, while a competent seaman, was a brute in his treatment of his men. He knew, or at least he used, but two arguments in his dealings with them--a belaying pin and a revolver--nor is it likely that the motley aggregation he signed would have understood aught else.</p>\n\n<p>So it was that from the second day out from Freetown John Clayton and his young wife witnessed scenes upon the deck of the Fuwalda such as they had believed were never enacted outside the covers of printed stories of the sea.</p>\n\n<p>It was on the morning of the second day that the first link was forged in what was destined to form a chain of circumstances ending in a life for one then unborn such as has never been paralleled in the history of man.</p>\n\n<p>Two sailors were washing down the decks of the Fuwalda, the first mate was on duty, and the captain had stopped to speak with John Clayton and Lady Alice.</p>\n\n<p>The men were working backwards toward the little party who were facing away from the sailors. Closer and closer they came, until one of them was directly behind the captain. In another moment he would have passed by and this strange narrative would never have been recorded.</p>\n\n<p>But just that instant the officer turned to leave Lord and Lady Greystoke, and, as he did so, tripped against the sailor and sprawled headlong upon the deck, overturning the water- pail so that he was drenched in its dirty contents.</p>\n\n<p>For an instant the scene was ludicrous; but only for an instant. With a volley of awful oaths, his face suffused with the scarlet of mortification and rage, the captain regained his feet, and with a terrific blow felled the sailor to the deck.</p>\n\n<p>The man was small and rather old, so that the brutality of the act was thus accentuated. The other seaman, however, was neither old nor small--a huge bear of a man, with fierce black mustachios, and a great bull neck set between massive shoulders.</p>\n\n<p>As he saw his mate go down he crouched, and, with a low snarl, sprang upon the captain crushing him to his knees with a single mighty blow.</p>\n\n<p>From scarlet the officer''s face went white, for this was mutiny; and mutiny he had met and subdued before in his brutal career. Without waiting to rise he whipped a revolver from his pocket, firing point blank at the great mountain of muscle towering before him; but, quick as he was, John Clayton was almost as quick, so that the bullet which was intended for the sailor''s heart lodged in the sailor''s leg instead, for Lord Greystoke had struck down the captain''s arm as he had seen the weapon flash in the sun.</p>\n\n<p>Words passed between Clayton and the captain, the former making it plain that he was disgusted with the brutality displayed toward the crew, nor would he countenance anything further of the kind while he and Lady Greystoke remained passengers.</p>\n\n<p>The captain was on the point of making an angry reply, but, thinking better of it, turned on his heel and black and scowling, strode aft.</p>\n\n<p>He did not care to antagonize an English official, for the Queen''s mighty arm wielded a punitive instrument which he could appreciate, and which he feared--England''s far-reaching navy.</p>\n\n<p>The two sailors picked themselves up, the older man assisting his wounded comrade to rise. The big fellow, who was known among his mates as Black Michael, tried his leg gingerly, and, finding that it bore his weight, turned to Clayton with a word of gruff thanks.</p>\n\n<p>Though the fellow''s tone was surly, his words were evidently well meant. Ere he had scarce finished his little speech he had turned and was limping off toward the forecastle with the very apparent intention of forestalling any further conversation.</p>\n\n<p>They did not see him again for several days, nor did the captain accord them more than the surliest of grunts when he was forced to speak to them.</p>\n\n<p>They took their meals in his cabin, as they had before the unfortunate occurrence; but the captain was careful to see that his duties never permitted him to eat at the same time.</p>\n\n<p>The other officers were coarse, illiterate fellows, but little above the villainous crew they bullied, and were only too glad to avoid social intercourse with the polished English noble and his lady, so that the Claytons were left very much to themselves.</p>\n\n<p>This in itself accorded perfectly with their desires, but it also rather isolated them from the life of the little ship so that they were unable to keep in touch with the daily happenings which were to culminate so soon in bloody tragedy.</p>', ''),
(1043, '<p>Alice was beginning to get very tired of sitting by her sister on the bank, and of having nothing to do: once or twice she had peeped into the book her sister was reading, but it had no pictures or conversations in it, ''and what is the use of a book,'' thought Alice ''without pictures or conversation?''</p>\n\n<p>So she was considering in her own mind (as well as she could, for the hot day made her feel very sleepy and stupid), whether the pleasure of making a daisy-chain would be worth the trouble of getting up and picking the daisies, when suddenly a White Rabbit with pink eyes ran close by her.</p>\n\n<p>There was nothing so very remarkable in that; nor did Alice think it so very much out of the way to hear the Rabbit say to itself, ''Oh dear! Oh dear! I shall be late!'' (when she thought it over afterwards, it occurred to her that she ought to have wondered at this, but at the time it all seemed quite natural); but when the Rabbit actually took a watch out of its waistcoat-pocket, and looked at it, and then hurried on, Alice started to her feet, for it flashed across her mind that she had never before seen a rabbit with either a waistcoat-pocket, or a watch to take out of it, and burning with curiosity, she ran across the field after it, and fortunately was just in time to see it pop down a large rabbit-hole under the hedge.</p>\n\n<p>In another moment down went Alice after it, never once considering how in the world she was to get out again.</p>\n\n<p>The rabbit-hole went straight on like a tunnel for some way, and then dipped suddenly down, so suddenly that Alice had not a moment to think about stopping herself before she found herself falling down a very deep well.</p>\n\n<p>Either the well was very deep, or she fell very slowly, for she had plenty of time as she went down to look about her and to wonder what was going to happen next. First, she tried to look down and make out what she was coming to, but it was too dark to see anything; then she looked at the sides of the well, and noticed that they were filled with cupboards and book-shelves; here and there she saw maps and pictures hung upon pegs. She took down a jar from one of the shelves as she passed; it was labelled ''ORANGE MARMALADE'', but to her great disappointment it was empty: she did not like to drop the jar for fear of killing somebody, so managed to put it into one of the cupboards as she fell past it.</p>\n\n<p>''Well!'' thought Alice to herself, ''after such a fall as this, I shall think nothing of tumbling down stairs! How brave they''ll all think me at home! Why, I wouldn''t say anything about it, even if I fell off the top of the house!'' (Which was very likely true.)</p>\n\n<p>Down, down, down. Would the fall never come to an end! ''I wonder how many miles I''ve fallen by this time?'' she said aloud. ''I must be getting somewhere near the centre of the earth. Let me see: that would be four thousand miles down, I think—'' (for, you see, Alice had learnt several things of this sort in her lessons in the schoolroom, and though this was not a very good opportunity for showing off her knowledge, as there was no one to listen to her, still it was good practice to say it over) ''—yes, that''s about the right distance—but then I wonder what Latitude or Longitude I''ve got to?'' (Alice had no idea what Latitude was, or Longitude either, but thought they were nice grand words to say.)</p>\n\n<p>Presently she began again. ''I wonder if I shall fall right through the earth! How funny it''ll seem to come out among the people that walk with their heads downward! The Antipathies, I think—'' (she was rather glad there was no one listening, this time, as it didn''t sound at all the right word) ''—but I shall have to ask them what the name of the country is, you know. Please, Ma''am, is this New Zealand or Australia?'' (and she tried to curtsey as she spoke—fancy curtseying as you''re falling through the air! Do you think you could manage it?) ''And what an ignorant little girl she''ll think me for asking! No, it''ll never do to ask: perhaps I shall see it written up somewhere.''</p>\n\n<p>Down, down, down. There was nothing else to do, so Alice soon began talking again. ''Dinah''ll miss me very much to-night, I should think!'' (Dinah was the cat.) ''I hope they''ll remember her saucer of milk at tea-time. Dinah my dear! I wish you were down here with me! There are no mice in the air, I''m afraid, but you might catch a bat, and that''s very like a mouse, you know. But do cats eat bats, I wonder?'' And here Alice began to get rather sleepy, and went on saying to herself, in a dreamy sort of way, ''Do cats eat bats? Do cats eat bats?'' and sometimes, ''Do bats eat cats?'' for, you see, as she couldn''t answer either question, it didn''t much matter which way she put it. She felt that she was dozing off, and had just begun to dream that she was walking hand in hand with Dinah, and saying to her very earnestly, ''Now, Dinah, tell me the truth: did you ever eat a bat?'' when suddenly, thump! thump! down she came upon a heap of sticks and dry leaves, and the fall was over.</p>\n\n<p>Alice was not a bit hurt, and she jumped up on to her feet in a moment: she looked up, but it was all dark overhead; before her was another long passage, and the White Rabbit was still in sight, hurrying down it. There was not a moment to be lost: away went Alice like the wind, and was just in time to hear it say, as it turned a corner, ''Oh my ears and whiskers, how late it''s getting!'' She was close behind it when she turned the corner, but the Rabbit was no longer to be seen: she found herself in a long, low hall, which was lit up by a row of lamps hanging from the roof.</p>\n\n<p>There were doors all round the hall, but they were all locked; and when Alice had been all the way down one side and up the other, trying every door, she walked sadly down the middle, wondering how she was ever to get out again.</p>\n\n<p>Suddenly she came upon a little three-legged table, all made of solid glass; there was nothing on it except a tiny golden key, and Alice''s first thought was that it might belong to one of the doors of the hall; but, alas! either the locks were too large, or the key was too small, but at any rate it would not open any of them.</p>\n\n<p>However, on the second time round, she came upon a low curtain she had not noticed before, and behind it was a little door about fifteen inches high: she tried the little golden key in the lock, and to her great delight it fitted!</p>\n\n<p>Alice opened the door and found that it led into a small passage, not much larger than a rat-hole: she knelt down and looked along the passage into the loveliest garden you ever saw. How she longed to get out of that dark hall, and wander about among those beds of bright flowers and those cool fountains, but she could not even get her head though the doorway; ''and even if my head would go through,'' thought poor Alice, ''it would be of very little use without my shoulders. Oh, how I wish I could shut up like a telescope! I think I could, if I only know how to begin.'' For, you see, so many out-of-the-way things had happened lately, that Alice had begun to think that very few things indeed were really impossible.</p>\n\n<p>There seemed to be no use in waiting by the little door, so she went back to the table, half hoping she might find another key on it, or at any rate a book of rules for shutting people up like telescopes: this time she found a little bottle on it, (''which certainly was not here before,'' said Alice,) and round the neck of the bottle was a paper label, with the words ''DRINK ME'' beautifully printed on it in large letters.</p>\n\n<p>It was all very well to say ''Drink me,'' but the wise little Alice was not going to do that in a hurry. ''No, I''ll look first,'' she said, ''and see whether it''s marked "poison" or not''; for she had read several nice little histories about children who had got burnt, and eaten up by wild beasts and other unpleasant things, all because they would not remember the simple rules their friends had taught them: such as, that a red-hot poker will burn you if you hold it too long; and that if you cut your finger very deeply with a knife, it usually bleeds; and she had never forgotten that, if you drink much from a bottle marked ''poison,'' it is almost certain to disagree with you, sooner or later.</p>\n\n<p>However, this bottle was not marked ''poison,'' so Alice ventured to taste it, and finding it very nice, (it had, in fact, a sort of mixed flavour of cherry-tart, custard, pine-apple, roast turkey, toffee, and hot buttered toast,) she very soon finished it off.</p>\n\n<hr /><p>''What a curious feeling!'' said Alice; ''I must be shutting up like a telescope.''</p>\n\n<p>And so it was indeed: she was now only ten inches high, and her face brightened up at the thought that she was now the right size for going through the little door into that lovely garden. First, however, she waited for a few minutes to see if she was going to shrink any further: she felt a little nervous about this; ''for it might end, you know,'' said Alice to herself, ''in my going out altogether, like a candle. I wonder what I should be like then?'' And she tried to fancy what the flame of a candle is like after the candle is blown out, for she could not remember ever having seen such a thing.</p>\n\n<p>After a while, finding that nothing more happened, she decided on going into the garden at once; but, alas for poor Alice! when she got to the door, she found she had forgotten the little golden key, and when she went back to the table for it, she found she could not possibly reach it: she could see it quite plainly through the glass, and she tried her best to climb up one of the legs of the table, but it was too slippery; and when she had tired herself out with trying, the poor little thing sat down and cried.</p>\n\n<p>''Come, there''s no use in crying like that!'' said Alice to herself, rather sharply; ''I advise you to leave off this minute!'' She generally gave herself very good advice, (though she very seldom followed it), and sometimes she scolded herself so severely as to bring tears into her eyes; and once she remembered trying to box her own ears for having cheated herself in a game of croquet she was playing against herself, for this curious child was very fond of pretending to be two people. ''But it''s no use now,'' thought poor Alice, ''to pretend to be two people! Why, there''s hardly enough of me left to make one respectable person!''</p>\n\n<p>Soon her eye fell on a little glass box that was lying under the table: she opened it, and found in it a very small cake, on which the words ''EAT ME'' were beautifully marked in currants. ''Well, I''ll eat it,'' said Alice, ''and if it makes me grow larger, I can reach the key; and if it makes me grow smaller, I can creep under the door; so either way I''ll get into the garden, and I don''t care which happens!''</p>\n\n<p>She ate a little bit, and said anxiously to herself, ''Which way? Which way?'', holding her hand on the top of her head to feel which way it was growing, and she was quite surprised to find that she remained the same size: to be sure, this generally happens when one eats cake, but Alice had got so much into the way of expecting nothing but out-of-the-way things to happen, that it seemed quite dull and stupid for life to go on in the common way.</p>\n\n<p>So she set to work, and very soon finished off the cake.</p>', ''),
(1045, '<p>This is a demo blog for Processwire Ghost Blog, it contains dummy content which allows you to click around and see how Processwire Ghost Blog was made.</p>\n\n<p>If you''d like to set up your own setup, head on over to <a href="http://processwire.com">processwire.com</a> and do a fresh install of Processwire 3.x</p>', '');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `field_cover`
--
-- Creación: 23-07-2016 a las 16:19:37
-- Última actualización: 28-07-2016 a las 11:03:33
--

CREATE TABLE `field_cover` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` varchar(250) NOT NULL,
  `sort` int(10) unsigned NOT NULL,
  `description` text NOT NULL,
  `modified` datetime DEFAULT NULL,
  `created` datetime DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `field_cover`
--

INSERT INTO `field_cover` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`) VALUES
(1, 'testimg-home-1.jpg', 0, '[""]', '2016-07-23 13:28:17', '2016-07-23 13:28:17'),
(1035, 'demo4.jpg', 0, '[""]', '2016-07-25 16:52:43', '2016-07-25 16:52:43'),
(1036, 'testimg-home-1.jpg', 0, '[""]', '2016-07-25 17:19:56', '2016-07-25 17:19:56'),
(1037, 'demo3.jpg', 0, '[""]', '2016-07-25 18:56:25', '2016-07-25 18:56:25'),
(1034, 'cover2.jpg', 0, '[""]', '2016-07-25 18:17:32', '2016-07-25 18:17:32'),
(1023, 'cover1.jpg', 0, '[""]', '2016-07-26 07:35:18', '2016-07-26 07:35:18'),
(1040, 'demo6.jpg', 0, '[""]', '2016-07-26 11:51:34', '2016-07-26 11:51:34'),
(1041, 'testimg-home-1.jpg', 0, '[""]', '2016-07-26 11:53:01', '2016-07-26 11:53:01'),
(1043, 'demo2.jpg', 0, '[""]', '2016-07-26 12:04:31', '2016-07-26 12:04:31'),
(41, 'testimg-home-1.jpg', 0, '[""]', '2016-07-23 19:13:07', '2016-07-23 19:13:07');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `field_email`
--
-- Creación: 20-07-2016 a las 14:01:50
-- Última actualización: 26-07-2016 a las 15:34:36
--

CREATE TABLE `field_email` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` varchar(250) NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `field_email`
--

INSERT INTO `field_email` (`pages_id`, `data`) VALUES
(41, 'ghost@example.com'),
(1036, ''),
(1039, 'edgar@example.com'),
(1042, '');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `field_excerpt`
--
-- Creación: 23-07-2016 a las 20:14:17
-- Última actualización: 26-07-2016 a las 15:02:06
--

CREATE TABLE `field_excerpt` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` mediumtext NOT NULL,
  `data1019` mediumtext
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `field_excerpt`
--

INSERT INTO `field_excerpt` (`pages_id`, `data`, `data1019`) VALUES
(1037, '', ''),
(1035, '', ''),
(1040, '', ''),
(1043, '', '');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `field_favicon`
--
-- Creación: 25-07-2016 a las 21:43:52
-- Última actualización: 26-07-2016 a las 10:26:50
--

CREATE TABLE `field_favicon` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` varchar(250) NOT NULL,
  `sort` int(10) unsigned NOT NULL,
  `description` text NOT NULL,
  `modified` datetime DEFAULT NULL,
  `created` datetime DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `field_favicon`
--

INSERT INTO `field_favicon` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`) VALUES
(1029, 'favicon.ico', 0, '[""]', '2016-07-26 07:26:50', '2016-07-26 07:26:50');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `field_fullname`
--
-- Creación: 23-07-2016 a las 17:43:21
-- Última actualización: 26-07-2016 a las 15:34:36
--

CREATE TABLE `field_fullname` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `field_fullname`
--

INSERT INTO `field_fullname` (`pages_id`, `data`) VALUES
(41, 'Ghost Writer'),
(1036, 'Martin Luther King'),
(1039, 'Edgar Rice Burroughs'),
(1042, 'Lewis Carroll');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `field_images`
--
-- Creación: 23-07-2016 a las 20:18:32
-- Última actualización: 26-07-2016 a las 14:51:36
--

CREATE TABLE `field_images` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` varchar(250) NOT NULL,
  `sort` int(10) unsigned NOT NULL,
  `description` text NOT NULL,
  `modified` datetime DEFAULT NULL,
  `created` datetime DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `field_images`
--

INSERT INTO `field_images` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`) VALUES
(1040, 'giants_causeway_1c.jpg', 0, '[""]', '2016-07-26 11:51:34', '2016-07-26 11:51:34');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `field_language`
--
-- Creación: 20-07-2016 a las 14:02:38
-- Última actualización: 25-07-2016 a las 20:20:03
--

CREATE TABLE `field_language` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` int(11) NOT NULL,
  `sort` int(10) unsigned NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `field_language`
--

INSERT INTO `field_language` (`pages_id`, `data`, `sort`) VALUES
(40, 1017, 0),
(41, 1017, 0),
(1036, 1019, 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `field_language_files`
--
-- Creación: 20-07-2016 a las 14:02:38
-- Última actualización: 20-07-2016 a las 14:02:38
--

CREATE TABLE `field_language_files` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` varchar(250) NOT NULL,
  `sort` int(10) unsigned NOT NULL,
  `description` text NOT NULL,
  `modified` datetime DEFAULT NULL,
  `created` datetime DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `field_language_files_site`
--
-- Creación: 20-07-2016 a las 14:02:38
-- Última actualización: 20-07-2016 a las 14:02:38
--

CREATE TABLE `field_language_files_site` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` varchar(250) NOT NULL,
  `sort` int(10) unsigned NOT NULL,
  `description` text NOT NULL,
  `modified` datetime DEFAULT NULL,
  `created` datetime DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `field_location`
--
-- Creación: 23-07-2016 a las 17:50:35
-- Última actualización: 26-07-2016 a las 15:34:36
--

CREATE TABLE `field_location` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` text NOT NULL,
  `data1019` text
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `field_location`
--

INSERT INTO `field_location` (`pages_id`, `data`, `data1019`) VALUES
(41, 'Internet', ''),
(1036, 'Memphis, Tennessee', ''),
(1039, 'Chicago, Illinois', ''),
(1042, 'Cheshire, England', '');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `field_logo`
--
-- Creación: 23-07-2016 a las 16:21:52
-- Última actualización: 25-07-2016 a las 20:28:33
--

CREATE TABLE `field_logo` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` varchar(250) NOT NULL,
  `sort` int(10) unsigned NOT NULL,
  `description` text NOT NULL,
  `modified` datetime DEFAULT NULL,
  `created` datetime DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `field_logo`
--

INSERT INTO `field_logo` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`) VALUES
(1029, 'pwlogo.png', 0, '[""]', '2016-07-25 17:28:19', '2016-07-25 17:28:19');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `field_nickname`
--
-- Creación: 28-07-2016 a las 11:05:11
-- Última actualización: 28-07-2016 a las 11:05:11
-- Última revisión: 28-07-2016 a las 11:05:11
--

CREATE TABLE `field_nickname` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `field_nickname`
--

INSERT INTO `field_nickname` (`pages_id`, `data`) VALUES
(1039, 'edgar.rice'),
(41, 'ghost.writer'),
(1042, 'lewis.carroll'),
(1036, 'martin.luther.king');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `field_pass`
--
-- Creación: 20-07-2016 a las 14:01:50
-- Última actualización: 28-07-2016 a las 10:50:04
--

CREATE TABLE `field_pass` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` char(40) NOT NULL,
  `salt` char(32) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=ascii;

--
-- Volcado de datos para la tabla `field_pass`
--

INSERT INTO `field_pass` (`pages_id`, `data`, `salt`) VALUES
(41, 'KnUt3ENX0DZV82OyNuEAuZ03lzHEiQG', '$2y$11$ZHLd0M4AE5WSqq/tMIzuTe'),
(40, '', ''),
(1036, 'KGfYJsGdsY0zbweM/hCG2IuTk.OPDhy', '$2y$11$PEZszTRwkgIASJJ2styZ4e'),
(1039, 'ooFp2P8vWdtXk.GVHohV6JaEg0HXu06', '$2y$11$95K8AG1G5CmxwuTQg2iAd.'),
(1042, 'zb7VIDO7bQ9n.MG5Q3PtvStdRzh./hu', '$2y$11$.Za4Dh/nU8D4epgS12wVfO');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `field_permissions`
--
-- Creación: 20-07-2016 a las 14:01:50
-- Última actualización: 24-07-2016 a las 15:37:47
--

CREATE TABLE `field_permissions` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` int(11) NOT NULL,
  `sort` int(10) unsigned NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `field_permissions`
--

INSERT INTO `field_permissions` (`pages_id`, `data`, `sort`) VALUES
(38, 32, 1),
(1032, 32, 0),
(38, 34, 2),
(38, 35, 3),
(37, 36, 0),
(38, 36, 0),
(1032, 36, 1),
(38, 50, 4),
(38, 51, 5),
(38, 52, 7),
(38, 53, 8),
(1032, 53, 2),
(38, 54, 6);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `field_picture`
--
-- Creación: 23-07-2016 a las 17:45:18
-- Última actualización: 28-07-2016 a las 11:03:33
--

CREATE TABLE `field_picture` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` varchar(250) NOT NULL,
  `sort` int(10) unsigned NOT NULL,
  `description` text NOT NULL,
  `modified` datetime DEFAULT NULL,
  `created` datetime DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `field_picture`
--

INSERT INTO `field_picture` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`) VALUES
(1036, 'mlk.jpg', 0, '[""]', '2016-07-25 17:19:56', '2016-07-25 17:19:56'),
(1039, 'edgar.gif', 0, '[""]', '2016-07-26 11:48:55', '2016-07-26 11:48:55'),
(1042, 'lewis.jpeg', 0, '[""]', '2016-07-26 12:01:19', '2016-07-26 12:01:19'),
(41, 'ghostwriter_logo-1.jpg', 0, '[""]', '2016-07-26 12:34:28', '2016-07-26 12:34:28');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `field_pointer`
--
-- Creación: 23-07-2016 a las 17:09:57
-- Última actualización: 26-07-2016 a las 15:28:36
--

CREATE TABLE `field_pointer` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` int(11) NOT NULL,
  `sort` int(10) unsigned NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `field_pointer`
--

INSERT INTO `field_pointer` (`pages_id`, `data`, `sort`) VALUES
(1021, 1, 0),
(1038, 1023, 0),
(1044, 1041, 0),
(1046, 1045, 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `field_process`
--
-- Creación: 20-07-2016 a las 14:01:50
-- Última actualización: 20-07-2016 a las 14:03:04
--

CREATE TABLE `field_process` (
  `pages_id` int(11) NOT NULL DEFAULT '0',
  `data` int(11) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `field_process`
--

INSERT INTO `field_process` (`pages_id`, `data`) VALUES
(6, 17),
(3, 12),
(8, 12),
(9, 14),
(10, 7),
(11, 47),
(16, 48),
(300, 104),
(21, 50),
(29, 66),
(23, 10),
(304, 138),
(31, 136),
(22, 76),
(30, 68),
(303, 129),
(2, 87),
(302, 121),
(301, 109),
(28, 76),
(1007, 150),
(1010, 159),
(1012, 160),
(1016, 163),
(1018, 164);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `field_publishedat`
--
-- Creación: 23-07-2016 a las 20:15:41
-- Última actualización: 26-07-2016 a las 15:04:36
--

CREATE TABLE `field_publishedat` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `field_publishedat`
--

INSERT INTO `field_publishedat` (`pages_id`, `data`) VALUES
(1037, '1963-08-28 00:00:00'),
(1035, '1948-12-12 00:00:00'),
(1040, '2016-07-24 00:00:00'),
(1043, '2016-11-26 00:00:00');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `field_roles`
--
-- Creación: 20-07-2016 a las 14:01:50
-- Última actualización: 26-07-2016 a las 15:01:36
--

CREATE TABLE `field_roles` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` int(11) NOT NULL,
  `sort` int(10) unsigned NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `field_roles`
--

INSERT INTO `field_roles` (`pages_id`, `data`, `sort`) VALUES
(40, 37, 0),
(41, 37, 0),
(1036, 37, 0),
(1039, 37, 0),
(1042, 37, 0),
(41, 38, 1),
(41, 1032, 2),
(1036, 1032, 1),
(1039, 1032, 1),
(1042, 1032, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `field_tags`
--
-- Creación: 23-07-2016 a las 20:12:04
-- Última actualización: 26-07-2016 a las 15:04:36
--

CREATE TABLE `field_tags` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` int(11) NOT NULL,
  `sort` int(10) unsigned NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `field_tags`
--

INSERT INTO `field_tags` (`pages_id`, `data`, `sort`) VALUES
(1035, 1023, 0),
(1037, 1023, 0),
(1040, 1041, 0),
(1043, 1041, 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `field_title`
--
-- Creación: 20-07-2016 a las 14:03:32
-- Última actualización: 30-07-2016 a las 11:25:57
--

CREATE TABLE `field_title` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` text NOT NULL,
  `data1019` text
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `field_title`
--

INSERT INTO `field_title` (`pages_id`, `data`, `data1019`) VALUES
(11, 'Templates', NULL),
(16, 'Fields', NULL),
(22, 'Setup', NULL),
(3, 'Pages', NULL),
(6, 'Add Page', NULL),
(8, 'Tree', NULL),
(9, 'Save Sort', NULL),
(10, 'Edit', NULL),
(21, 'Modules', NULL),
(29, 'Users', NULL),
(30, 'Roles', NULL),
(2, 'Admin', NULL),
(7, 'Trash', NULL),
(27, '404 Not Found', NULL),
(302, 'Insert Link', NULL),
(23, 'Login', NULL),
(304, 'Profile', NULL),
(301, 'Empty Trash', NULL),
(300, 'Search', NULL),
(303, 'Insert Image', NULL),
(28, 'Access', NULL),
(31, 'Permissions', NULL),
(32, 'Edit pages', NULL),
(34, 'Delete pages', NULL),
(35, 'Move pages (change parent)', NULL),
(36, 'View pages', NULL),
(50, 'Sort child pages', NULL),
(51, 'Change templates on pages', NULL),
(52, 'Administer users', NULL),
(53, 'User can update profile/password', NULL),
(54, 'Lock or unlock a page', NULL),
(1, 'PW Ghost', 'PW Ghost'),
(1006, 'Use Page Lister', NULL),
(1007, 'Find', NULL),
(1010, 'Recent', NULL),
(1011, 'Can see recently edited pages', NULL),
(1012, 'Logs', NULL),
(1013, 'Can view system logs', NULL),
(1014, 'Can manage system logs', NULL),
(1015, 'Administer languages and static translation files', NULL),
(1016, 'Languages', NULL),
(1017, 'English', 'Inglés'),
(1018, 'Language Translator', NULL),
(1019, 'Spanish', 'Español'),
(1020, 'Menu', 'Menu'),
(1021, 'Home', 'Inicio'),
(1022, 'Tags', 'Tags'),
(1023, 'Speeches', 'Speeches'),
(1024, 'Classes', 'Clases'),
(1025, 'Post', 'Post'),
(1038, 'Speeches', 'Discursos'),
(1027, 'Blog', 'Blog'),
(1029, 'Meta', 'Processwire Ghost Blog'),
(1037, 'I Have a Dream', ''),
(1031, 'Authors', 'Autores'),
(1033, 'Rss', 'Rss'),
(1034, 'Fables', 'Fábulas'),
(1035, 'The Purpose of Education', ''),
(1040, 'Out to Sea', 'Out to Sea'),
(1041, 'Fiction', 'Ficción'),
(1043, 'Down The Rabbit Hole', 'Down The Rabbit Hole'),
(1044, 'Fiction', 'Ficción'),
(1045, 'About', 'Acerca'),
(1046, 'About', 'Acerca');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `field_website`
--
-- Creación: 23-07-2016 a las 17:47:36
-- Última actualización: 26-07-2016 a las 15:34:36
--

CREATE TABLE `field_website` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `field_year`
--
-- Creación: 23-07-2016 a las 20:48:52
-- Última actualización: 23-07-2016 a las 20:52:11
--

CREATE TABLE `field_year` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `field_year`
--

INSERT INTO `field_year` (`pages_id`, `data`) VALUES
(1029, 2016);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `modules`
--
-- Creación: 20-07-2016 a las 14:01:50
-- Última actualización: 26-07-2016 a las 15:36:06
--

CREATE TABLE `modules` (
  `id` int(10) unsigned NOT NULL,
  `class` varchar(128) CHARACTER SET ascii NOT NULL,
  `flags` int(11) NOT NULL DEFAULT '0',
  `data` text NOT NULL,
  `created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=MyISAM AUTO_INCREMENT=174 DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `modules`
--

INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES
(1, 'FieldtypeTextarea', 0, '', '2016-07-20 14:01:50'),
(2, 'FieldtypeNumber', 0, '', '2016-07-20 14:01:50'),
(3, 'FieldtypeText', 0, '', '2016-07-20 14:01:50'),
(4, 'FieldtypePage', 0, '', '2016-07-20 14:01:50'),
(30, 'InputfieldForm', 0, '', '2016-07-20 14:01:50'),
(6, 'FieldtypeFile', 0, '', '2016-07-20 14:01:50'),
(7, 'ProcessPageEdit', 1, '', '2016-07-20 14:01:50'),
(10, 'ProcessLogin', 0, '', '2016-07-20 14:01:50'),
(12, 'ProcessPageList', 0, '{"pageLabelField":"title","paginationLimit":25,"limit":50}', '2016-07-20 14:01:50'),
(121, 'ProcessPageEditLink', 1, '', '2016-07-20 14:01:50'),
(14, 'ProcessPageSort', 0, '', '2016-07-20 14:01:50'),
(15, 'InputfieldPageListSelect', 0, '', '2016-07-20 14:01:50'),
(117, 'JqueryUI', 1, '', '2016-07-20 14:01:50'),
(17, 'ProcessPageAdd', 0, '', '2016-07-20 14:01:50'),
(125, 'SessionLoginThrottle', 11, '', '2016-07-20 14:01:50'),
(122, 'InputfieldPassword', 0, '', '2016-07-20 14:01:50'),
(25, 'InputfieldAsmSelect', 0, '', '2016-07-20 14:01:50'),
(116, 'JqueryCore', 1, '', '2016-07-20 14:01:50'),
(27, 'FieldtypeModule', 0, '', '2016-07-20 14:01:50'),
(28, 'FieldtypeDatetime', 0, '', '2016-07-20 14:01:50'),
(29, 'FieldtypeEmail', 0, '', '2016-07-20 14:01:50'),
(108, 'InputfieldURL', 0, '', '2016-07-20 14:01:50'),
(32, 'InputfieldSubmit', 0, '', '2016-07-20 14:01:50'),
(33, 'InputfieldWrapper', 0, '', '2016-07-20 14:01:50'),
(34, 'InputfieldText', 0, '', '2016-07-20 14:01:50'),
(35, 'InputfieldTextarea', 0, '', '2016-07-20 14:01:50'),
(36, 'InputfieldSelect', 0, '', '2016-07-20 14:01:50'),
(37, 'InputfieldCheckbox', 0, '', '2016-07-20 14:01:50'),
(38, 'InputfieldCheckboxes', 0, '', '2016-07-20 14:01:50'),
(39, 'InputfieldRadios', 0, '', '2016-07-20 14:01:50'),
(40, 'InputfieldHidden', 0, '', '2016-07-20 14:01:50'),
(41, 'InputfieldName', 0, '', '2016-07-20 14:01:50'),
(43, 'InputfieldSelectMultiple', 0, '', '2016-07-20 14:01:50'),
(45, 'JqueryWireTabs', 0, '', '2016-07-20 14:01:50'),
(46, 'ProcessPage', 0, '', '2016-07-20 14:01:50'),
(47, 'ProcessTemplate', 0, '', '2016-07-20 14:01:50'),
(48, 'ProcessField', 0, '', '2016-07-20 14:01:50'),
(50, 'ProcessModule', 0, '', '2016-07-20 14:01:50'),
(114, 'PagePermissions', 3, '', '2016-07-20 14:01:50'),
(97, 'FieldtypeCheckbox', 1, '', '2016-07-20 14:01:50'),
(115, 'PageRender', 3, '{"clearCache":1}', '2016-07-20 14:01:50'),
(55, 'InputfieldFile', 0, '', '2016-07-20 14:01:50'),
(56, 'InputfieldImage', 0, '', '2016-07-20 14:01:50'),
(57, 'FieldtypeImage', 0, '', '2016-07-20 14:01:50'),
(60, 'InputfieldPage', 0, '{"inputfieldClasses":["InputfieldSelect","InputfieldSelectMultiple","InputfieldCheckboxes","InputfieldRadios","InputfieldAsmSelect","InputfieldPageListSelect","InputfieldPageListSelectMultiple","InputfieldPageAutocomplete"]}', '2016-07-20 14:01:50'),
(61, 'TextformatterEntities', 0, '', '2016-07-20 14:01:50'),
(66, 'ProcessUser', 0, '{"showFields":["name","email","roles"]}', '2016-07-20 14:01:50'),
(67, 'MarkupAdminDataTable', 0, '', '2016-07-20 14:01:50'),
(68, 'ProcessRole', 0, '{"showFields":["name"]}', '2016-07-20 14:01:50'),
(76, 'ProcessList', 0, '', '2016-07-20 14:01:50'),
(78, 'InputfieldFieldset', 0, '', '2016-07-20 14:01:50'),
(79, 'InputfieldMarkup', 0, '', '2016-07-20 14:01:50'),
(80, 'InputfieldEmail', 0, '', '2016-07-20 14:01:50'),
(89, 'FieldtypeFloat', 1, '', '2016-07-20 14:01:50'),
(83, 'ProcessPageView', 0, '', '2016-07-20 14:01:50'),
(84, 'FieldtypeInteger', 0, '', '2016-07-20 14:01:50'),
(85, 'InputfieldInteger', 0, '', '2016-07-20 14:01:50'),
(86, 'InputfieldPageName', 0, '', '2016-07-20 14:01:50'),
(87, 'ProcessHome', 0, '', '2016-07-20 14:01:50'),
(90, 'InputfieldFloat', 0, '', '2016-07-20 14:01:50'),
(94, 'InputfieldDatetime', 0, '', '2016-07-20 14:01:50'),
(98, 'MarkupPagerNav', 0, '', '2016-07-20 14:01:50'),
(129, 'ProcessPageEditImageSelect', 1, '', '2016-07-20 14:01:50'),
(103, 'JqueryTableSorter', 1, '', '2016-07-20 14:01:50'),
(104, 'ProcessPageSearch', 1, '{"searchFields":"title","displayField":"title path"}', '2016-07-20 14:01:50'),
(105, 'FieldtypeFieldsetOpen', 1, '', '2016-07-20 14:01:50'),
(106, 'FieldtypeFieldsetClose', 1, '', '2016-07-20 14:01:50'),
(107, 'FieldtypeFieldsetTabOpen', 1, '', '2016-07-20 14:01:50'),
(109, 'ProcessPageTrash', 1, '', '2016-07-20 14:01:50'),
(111, 'FieldtypePageTitle', 1, '', '2016-07-20 14:01:50'),
(112, 'InputfieldPageTitle', 0, '', '2016-07-20 14:01:50'),
(113, 'MarkupPageArray', 3, '', '2016-07-20 14:01:50'),
(131, 'InputfieldButton', 0, '', '2016-07-20 14:01:50'),
(133, 'FieldtypePassword', 1, '', '2016-07-20 14:01:50'),
(134, 'ProcessPageType', 1, '{"showFields":[]}', '2016-07-20 14:01:50'),
(135, 'FieldtypeURL', 1, '', '2016-07-20 14:01:50'),
(136, 'ProcessPermission', 1, '{"showFields":["name","title"]}', '2016-07-20 14:01:50'),
(137, 'InputfieldPageListSelectMultiple', 0, '', '2016-07-20 14:01:50'),
(138, 'ProcessProfile', 1, '{"profileFields":["pass","email","language"]}', '2016-07-20 14:01:50'),
(139, 'SystemUpdater', 1, '{"systemVersion":15,"coreVersion":"3.0.25"}', '2016-07-20 14:01:50'),
(148, 'AdminThemeDefault', 10, '{"colors":"warm"}', '2016-07-20 14:01:50'),
(149, 'InputfieldSelector', 10, '', '2016-07-20 14:01:50'),
(150, 'ProcessPageLister', 0, '', '2016-07-20 14:01:50'),
(151, 'JqueryMagnific', 1, '', '2016-07-20 14:01:50'),
(155, 'InputfieldCKEditor', 0, '', '2016-07-20 14:01:50'),
(156, 'MarkupHTMLPurifier', 0, '', '2016-07-20 14:01:50'),
(159, 'ProcessRecentPages', 1, '', '2016-07-20 14:02:15'),
(160, 'ProcessLogger', 1, '', '2016-07-20 14:02:19'),
(161, 'InputfieldIcon', 0, '', '2016-07-20 14:02:19'),
(162, 'LanguageSupport', 3, '{"languagesPageID":1016,"defaultLanguagePageID":1017,"otherLanguagePageIDs":[1019],"languageTranslatorPageID":1018}', '2016-07-20 14:02:37'),
(163, 'ProcessLanguage', 1, '', '2016-07-20 14:02:37'),
(164, 'ProcessLanguageTranslator', 1, '', '2016-07-20 14:02:38'),
(165, 'LanguageSupportFields', 3, '', '2016-07-20 14:02:42'),
(166, 'FieldtypeTextLanguage', 1, '', '2016-07-20 14:02:42'),
(167, 'FieldtypePageTitleLanguage', 1, '', '2016-07-20 14:02:42'),
(168, 'FieldtypeTextareaLanguage', 1, '', '2016-07-20 14:02:42'),
(169, 'LanguageSupportPageNames', 3, '{"moduleVersion":9}', '2016-07-20 14:02:45'),
(170, 'LanguageTabs', 11, '', '2016-07-20 14:02:48'),
(171, 'MarkupRSS', 0, '{"title":"Untitled RSS Feed","url":"","description":"","xsl":"","css":"","copyright":"","ttl":60,"itemTitleField":"title","itemDescriptionField":"content","itemDescriptionLength":1024,"itemDateField":"published"}', '2016-07-23 21:44:07'),
(172, 'MarkupPageFields', 3, '', '2016-07-23 21:45:15'),
(173, 'InputfieldPageAutocomplete', 0, '', '2016-07-26 15:35:37');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pages`
--
-- Creación: 20-07-2016 a las 14:03:32
-- Última actualización: 30-07-2016 a las 11:25:57
--

CREATE TABLE `pages` (
  `id` int(10) unsigned NOT NULL,
  `parent_id` int(11) unsigned NOT NULL DEFAULT '0',
  `templates_id` int(11) unsigned NOT NULL DEFAULT '0',
  `name` varchar(128) CHARACTER SET ascii NOT NULL,
  `status` int(10) unsigned NOT NULL DEFAULT '1',
  `modified` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `modified_users_id` int(10) unsigned NOT NULL DEFAULT '2',
  `created` timestamp NOT NULL DEFAULT '2015-12-17 19:09:00',
  `created_users_id` int(10) unsigned NOT NULL DEFAULT '2',
  `published` datetime DEFAULT NULL,
  `sort` int(11) NOT NULL DEFAULT '0',
  `name1019` varchar(128) CHARACTER SET ascii DEFAULT NULL,
  `status1019` int(10) unsigned NOT NULL DEFAULT '1'
) ENGINE=MyISAM AUTO_INCREMENT=1047 DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `pages`
--

INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`, `name1019`, `status1019`) VALUES
(1, 0, 1, 'home', 9, '2016-07-30 11:25:33', 41, '2016-07-20 14:01:50', 2, '2016-07-21 00:01:50', 0, 'es', 1),
(2, 1, 2, 'astral', 1035, '2016-07-26 16:04:06', 41, '2016-07-20 14:01:50', 2, '2016-07-21 00:01:50', 11, 'astral', 1),
(3, 2, 2, 'page', 21, '2016-07-20 14:01:50', 41, '2016-07-20 14:01:50', 2, '2016-07-21 00:01:50', 0, NULL, 1),
(6, 3, 2, 'add', 21, '2016-07-20 14:02:21', 40, '2016-07-20 14:01:50', 2, '2016-07-21 00:01:50', 0, NULL, 1),
(7, 1, 2, 'trash', 1039, '2016-07-20 14:01:50', 41, '2016-07-20 14:01:50', 2, '2016-07-21 00:01:50', 12, NULL, 1),
(8, 3, 2, 'list', 1045, '2016-07-20 14:02:22', 41, '2016-07-20 14:01:50', 2, '2016-07-21 00:01:50', 1, NULL, 1),
(9, 3, 2, 'sort', 1047, '2016-07-20 14:01:50', 41, '2016-07-20 14:01:50', 2, '2016-07-21 00:01:50', 2, NULL, 1),
(10, 3, 2, 'edit', 1045, '2016-07-20 14:02:22', 41, '2016-07-20 14:01:50', 2, '2016-07-21 00:01:50', 3, NULL, 1),
(11, 22, 2, 'template', 21, '2016-07-20 14:01:50', 41, '2016-07-20 14:01:50', 2, '2016-07-21 00:01:50', 0, NULL, 1),
(16, 22, 2, 'field', 21, '2016-07-20 14:01:50', 41, '2016-07-20 14:01:50', 2, '2016-07-21 00:01:50', 2, NULL, 1),
(21, 2, 2, 'module', 21, '2016-07-20 14:01:50', 41, '2016-07-20 14:01:50', 2, '2016-07-21 00:01:50', 2, NULL, 1),
(22, 2, 2, 'setup', 21, '2016-07-20 14:01:50', 41, '2016-07-20 14:01:50', 2, '2016-07-21 00:01:50', 1, NULL, 1),
(23, 2, 2, 'login', 1035, '2016-07-20 14:01:50', 41, '2016-07-20 14:01:50', 2, '2016-07-21 00:01:50', 4, NULL, 1),
(27, 1, 55, 'http404', 1035, '2016-07-26 13:38:15', 41, '2016-07-20 14:01:50', 3, '2016-07-21 00:01:50', 10, NULL, 1),
(28, 2, 2, 'access', 13, '2016-07-20 14:01:50', 41, '2016-07-20 14:01:50', 2, '2016-07-21 00:01:50', 3, NULL, 1),
(29, 28, 2, 'users', 29, '2016-07-20 14:01:50', 41, '2016-07-20 14:01:50', 2, '2016-07-21 00:01:50', 0, NULL, 1),
(30, 28, 2, 'roles', 29, '2016-07-20 14:01:50', 41, '2016-07-20 14:01:50', 2, '2016-07-21 00:01:50', 1, NULL, 1),
(31, 28, 2, 'permissions', 29, '2016-07-20 14:01:50', 41, '2016-07-20 14:01:50', 2, '2016-07-21 00:01:50', 2, NULL, 1),
(32, 31, 5, 'page-edit', 25, '2016-07-20 14:01:50', 41, '2016-07-20 14:01:50', 2, '2016-07-21 00:01:50', 2, NULL, 1),
(34, 31, 5, 'page-delete', 25, '2016-07-20 14:01:50', 41, '2016-07-20 14:01:50', 2, '2016-07-21 00:01:50', 3, NULL, 1),
(35, 31, 5, 'page-move', 25, '2016-07-20 14:01:50', 41, '2016-07-20 14:01:50', 2, '2016-07-21 00:01:50', 4, NULL, 1),
(36, 31, 5, 'page-view', 25, '2016-07-20 14:01:50', 41, '2016-07-20 14:01:50', 2, '2016-07-21 00:01:50', 0, NULL, 1),
(37, 30, 4, 'guest', 25, '2016-07-20 14:01:50', 41, '2016-07-20 14:01:50', 2, '2016-07-21 00:01:50', 0, NULL, 1),
(38, 30, 4, 'superuser', 25, '2016-07-20 14:01:50', 41, '2016-07-20 14:01:50', 2, '2016-07-21 00:01:50', 1, NULL, 1),
(41, 29, 3, 'ghost', 1, '2016-07-28 11:03:06', 41, '2016-07-20 14:01:50', 2, '2016-07-21 00:01:50', 0, NULL, 1),
(40, 29, 3, 'guest', 25, '2016-07-20 14:02:38', 41, '2016-07-20 14:01:50', 2, '2016-07-21 00:01:50', 1, NULL, 1),
(50, 31, 5, 'page-sort', 25, '2016-07-20 14:01:50', 41, '2016-07-20 14:01:50', 41, '2016-07-21 00:01:50', 5, NULL, 1),
(51, 31, 5, 'page-template', 25, '2016-07-20 14:01:50', 41, '2016-07-20 14:01:50', 41, '2016-07-21 00:01:50', 6, NULL, 1),
(52, 31, 5, 'user-admin', 25, '2016-07-20 14:01:50', 41, '2016-07-20 14:01:50', 41, '2016-07-21 00:01:50', 10, NULL, 1),
(53, 31, 5, 'profile-edit', 1, '2016-07-20 14:01:50', 41, '2016-07-20 14:01:50', 41, '2016-07-21 00:01:50', 13, NULL, 1),
(54, 31, 5, 'page-lock', 1, '2016-07-20 14:01:50', 41, '2016-07-20 14:01:50', 41, '2016-07-21 00:01:50', 8, NULL, 1),
(300, 3, 2, 'search', 1045, '2016-07-20 14:01:50', 41, '2016-07-20 14:01:50', 2, '2016-07-21 00:01:50', 5, NULL, 1),
(301, 3, 2, 'trash', 1047, '2016-07-20 14:01:50', 41, '2016-07-20 14:01:50', 2, '2016-07-21 00:01:50', 5, NULL, 1),
(302, 3, 2, 'link', 1041, '2016-07-20 14:01:50', 41, '2016-07-20 14:01:50', 2, '2016-07-21 00:01:50', 6, NULL, 1),
(303, 3, 2, 'image', 1041, '2016-07-20 14:01:50', 41, '2016-07-20 14:01:50', 2, '2016-07-21 00:01:50', 7, NULL, 1),
(304, 2, 2, 'profile', 1025, '2016-07-20 14:01:50', 41, '2016-07-20 14:01:50', 41, '2016-07-21 00:01:50', 5, NULL, 1),
(1006, 31, 5, 'page-lister', 1, '2016-07-20 14:01:50', 40, '2016-07-20 14:01:50', 40, '2016-07-21 00:01:50', 9, NULL, 1),
(1007, 3, 2, 'lister', 1, '2016-07-20 14:01:50', 40, '2016-07-20 14:01:50', 40, '2016-07-21 00:01:50', 8, NULL, 1),
(1010, 3, 2, 'recent-pages', 1, '2016-07-20 14:02:15', 40, '2016-07-20 14:02:15', 40, '2016-07-21 00:02:15', 9, NULL, 1),
(1011, 31, 5, 'page-edit-recent', 1, '2016-07-20 14:02:15', 40, '2016-07-20 14:02:15', 40, '2016-07-21 00:02:15', 10, NULL, 1),
(1012, 22, 2, 'logs', 1, '2016-07-20 14:02:19', 40, '2016-07-20 14:02:19', 40, '2016-07-21 00:02:19', 2, NULL, 1),
(1013, 31, 5, 'logs-view', 1, '2016-07-20 14:02:19', 40, '2016-07-20 14:02:19', 40, '2016-07-21 00:02:19', 11, NULL, 1),
(1014, 31, 5, 'logs-edit', 1, '2016-07-20 14:02:19', 40, '2016-07-20 14:02:19', 40, '2016-07-21 00:02:19', 12, NULL, 1),
(1015, 31, 5, 'lang-edit', 1, '2016-07-20 14:02:37', 41, '2016-07-20 14:02:37', 41, '2016-07-21 00:02:37', 13, NULL, 1),
(1016, 22, 2, 'languages', 16, '2016-07-20 14:02:38', 41, '2016-07-20 14:02:38', 41, '2016-07-21 00:02:38', 3, NULL, 1),
(1017, 1016, 43, 'default', 16, '2016-07-25 20:43:23', 41, '2016-07-20 14:02:38', 41, '2016-07-21 00:02:38', 0, NULL, 1),
(1018, 22, 2, 'language-translator', 1040, '2016-07-20 14:02:38', 41, '2016-07-20 14:02:38', 41, '2016-07-21 00:02:38', 4, NULL, 1),
(1019, 1016, 43, 'es', 1, '2016-07-25 20:43:40', 41, '2016-07-20 14:03:32', 41, '2016-07-21 00:03:32', 1, NULL, 1),
(1020, 1, 44, 'menu', 1, '2016-07-25 21:10:52', 41, '2016-07-23 17:08:00', 41, '2016-07-24 03:08:00', 4, NULL, 1),
(1021, 1020, 45, 'home', 1, '2016-07-25 20:48:30', 41, '2016-07-23 17:13:04', 41, '2016-07-24 03:13:25', 0, NULL, 1),
(1022, 1, 46, 'tags', 1, '2016-07-26 13:20:48', 41, '2016-07-23 17:38:01', 41, '2016-07-24 03:38:01', 5, NULL, 1),
(1023, 1022, 47, 'speeches', 1, '2016-07-26 11:05:23', 41, '2016-07-23 17:39:57', 41, '2016-07-24 03:39:57', 0, NULL, 1),
(1024, 1, 48, 'classes', 1, '2016-07-26 13:21:07', 41, '2016-07-23 20:07:34', 41, '2016-07-24 06:07:34', 7, NULL, 1),
(1025, 1024, 49, 'post', 1, '2016-07-23 20:08:50', 41, '2016-07-23 20:08:30', 41, '2016-07-24 06:08:50', 0, NULL, 1),
(1027, 1, 50, 'blog', 1, '2016-07-25 20:47:44', 41, '2016-07-23 20:22:44', 41, '2016-07-24 06:22:44', 6, 'blog', 1),
(1038, 1020, 45, 'speeches', 1, '2016-07-26 12:23:22', 41, '2016-07-26 12:23:02', 41, '2016-07-26 22:23:22', 1, 'discursos', 1),
(1029, 1, 52, 'meta', 1, '2016-07-30 11:25:09', 41, '2016-07-23 20:51:48', 41, '2016-07-24 06:51:55', 3, NULL, 1),
(1040, 1027, 51, 'out-to-sea', 1, '2016-07-26 14:55:09', 41, '2016-07-26 14:50:01', 41, '2016-07-27 00:55:09', 2, NULL, 1),
(1031, 1, 53, 'authors', 1, '2016-07-26 13:20:53', 41, '2016-07-23 22:48:22', 41, '2016-07-24 08:48:22', 9, NULL, 1),
(1037, 1027, 51, 'i-have-a-dream', 1, '2016-07-25 21:56:25', 41, '2016-07-25 21:54:02', 41, '2016-07-26 07:56:25', 1, NULL, 0),
(1032, 30, 4, 'author', 1, '2016-07-24 15:37:26', 41, '2016-07-24 15:36:26', 41, '2016-07-25 01:37:26', 2, NULL, 1),
(1033, 1, 54, 'rss', 1, '2016-07-26 15:12:49', 41, '2016-07-24 16:26:19', 41, '2016-07-25 02:26:19', 8, NULL, 1),
(1034, 1022, 47, 'fables', 1, '2016-07-25 21:17:32', 41, '2016-07-25 18:44:48', 41, '2016-07-26 04:44:53', 1, NULL, 1),
(1035, 1027, 51, 'the-purpose-of-education', 1, '2016-07-26 10:21:25', 41, '2016-07-25 19:50:32', 41, '2016-07-26 05:52:43', 1, NULL, 1),
(1039, 29, 3, 'edgar', 1, '2016-07-28 10:59:39', 41, '2016-07-26 14:47:52', 41, '2016-07-27 00:48:56', 3, NULL, 1),
(1036, 29, 3, 'martinlk', 1, '2016-07-28 11:03:23', 41, '2016-07-25 20:18:13', 41, '2016-07-26 06:19:57', 2, NULL, 1),
(1041, 1022, 47, 'fiction', 1, '2016-07-26 14:53:01', 41, '2016-07-26 14:52:18', 41, '2016-07-27 00:53:01', 2, 'ficcion', 1),
(1042, 29, 3, 'lewis', 1, '2016-07-28 11:03:15', 41, '2016-07-26 15:00:10', 41, '2016-07-27 01:01:20', 4, NULL, 1),
(1043, 1027, 51, 'down-the-rabbit-hole', 1, '2016-07-26 15:04:31', 41, '2016-07-26 15:01:56', 41, '2016-07-27 01:04:31', 3, NULL, 1),
(1044, 1020, 45, 'fiction', 1, '2016-07-26 15:07:02', 41, '2016-07-26 15:06:48', 41, '2016-07-27 01:07:02', 2, 'ficcion', 1),
(1045, 1, 29, 'about', 1, '2016-07-26 15:36:05', 41, '2016-07-26 15:26:30', 41, '2016-07-27 01:28:04', 10, 'acerca', 1),
(1046, 1020, 45, 'about', 1, '2016-07-26 15:28:24', 41, '2016-07-26 15:28:19', 41, '2016-07-27 01:28:24', 3, 'acerca', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pages_access`
--
-- Creación: 20-07-2016 a las 14:01:50
-- Última actualización: 26-07-2016 a las 15:28:36
--

CREATE TABLE `pages_access` (
  `pages_id` int(11) NOT NULL,
  `templates_id` int(11) NOT NULL,
  `ts` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `pages_access`
--

INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES
(1017, 2, '2016-07-25 20:15:10'),
(1019, 2, '2016-07-25 20:15:10'),
(37, 2, '2016-07-25 20:15:10'),
(38, 2, '2016-07-25 20:15:10'),
(1032, 2, '2016-07-25 20:15:10'),
(32, 2, '2016-07-25 20:15:10'),
(34, 2, '2016-07-25 20:15:10'),
(35, 2, '2016-07-25 20:15:10'),
(36, 2, '2016-07-25 20:15:10'),
(50, 2, '2016-07-25 20:15:10'),
(51, 2, '2016-07-25 20:15:10'),
(52, 2, '2016-07-25 20:15:10'),
(53, 2, '2016-07-25 20:15:10'),
(54, 2, '2016-07-25 20:15:10'),
(1006, 2, '2016-07-25 20:15:10'),
(1011, 2, '2016-07-25 20:15:10'),
(1013, 2, '2016-07-25 20:15:10'),
(1014, 2, '2016-07-25 20:15:10'),
(1015, 2, '2016-07-25 20:15:10'),
(1038, 1, '2016-07-26 12:23:02'),
(27, 1, '2016-07-26 13:38:15'),
(1044, 1, '2016-07-26 15:06:48'),
(1045, 1, '2016-07-26 15:26:30'),
(1046, 1, '2016-07-26 15:28:19');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pages_parents`
--
-- Creación: 20-07-2016 a las 14:01:50
-- Última actualización: 25-07-2016 a las 20:49:03
--

CREATE TABLE `pages_parents` (
  `pages_id` int(10) unsigned NOT NULL,
  `parents_id` int(10) unsigned NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `pages_parents`
--

INSERT INTO `pages_parents` (`pages_id`, `parents_id`) VALUES
(2, 1),
(3, 1),
(3, 2),
(22, 1),
(22, 2),
(28, 1),
(28, 2),
(29, 1),
(29, 2),
(29, 28),
(30, 1),
(30, 2),
(30, 28),
(31, 1),
(31, 2),
(31, 28),
(1016, 2),
(1016, 22);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pages_sortfields`
--
-- Creación: 20-07-2016 a las 14:01:50
-- Última actualización: 20-07-2016 a las 14:01:50
--

CREATE TABLE `pages_sortfields` (
  `pages_id` int(10) unsigned NOT NULL DEFAULT '0',
  `sortfield` varchar(20) NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `session_login_throttle`
--
-- Creación: 20-07-2016 a las 14:01:50
-- Última actualización: 30-07-2016 a las 11:25:27
--

CREATE TABLE `session_login_throttle` (
  `name` varchar(128) NOT NULL,
  `attempts` int(10) unsigned NOT NULL DEFAULT '0',
  `last_attempt` int(10) unsigned NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `session_login_throttle`
--

INSERT INTO `session_login_throttle` (`name`, `attempts`, `last_attempt`) VALUES
('ghost', 1, 1469877900);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `templates`
--
-- Creación: 20-07-2016 a las 14:01:50
-- Última actualización: 30-07-2016 a las 11:41:57
--

CREATE TABLE `templates` (
  `id` int(10) unsigned NOT NULL,
  `name` varchar(250) CHARACTER SET ascii NOT NULL,
  `fieldgroups_id` int(10) unsigned NOT NULL DEFAULT '0',
  `flags` int(11) NOT NULL DEFAULT '0',
  `cache_time` mediumint(9) NOT NULL DEFAULT '0',
  `data` text NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=56 DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `templates`
--

INSERT INTO `templates` (`id`, `name`, `fieldgroups_id`, `flags`, `cache_time`, `data`) VALUES
(2, 'admin', 2, 8, 0, '{"useRoles":1,"parentTemplates":[2],"allowPageNum":1,"redirectLogin":23,"slashUrls":1,"noGlobal":1,"compile":3,"modified":1467939476,"ns":"ProcessWire"}'),
(3, 'user', 3, 8, 0, '{"useRoles":1,"noChildren":1,"parentTemplates":[2],"slashUrls":1,"pageClass":"User","noGlobal":1,"noMove":1,"noTrash":1,"noSettings":1,"noChangeTemplate":1,"compile":3,"nameContentTab":1,"modified":1469703698}'),
(4, 'role', 4, 8, 0, '{"noChildren":1,"parentTemplates":[2],"slashUrls":1,"pageClass":"Role","noGlobal":1,"noMove":1,"noTrash":1,"noSettings":1,"noChangeTemplate":1,"nameContentTab":1}'),
(5, 'permission', 5, 8, 0, '{"noChildren":1,"parentTemplates":[2],"slashUrls":1,"guestSearchable":1,"pageClass":"Permission","noGlobal":1,"noMove":1,"noTrash":1,"noSettings":1,"noChangeTemplate":1,"nameContentTab":1}'),
(1, 'home', 1, 0, 0, '{"useRoles":1,"noParents":1,"allowPageNum":1,"slashUrls":1,"compile":3,"tags":"site","modified":1469878511,"ns":"Processwire","roles":[37]}'),
(29, 'basic-page', 83, 0, 0, '{"childTemplates":[29],"parentTemplates":[29,1],"slashUrls":1,"compile":3,"modified":1469878521,"ns":"Processwire"}'),
(43, 'language', 97, 8, 0, '{"parentTemplates":[2],"slashUrls":1,"pageClass":"Language","pageLabelField":"name","noGlobal":1,"noMove":1,"noTrash":1,"noChangeTemplate":1,"noUnpublish":1,"compile":3,"nameContentTab":1,"modified":1469023358}'),
(44, 'menu', 98, 0, 0, '{"noParents":-1,"childTemplates":[45],"parentTemplates":[1],"slashUrls":1,"compile":3,"tags":"menu","modified":1469295314}'),
(45, 'menu-item', 99, 0, 0, '{"childTemplates":[45],"parentTemplates":[44,45],"slashUrls":1,"compile":3,"tags":"menu","modified":1469295324}'),
(46, 'tags', 100, 0, 0, '{"noParents":-1,"childTemplates":[47],"parentTemplates":[1],"slashUrls":1,"compile":3,"tags":"blog","modified":1469534812,"ns":"Processwire"}'),
(47, 'tag-item', 101, 0, 0, '{"useRoles":1,"editRoles":[1032],"createRoles":[1032],"childTemplates":[47],"parentTemplates":[47,46],"allowPageNum":1,"slashUrls":1,"compile":3,"tags":"blog","modified":1469878881,"ns":"Processwire","roles":[37,1032]}'),
(48, 'classes', 102, 0, 0, '{"noParents":-1,"parentTemplates":[1],"slashUrls":1,"compile":3,"tags":"blog","modified":1469304346}'),
(49, 'class-item', 103, 0, 0, '{"childTemplates":[49],"parentTemplates":[49,48],"slashUrls":1,"compile":3,"tags":"blog","modified":1469304397}'),
(50, 'blog', 104, 0, 0, '{"noParents":-1,"childTemplates":[51],"parentTemplates":[1],"allowPageNum":1,"slashUrls":1,"compile":3,"tags":"blog","modified":1469534833,"ns":"Processwire"}'),
(51, 'blog-item', 105, 0, 0, '{"useRoles":1,"editRoles":[1032],"createRoles":[1032],"noInherit":1,"noChildren":1,"parentTemplates":[50],"slashUrls":1,"compile":3,"tags":"blog","modified":1469878199,"ns":"Processwire","roles":[37,1032]}'),
(52, 'meta', 106, 0, 0, '{"noChildren":1,"noParents":-1,"parentTemplates":[1],"slashUrls":1,"compile":3,"tags":"site","modified":1469307075}'),
(53, 'authors', 107, 0, 0, '{"noChildren":1,"noParents":-1,"parentTemplates":[1],"allowPageNum":1,"urlSegments":1,"slashUrls":1,"compile":3,"tags":"blog","modified":1469877752,"ns":"Processwire"}'),
(54, 'rss', 108, 0, 0, '{"noChildren":1,"noParents":-1,"parentTemplates":[1],"slashUrls":1,"compile":3,"tags":"site","modified":1469537002,"ns":"Processwire"}'),
(55, '404', 109, 0, 0, '{"noChildren":1,"noParents":-1,"slashUrls":1,"compile":3,"tags":"site","modified":1469540281,"ns":"Processwire"}');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `caches`
--
ALTER TABLE `caches`
  ADD PRIMARY KEY (`name`),
  ADD KEY `expires` (`expires`);

--
-- Indices de la tabla `fieldgroups`
--
ALTER TABLE `fieldgroups`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Indices de la tabla `fieldgroups_fields`
--
ALTER TABLE `fieldgroups_fields`
  ADD PRIMARY KEY (`fieldgroups_id`,`fields_id`);

--
-- Indices de la tabla `fields`
--
ALTER TABLE `fields`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`),
  ADD KEY `type` (`type`);

--
-- Indices de la tabla `field_about`
--
ALTER TABLE `field_about`
  ADD PRIMARY KEY (`pages_id`),
  ADD KEY `data_exact` (`data`(250)),
  ADD FULLTEXT KEY `data` (`data`);
ALTER TABLE `field_about`
  ADD FULLTEXT KEY `data1019` (`data1019`);

--
-- Indices de la tabla `field_author`
--
ALTER TABLE `field_author`
  ADD PRIMARY KEY (`pages_id`,`sort`),
  ADD KEY `data` (`data`,`pages_id`,`sort`);

--
-- Indices de la tabla `field_class`
--
ALTER TABLE `field_class`
  ADD PRIMARY KEY (`pages_id`,`sort`),
  ADD KEY `data` (`data`,`pages_id`,`sort`);

--
-- Indices de la tabla `field_content`
--
ALTER TABLE `field_content`
  ADD PRIMARY KEY (`pages_id`),
  ADD KEY `data_exact` (`data`(250)),
  ADD FULLTEXT KEY `data` (`data`);
ALTER TABLE `field_content`
  ADD FULLTEXT KEY `data1019` (`data1019`);

--
-- Indices de la tabla `field_cover`
--
ALTER TABLE `field_cover`
  ADD PRIMARY KEY (`pages_id`,`sort`),
  ADD KEY `data` (`data`),
  ADD KEY `modified` (`modified`),
  ADD KEY `created` (`created`),
  ADD FULLTEXT KEY `description` (`description`);

--
-- Indices de la tabla `field_email`
--
ALTER TABLE `field_email`
  ADD PRIMARY KEY (`pages_id`),
  ADD KEY `data_exact` (`data`),
  ADD FULLTEXT KEY `data` (`data`);

--
-- Indices de la tabla `field_excerpt`
--
ALTER TABLE `field_excerpt`
  ADD PRIMARY KEY (`pages_id`),
  ADD KEY `data_exact` (`data`(250)),
  ADD FULLTEXT KEY `data` (`data`);
ALTER TABLE `field_excerpt`
  ADD FULLTEXT KEY `data1019` (`data1019`);

--
-- Indices de la tabla `field_favicon`
--
ALTER TABLE `field_favicon`
  ADD PRIMARY KEY (`pages_id`,`sort`),
  ADD KEY `data` (`data`),
  ADD KEY `modified` (`modified`),
  ADD KEY `created` (`created`),
  ADD FULLTEXT KEY `description` (`description`);

--
-- Indices de la tabla `field_fullname`
--
ALTER TABLE `field_fullname`
  ADD PRIMARY KEY (`pages_id`),
  ADD KEY `data_exact` (`data`(250)),
  ADD FULLTEXT KEY `data` (`data`);

--
-- Indices de la tabla `field_images`
--
ALTER TABLE `field_images`
  ADD PRIMARY KEY (`pages_id`,`sort`),
  ADD KEY `data` (`data`),
  ADD KEY `modified` (`modified`),
  ADD KEY `created` (`created`),
  ADD FULLTEXT KEY `description` (`description`);

--
-- Indices de la tabla `field_language`
--
ALTER TABLE `field_language`
  ADD PRIMARY KEY (`pages_id`,`sort`),
  ADD KEY `data` (`data`,`pages_id`,`sort`);

--
-- Indices de la tabla `field_language_files`
--
ALTER TABLE `field_language_files`
  ADD PRIMARY KEY (`pages_id`,`sort`),
  ADD KEY `data` (`data`),
  ADD KEY `modified` (`modified`),
  ADD KEY `created` (`created`),
  ADD FULLTEXT KEY `description` (`description`);

--
-- Indices de la tabla `field_language_files_site`
--
ALTER TABLE `field_language_files_site`
  ADD PRIMARY KEY (`pages_id`,`sort`),
  ADD KEY `data` (`data`),
  ADD KEY `modified` (`modified`),
  ADD KEY `created` (`created`),
  ADD FULLTEXT KEY `description` (`description`);

--
-- Indices de la tabla `field_location`
--
ALTER TABLE `field_location`
  ADD PRIMARY KEY (`pages_id`),
  ADD KEY `data_exact` (`data`(250)),
  ADD KEY `data_exact1019` (`data1019`(250)),
  ADD FULLTEXT KEY `data` (`data`);
ALTER TABLE `field_location`
  ADD FULLTEXT KEY `data1019` (`data1019`);

--
-- Indices de la tabla `field_logo`
--
ALTER TABLE `field_logo`
  ADD PRIMARY KEY (`pages_id`,`sort`),
  ADD KEY `data` (`data`),
  ADD KEY `modified` (`modified`),
  ADD KEY `created` (`created`),
  ADD FULLTEXT KEY `description` (`description`);

--
-- Indices de la tabla `field_nickname`
--
ALTER TABLE `field_nickname`
  ADD PRIMARY KEY (`pages_id`),
  ADD KEY `data_exact` (`data`(250)),
  ADD FULLTEXT KEY `data` (`data`);

--
-- Indices de la tabla `field_pass`
--
ALTER TABLE `field_pass`
  ADD PRIMARY KEY (`pages_id`),
  ADD KEY `data` (`data`);

--
-- Indices de la tabla `field_permissions`
--
ALTER TABLE `field_permissions`
  ADD PRIMARY KEY (`pages_id`,`sort`),
  ADD KEY `data` (`data`,`pages_id`,`sort`);

--
-- Indices de la tabla `field_picture`
--
ALTER TABLE `field_picture`
  ADD PRIMARY KEY (`pages_id`,`sort`),
  ADD KEY `data` (`data`),
  ADD KEY `modified` (`modified`),
  ADD KEY `created` (`created`),
  ADD FULLTEXT KEY `description` (`description`);

--
-- Indices de la tabla `field_pointer`
--
ALTER TABLE `field_pointer`
  ADD PRIMARY KEY (`pages_id`,`sort`),
  ADD KEY `data` (`data`,`pages_id`,`sort`);

--
-- Indices de la tabla `field_process`
--
ALTER TABLE `field_process`
  ADD PRIMARY KEY (`pages_id`),
  ADD KEY `data` (`data`);

--
-- Indices de la tabla `field_publishedat`
--
ALTER TABLE `field_publishedat`
  ADD PRIMARY KEY (`pages_id`),
  ADD KEY `data` (`data`);

--
-- Indices de la tabla `field_roles`
--
ALTER TABLE `field_roles`
  ADD PRIMARY KEY (`pages_id`,`sort`),
  ADD KEY `data` (`data`,`pages_id`,`sort`);

--
-- Indices de la tabla `field_tags`
--
ALTER TABLE `field_tags`
  ADD PRIMARY KEY (`pages_id`,`sort`),
  ADD KEY `data` (`data`,`pages_id`,`sort`);

--
-- Indices de la tabla `field_title`
--
ALTER TABLE `field_title`
  ADD PRIMARY KEY (`pages_id`),
  ADD KEY `data_exact` (`data`(250)),
  ADD KEY `data_exact1019` (`data1019`(250)),
  ADD FULLTEXT KEY `data` (`data`);
ALTER TABLE `field_title`
  ADD FULLTEXT KEY `data1019` (`data1019`);

--
-- Indices de la tabla `field_website`
--
ALTER TABLE `field_website`
  ADD PRIMARY KEY (`pages_id`),
  ADD KEY `data_exact` (`data`(250)),
  ADD FULLTEXT KEY `data` (`data`);

--
-- Indices de la tabla `field_year`
--
ALTER TABLE `field_year`
  ADD PRIMARY KEY (`pages_id`),
  ADD KEY `data` (`data`);

--
-- Indices de la tabla `modules`
--
ALTER TABLE `modules`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `class` (`class`);

--
-- Indices de la tabla `pages`
--
ALTER TABLE `pages`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name_parent_id` (`name`,`parent_id`),
  ADD UNIQUE KEY `name1019_parent_id` (`name1019`,`parent_id`),
  ADD KEY `parent_id` (`parent_id`),
  ADD KEY `templates_id` (`templates_id`),
  ADD KEY `modified` (`modified`),
  ADD KEY `created` (`created`),
  ADD KEY `status` (`status`),
  ADD KEY `published` (`published`);

--
-- Indices de la tabla `pages_access`
--
ALTER TABLE `pages_access`
  ADD PRIMARY KEY (`pages_id`),
  ADD KEY `templates_id` (`templates_id`);

--
-- Indices de la tabla `pages_parents`
--
ALTER TABLE `pages_parents`
  ADD PRIMARY KEY (`pages_id`,`parents_id`);

--
-- Indices de la tabla `pages_sortfields`
--
ALTER TABLE `pages_sortfields`
  ADD PRIMARY KEY (`pages_id`);

--
-- Indices de la tabla `session_login_throttle`
--
ALTER TABLE `session_login_throttle`
  ADD PRIMARY KEY (`name`);

--
-- Indices de la tabla `templates`
--
ALTER TABLE `templates`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`),
  ADD KEY `fieldgroups_id` (`fieldgroups_id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `fieldgroups`
--
ALTER TABLE `fieldgroups`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=110;
--
-- AUTO_INCREMENT de la tabla `fields`
--
ALTER TABLE `fields`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=120;
--
-- AUTO_INCREMENT de la tabla `modules`
--
ALTER TABLE `modules`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=174;
--
-- AUTO_INCREMENT de la tabla `pages`
--
ALTER TABLE `pages`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=1047;
--
-- AUTO_INCREMENT de la tabla `templates`
--
ALTER TABLE `templates`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=56;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
