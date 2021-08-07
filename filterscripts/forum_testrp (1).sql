-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 10-Mar-2021 às 00:07
-- Versão do servidor: 10.4.17-MariaDB
-- versão do PHP: 8.0.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `forum_testrp`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `kzw_admin_info_files`
--

CREATE TABLE `kzw_admin_info_files` (
  `id_file` tinyint(4) UNSIGNED NOT NULL,
  `filename` varchar(255) NOT NULL DEFAULT '',
  `path` varchar(255) NOT NULL DEFAULT '',
  `parameters` varchar(255) NOT NULL DEFAULT '',
  `data` text NOT NULL,
  `filetype` varchar(255) NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `kzw_admin_info_files`
--

INSERT INTO `kzw_admin_info_files` (`id_file`, `filename`, `path`, `parameters`, `data`, `filetype`) VALUES
(1, 'current-version.js', '/smf/', 'version=%3$s', 'window.smfVersion = \"SMF 2.0.18\";', 'text/javascript'),
(2, 'detailed-version.js', '/smf/', 'language=%1$s&version=%3$s', 'window.smfVersions = {\n	\'SMF\': \'SMF 2.0.18\',\n	\'SourcesAdmin.php\': \'2.0.16\',\n	\'SourcesAgreement.php\': \'2.0.18\',\n	\'SourcesBoardIndex.php\': \'2.0\',\n	\'SourcesCalendar.php\': \'2.0.12\',\n	\'SourcesClass-CurlFetchWeb.php\': \'2.0.16\',\n	\'SourcesClass-Graphics.php\': \'2.0.18\',\n	\'SourcesClass-Package.php\': \'2.0.8\',\n	\'SourcesDbExtra-mysql.php\': \'2.0.18\',\n	\'SourcesDbExtra-postgresql.php\': \'2.0.15\',\n	\'SourcesDbExtra-sqlite.php\': \'2.0.15\',\n	\'SourcesDbPackages-mysql.php\': \'2.0.15\',\n	\'SourcesDbPackages-postgresql.php\': \'2.0.10\',\n	\'SourcesDbPackages-sqlite.php\': \'2.0\',\n	\'SourcesDbSearch-mysql.php\': \'2.0\',\n	\'SourcesDbSearch-postgresql.php\': \'2.0.7\',\n	\'SourcesDbSearch-sqlite.php\': \'2.0.7\',\n	\'SourcesDisplay.php\': \'2.0.18\',\n	\'SourcesDumpDatabase.php\': \'2.0\',\n	\'SourcesErrors.php\': \'2.0.16\',\n	\'SourcesGroups.php\': \'2.0.18\',\n	\'SourcesHelp.php\': \'2.0.16\',\n	\'SourcesKarma.php\': \'2.0\',\n	\'SourcesLoad.php\': \'2.0.18\',\n	\'SourcesLockTopic.php\': \'2.0\',\n	\'SourcesLogInOut.php\': \'2.0.14\',\n	\'SourcesManageAttachments.php\': \'2.0.18\',\n	\'SourcesManageBans.php\': \'2.0.18\',\n	\'SourcesManageBoards.php\': \'2.0\',\n	\'SourcesManageCalendar.php\': \'2.0.18\',\n	\'SourcesManageErrors.php\': \'2.0.18\',\n	\'SourcesManageMail.php\': \'2.0.18\',\n	\'SourcesManageMaintenance.php\': \'2.0.16\',\n	\'SourcesManageMembergroups.php\': \'2.0.18\',\n	\'SourcesManageMembers.php\': \'2.0.18\',\n	\'SourcesManageNews.php\': \'2.0.16\',\n	\'SourcesManagePaid.php\': \'2.0.18\',\n	\'SourcesManagePermissions.php\': \'2.0\',\n	\'SourcesManagePosts.php\': \'2.0.12\',\n	\'SourcesManageRegistration.php\': \'2.0.18\',\n	\'SourcesManageScheduledTasks.php\': \'2.0.18\',\n	\'SourcesManageSearch.php\': \'2.0.16\',\n	\'SourcesManageSearchEngines.php\': \'2.0.18\',\n	\'SourcesManageServer.php\': \'2.0.18\',\n	\'SourcesManageSettings.php\': \'2.0.18\',\n	\'SourcesManageSmileys.php\': \'2.0.18\',\n	\'SourcesMemberlist.php\': \'2.0.18\',\n	\'SourcesMessageIndex.php\': \'2.0.2\',\n	\'SourcesModerationCenter.php\': \'2.0.18\',\n	\'SourcesModlog.php\': \'2.0.18\',\n	\'SourcesMoveTopic.php\': \'2.0\',\n	\'SourcesNews.php\': \'2.0.18\',\n	\'SourcesNotify.php\': \'2.0.16\',\n	\'SourcesPackageGet.php\': \'2.0.13\',\n	\'SourcesPackages.php\': \'2.0.18\',\n	\'SourcesPersonalMessage.php\': \'2.0.16\',\n	\'SourcesPoll.php\': \'2.0.16\',\n	\'SourcesPost.php\': \'2.0.18\',\n	\'SourcesPostModeration.php\': \'2.0\',\n	\'SourcesPrintpage.php\': \'2.0\',\n	\'SourcesProfile-Actions.php\': \'2.0.14\',\n	\'SourcesProfile-Modify.php\': \'2.0.18\',\n	\'SourcesProfile-View.php\': \'2.0.18\',\n	\'SourcesProfile.php\': \'2.0.16\',\n	\'SourcesQueryString.php\': \'2.0.18\',\n	\'SourcesRecent.php\': \'2.0.16\',\n	\'SourcesRegister.php\': \'2.0.18\',\n	\'SourcesReminder.php\': \'2.0.14\',\n	\'SourcesRemoveTopic.php\': \'2.0.12\',\n	\'SourcesRepairBoards.php\': \'2.0.18\',\n	\'SourcesReports.php\': \'2.0\',\n	\'SourcesSSI.php\': \'2.0.18\',\n	\'SourcesScheduledTasks.php\': \'2.0.18\',\n	\'SourcesSearch.php\': \'2.0.9\',\n	\'SourcesSearchAPI-Custom.php\': \'2.0.15\',\n	\'SourcesSearchAPI-Fulltext.php\': \'2.0.16\',\n	\'SourcesSearchAPI-Standard.php\': \'2.0\',\n	\'SourcesSecurity.php\': \'2.0.16\',\n	\'SourcesSendTopic.php\': \'2.0.15\',\n	\'SourcesSplitTopics.php\': \'2.0.14\',\n	\'SourcesStats.php\': \'2.0.15\',\n	\'SourcesSubs-Admin.php\': \'2.0.18\',\n	\'SourcesSubs-Auth.php\': \'2.0.18\',\n	\'SourcesSubs-BoardIndex.php\': \'2.0.16\',\n	\'SourcesSubs-Boards.php\': \'2.0.15\',\n	\'SourcesSubs-Calendar.php\': \'2.0\',\n	\'SourcesSubs-Categories.php\': \'2.0\',\n	\'SourcesSubs-Charset.php\': \'2.0.12\',\n	\'SourcesSubs-Compat.php\': \'2.0.18\',\n	\'SourcesSubs-Db-mysql.php\': \'2.0.16\',\n	\'SourcesSubs-Db-postgresql.php\': \'2.0.4\',\n	\'SourcesSubs-Db-sqlite.php\': \'2.0.16\',\n	\'SourcesSubs-Editor.php\': \'2.0.18\',\n	\'SourcesSubs-Graphics.php\': \'2.0.18\',\n	\'SourcesSubs-List.php\': \'2.0\',\n	\'SourcesSubs-Membergroups.php\': \'2.0\',\n	\'SourcesSubs-Members.php\': \'2.0.18\',\n	\'SourcesSubs-MembersOnline.php\': \'2.0.12\',\n	\'SourcesSubs-Menu.php\': \'2.0.12\',\n	\'SourcesSubs-MessageIndex.php\': \'2.0\',\n	\'SourcesSubs-OpenID.php\': \'2.0.11\',\n	\'SourcesSubs-Package.php\': \'2.0.18\',\n	\'SourcesSubs-Post.php\': \'2.0.18\',\n	\'SourcesSubs-Recent.php\': \'2.0\',\n	\'SourcesSubs-Sound.php\': \'2.0.18\',\n	\'SourcesSubs.php\': \'2.0.18\',\n	\'SourcesSubscriptions-PayPal.php\': \'2.0.12\',\n	\'SourcesThemes.php\': \'2.0.16\',\n	\'SourcesViewQuery.php\': \'2.0\',\n	\'SourcesWho.php\': \'2.0.16\',\n	\'SourcesXml.php\': \'2.0\',\n	\'Sourcessubscriptions.php\': \'2.0.12\',\n	\'DefaultAdmin.template.php\': \'2.0.16\',\n	\'DefaultAgreement.template.php\': \'2.0.16\',\n	\'DefaultBoardIndex.template.php\': \'2.0\',\n	\'DefaultCalendar.template.php\': \'2.0\',\n	\'DefaultCompat.template.php\': \'2.0\',\n	\'DefaultDisplay.template.php\': \'2.0.16\',\n	\'DefaultErrors.template.php\': \'2.0\',\n	\'DefaultGenericControls.template.php\': \'2.0\',\n	\'DefaultGenericList.template.php\': \'2.0\',\n	\'DefaultGenericMenu.template.php\': \'2.0\',\n	\'DefaultHelp.template.php\': \'2.0.6\',\n	\'DefaultLogin.template.php\': \'2.0.16\',\n	\'DefaultManageAttachments.template.php\': \'2.0\',\n	\'DefaultManageBans.template.php\': \'2.0\',\n	\'DefaultManageBoards.template.php\': \'2.0\',\n	\'DefaultManageCalendar.template.php\': \'2.0\',\n	\'DefaultManageMail.template.php\': \'2.0\',\n	\'DefaultManageMaintenance.template.php\': \'2.0\',\n	\'DefaultManageMembergroups.template.php\': \'2.0\',\n	\'DefaultManageMembers.template.php\': \'2.0\',\n	\'DefaultManageNews.template.php\': \'2.0.16\',\n	\'DefaultManagePaid.template.php\': \'2.0\',\n	\'DefaultManagePermissions.template.php\': \'2.0.9\',\n	\'DefaultManageScheduledTasks.template.php\': \'2.0\',\n	\'DefaultManageSearch.template.php\': \'2.0\',\n	\'DefaultManageSmileys.template.php\': \'2.0\',\n	\'DefaultMemberlist.template.php\': \'2.0.16\',\n	\'DefaultMessageIndex.template.php\': \'2.0\',\n	\'DefaultModerationCenter.template.php\': \'2.0\',\n	\'DefaultMoveTopic.template.php\': \'2.0\',\n	\'DefaultNotify.template.php\': \'2.0.16\',\n	\'DefaultPackages.template.php\': \'2.0\',\n	\'DefaultPersonalMessage.template.php\': \'2.0.16\',\n	\'DefaultPoll.template.php\': \'2.0\',\n	\'DefaultPost.template.php\': \'2.0.10\',\n	\'DefaultPrintpage.template.php\': \'2.0\',\n	\'DefaultProfile.template.php\': \'2.0.16\',\n	\'DefaultRecent.template.php\': \'2.0\',\n	\'DefaultRegister.template.php\': \'2.0.16\',\n	\'DefaultReminder.template.php\': \'2.0\',\n	\'DefaultReports.template.php\': \'2.0\',\n	\'DefaultSearch.template.php\': \'2.0.18\',\n	\'DefaultSendTopic.template.php\': \'2.0\',\n	\'DefaultSettings.template.php\': \'2.0\',\n	\'DefaultSplitTopics.template.php\': \'2.0\',\n	\'DefaultStats.template.php\': \'2.0\',\n	\'DefaultThemes.template.php\': \'2.0.12\',\n	\'DefaultWho.template.php\': \'2.0\',\n	\'DefaultWireless.template.php\': \'2.0.16\',\n	\'DefaultXml.template.php\': \'2.0.16\',\n	\'Defaultindex.template.php\': \'2.0.14\',\n	\'TemplateAdmin.template.php\': \'2.0.16\',\n	\'TemplateAgreement.template.php\': \'2.0.16\',\n	\'TemplateBoardIndex.template.php\': \'2.0\',\n	\'TemplateCalendar.template.php\': \'2.0\',\n	\'TemplateCompat.template.php\': \'2.0\',\n	\'TemplateDisplay.template.php\': \'2.0.16\',\n	\'TemplateErrors.template.php\': \'2.0\',\n	\'TemplateGenericControls.template.php\': \'2.0\',\n	\'TemplateGenericList.template.php\': \'2.0\',\n	\'TemplateGenericMenu.template.php\': \'2.0\',\n	\'TemplateHelp.template.php\': \'2.0.6\',\n	\'TemplateLogin.template.php\': \'2.0.16\',\n	\'TemplateManageAttachments.template.php\': \'2.0\',\n	\'TemplateManageBans.template.php\': \'2.0\',\n	\'TemplateManageBoards.template.php\': \'2.0\',\n	\'TemplateManageCalendar.template.php\': \'2.0\',\n	\'TemplateManageMail.template.php\': \'2.0\',\n	\'TemplateManageMaintenance.template.php\': \'2.0\',\n	\'TemplateManageMembergroups.template.php\': \'2.0\',\n	\'TemplateManageMembers.template.php\': \'2.0\',\n	\'TemplateManageNews.template.php\': \'2.0.16\',\n	\'TemplateManagePaid.template.php\': \'2.0\',\n	\'TemplateManagePermissions.template.php\': \'2.0.9\',\n	\'TemplateManageScheduledTasks.template.php\': \'2.0\',\n	\'TemplateManageSearch.template.php\': \'2.0\',\n	\'TemplateManageSmileys.template.php\': \'2.0\',\n	\'TemplateMemberlist.template.php\': \'2.0.16\',\n	\'TemplateMessageIndex.template.php\': \'2.0\',\n	\'TemplateModerationCenter.template.php\': \'2.0\',\n	\'TemplateMoveTopic.template.php\': \'2.0\',\n	\'TemplateNotify.template.php\': \'2.0.16\',\n	\'TemplatePackages.template.php\': \'2.0\',\n	\'TemplatePersonalMessage.template.php\': \'2.0.16\',\n	\'TemplatePoll.template.php\': \'2.0\',\n	\'TemplatePost.template.php\': \'2.0.10\',\n	\'TemplatePrintpage.template.php\': \'2.0\',\n	\'TemplateProfile.template.php\': \'2.0.16\',\n	\'TemplateRecent.template.php\': \'2.0\',\n	\'TemplateRegister.template.php\': \'2.0.16\',\n	\'TemplateReminder.template.php\': \'2.0\',\n	\'TemplateReports.template.php\': \'2.0\',\n	\'TemplateSearch.template.php\': \'2.0.18\',\n	\'TemplateSendTopic.template.php\': \'2.0\',\n	\'TemplateSettings.template.php\': \'2.0\',\n	\'TemplateSplitTopics.template.php\': \'2.0\',\n	\'TemplateStats.template.php\': \'2.0\',\n	\'TemplateThemes.template.php\': \'2.0.12\',\n	\'TemplateWho.template.php\': \'2.0\',\n	\'TemplateWireless.template.php\': \'2.0.16\',\n	\'TemplateXml.template.php\': \'2.0.16\',\n	\'Templateindex.template.php\': \'2.0.14\',\n};\n\nwindow.smfLanguageVersions = {\n	\'Admin\': \'2.0.16\',\n	\'Agreement\': \'2.0.16\',\n	\'EmailTemplates\': \'2.0.16\',\n	\'Errors\': \'2.0.16\',\n	\'Help\': \'2.0.16\',\n	\'Install\': \'2.0.16\',\n	\'Login\': \'2.0.16\',\n	\'ManageBoards\': \'2.0\',\n	\'ManageCalendar\': \'2.0\',\n	\'ManageMail\': \'2.0\',\n	\'ManageMaintenance\': \'2.0\',\n	\'ManageMembers\': \'2.0\',\n	\'ManagePaid\': \'2.0.10\',\n	\'ManagePermissions\': \'2.0\',\n	\'ManageScheduledTasks\': \'2.0\',\n	\'ManageSettings\': \'2.0.16\',\n	\'ManageSmileys\': \'2.0\',\n	\'Manual\': \'2.0\',\n	\'ModerationCenter\': \'2.0\',\n	\'Modifications\': \'2.0\',\n	\'Modlog\': \'2.0.16\',\n	\'Packages\': \'2.0\',\n	\'PersonalMessage\': \'2.0\',\n	\'Post\': \'2.0\',\n	\'Profile\': \'2.0.18\',\n	\'Reports\': \'2.0\',\n	\'Search\': \'2.0\',\n	\'Settings\': \'2.0\',\n	\'Stats\': \'2.0\',\n	\'Themes\': \'2.0\',\n	\'Who\': \'2.0.16\',\n	\'Wireless\': \'2.0\',\n	\'index\': \'2.0.18\',\n};\n', 'text/javascript'),
(3, 'latest-news.js', '/smf/', 'language=%1$s&format=%2$s', '\nwindow.smfAnnouncements = [\n	{\n		subject: \'SMF 2.0.18 has been released\',\n		href: \'https://www.simplemachines.org/community/index.php?topic=576577.0\',\n		time: \'February 01, 2021, 01:55:41 PM\',\n		author: \'Suki\',\n		message: \'SMF 2.0.18 adds compatibility to PHP 7.4 version as well as fixes a few bugs in 2.0.17. We recommend updating as soon as possible.\'\n	},\n	{\n		subject: \'SMF 2.1 RC3 has been released\',\n		href: \'https://www.simplemachines.org/community/index.php?topic=575228.0\',\n		time: \'October 15, 2020, 06:16:48 AM\',\n		author: \'Suki\',\n		message: \'Simple Machines is pleased to announce SMF 2.1 RC3. This third release candidate brings a number of bugfixes and improvements over SMF 2.1 RC2.\'\n	},\n	{\n		subject: \'SMF 2.0.17 has been released\',\n		href: \'https://www.simplemachines.org/community/index.php?topic=571067.0\',\n		time: \'December 30, 2019, 07:43:24 PM\',\n		author: \'Sesquipedalian\',\n		message: \'SMF 2.0.17 fixes a bug in 2.0.16 that could cause significant performance issues when retrieving RSS feeds, and fixes some warning messages that could appear when using SSI.php. We recommend updating as soon as possible.\'\n	},\n	{\n		subject: \'SMF 2.0.16 has been released\',\n		href: \'https://www.simplemachines.org/community/index.php?topic=570986.0\',\n		time: \'December 27, 2019, 07:44:07 PM\',\n		author: \'Sesquipedalian\',\n		message: \'SMF 2.0.16 fixes some important security issues and adds support for the EU\\\'s General Data Protection Regulation (GDPR) requirements.\'\n	},\n	{\n		subject: \'SMF 2.1 RC2 has been released\',\n		href: \'https://www.simplemachines.org/community/index.php?topic=566669.0\',\n		time: \'March 30, 2019, 12:27:45 PM\',\n		author: \'Sesquipedalian\',\n		message: \'Simple Machines is pleased to announce SMF 2.1 RC2. This second release candidate brings a number of bugfixes and improvements over SMF 2.1 RC1.\'\n	},\n	{\n		subject: \'SMF 2.1 RC1 has been released\',\n		href: \'https://www.simplemachines.org/community/index.php?topic=564881.0\',\n		time: \'February 04, 2019, 08:02:47 PM\',\n		author: \'Sesquipedalian\',\n		message: \'Simple Machines is proud to announce the first release candidate of the next version of SMF, which contains many bugfixes and a number of new features since 2.1 Beta 3.\'\n	},\n	{\n		subject: \'SMF 2.0.15 has been released\',\n		href: \'https://www.simplemachines.org/community/index.php?topic=557176.0\',\n		time: \'November 19, 2017, 09:03:58 PM\',\n		author: \'Colin\',\n		message: \'A patch has been released, addressing a few vulnerabilities in SMF 2.0.14 and fixing several bugs as well. We urge all forum administrators to upgrade as soon as possible. Just visit the package manager to install the patch.\'\n	},\n	{\n		subject: \'SMF 2.1 Beta 3 released\',\n		href: \'https://www.simplemachines.org/community/index.php?topic=554301.0\',\n		time: \'May 31, 2017, 09:21:59 PM\',\n		author: \'Colin\',\n		message: \'Simple Machines is proud to announce the third beta of the next version of SMF, which contains many bugfixes and a few new features since 2.1 Beta 2.\'\n	},\n	{\n		subject: \'SMF 2.0.14 has been released\',\n		href: \'https://www.simplemachines.org/community/index.php?topic=553855.0\',\n		time: \'May 14, 2017, 05:23:46 PM\',\n		author: \'Colin\',\n		message: \'A patch has been released, addressing a few vulnerabilities in SMF 2.0.13 and fixing several bugs as well. We urge all forum administrators to upgrade as soon as possible. Just visit the package manager to install the patch.\'\n	},\n	{\n		subject: \'SMF 2.0.13 has been released\',\n		href: \'https://www.simplemachines.org/community/index.php?topic=551061.0\',\n		time: \'January 04, 2017, 07:00:00 PM\',\n		author: \'Oldiesmann\',\n		message: \'A patch has been released, addressing a few vulnerabilities in SMF 2.0.12 and fixing several bugs as well. We urge all forum administrators to upgrade as soon as possible. Just visit the package manager to install the patch.\'\n	},\n	{\n		subject: \'SMF 2.0.12 has been released\',\n		href: \'https://www.simplemachines.org/community/index.php?topic=548871.0\',\n		time: \'September 27, 2016, 07:00:00 AM\',\n		author: \'CoreISP\',\n		message: \'A patch has been released, addressing a vulnerability in SMF 2.0.11 and fixing several bugs as well. We urge all forum administrators to upgrade as soon as possible. Just visit the package manager to install the patch.\'\n	},\n	{\n		subject: \'SMF 2.0.11 has been released\',\n		href: \'https://www.simplemachines.org/community/index.php?topic=539888.0\',\n		time: \'September 18, 2015, 10:56:19 PM\',\n		author: \'Oldiesmann\',\n		message: \'A patch has been released, addressing a vulnerability in SMF 2.0.10. We urge all forum administrators to upgrade as soon as possible. Just visit the package manager to install the patch.\'\n	},\n	{\n		subject: \'SMF 2.1 Beta 2 released\',\n		href: \'https://www.simplemachines.org/community/index.php?topic=538198.0\',\n		time: \'July 16, 2015, 05:45:30 PM\',\n		author: \'Oldiesmann\',\n		message: \'Simple Machines is proud to announce the second beta of the next version of SMF, which contains many bugfixes and a few new features since 2.1 Beta 1!\'\n	},\n	{\n		subject: \'SMF 2.0.10 and 1.1.21 have been released.\',\n		href: \'https://www.simplemachines.org/community/index.php?topic=535828.0\',\n		time: \'April 24, 2015, 10:09:00 AM\',\n		author: \'Oldiesmann\',\n		message: \'A patch has been released, addressing a few bugs in SMF 2.0.x and SMF 1.1.x. We urge all forum administrators to upgrade to SMF 2.0.10 or 1.1.21&mdash;simply visit the package manager to install the patch.\'\n	},\n	{\n		subject: \'SMF 2.1 Beta 1 released\',\n		href: \'https://www.simplemachines.org/community/index.php?topic=530233.0\',\n		time: \'November 20, 2014, 07:40:06 PM\',\n		author: \'Oldiesmann\',\n		message: \'Simple Machines is proud to announce the first beta of the next version of SMF, with many improvements and new features!\'\n	},\n	{\n		subject: \'SMF 2.0.9 and 1.1.20 security patches have been released.\',\n		href: \'https://www.simplemachines.org/community/index.php?topic=528448.0\',\n		time: \'October 02, 2014, 07:13:50 PM\',\n		author: \'Oldiesmann\',\n		message: \'Critical security patches have been released, addressing a few vulnerabilities in SMF 2.0.x and SMF 1.1.x. We urge all administrators to upgrade as soon as possible. Just visit the package manager to install the patch.\'\n	},\n	{\n		subject: \'SMF 2.0.8 released.\',\n		href: \'https://www.simplemachines.org/community/index.php?topic=524016.0\',\n		time: \'June 18, 2014, 10:11:32 AM\',\n		author: \'Oldiesmann\',\n		message: \'A patch has been released, addressing memory issues with 2.0.7, MySQL 5.6 compatibility issues and a rare memberlist search bug. We urge all forum administrators to upgrade to SMF 2.0.8&mdash;simply visit the package manager to install the patch.\'\n	},\n	{\n		subject: \'SMF 2.0.7 released.\',\n		href: \'https://www.simplemachines.org/community/index.php?topic=517205.0\',\n		time: \'January 20, 2014, 09:48:07 PM\',\n		author: \'Oldiesmann\',\n		message: \'A patch has been released, addressing several bugs, including PHP 5.5 compatibility.  We urge all forum administrators to upgrade to SMF 2.0.7&mdash;simply visit the package manager to install the patch.\'\n	},\n	{\n		subject: \'SMF 2.0.6 and 1.1.19 security patches have been released.\',\n		href: \'https://www.simplemachines.org/community/index.php?topic=512964.0\',\n		time: \'October 22, 2013, 09:00:00 AM\',\n		author: \'Illori\',\n		message: \'Critical security patches have been released, addressing few vulnerabilities in SMF 2.0.x and SMF 1.1.x. We urge all administrators to upgrade as soon as possible. Just visit the package manager to install the patch.\'\n	},\n	{\n		subject: \'SMF 2.0.5 security patches has been released.\',\n		href: \'https://www.simplemachines.org/community/index.php?topic=509417.0\',\n		time: \'August 12, 2013, 08:34:06 PM\',\n		author: \'Oldiesmann\',\n		message: \'A critical security patch has been released, addressing a few vulnerabilities in SMF 2.0.x. We urge all administrators to upgrade as soon as possible. Just visit the package manager to install the patch.\'\n	},\n	{\n		subject: \'SMF 2.0.4 and 1.1.18 security patches have been released.\',\n		href: \'https://www.simplemachines.org/community/index.php?topic=496403.0\',\n		time: \'February 01, 2013, 05:27:00 PM\',\n		author: \'emanuele\',\n		message: \'Critical security patches have been released, addressing few vulnerabilities in SMF 2.0.x and SMF 1.1.x. We urge all administrators to upgrade as soon as possible. Just visit the package manager to install the patch.\'\n	},\n	{\n		subject: \'SMF 2.0.3, 1.1.17 and 1.0.23 security patches have been released.\',\n		href: \'https://www.simplemachines.org/community/index.php?topic=492786.0\',\n		time: \'December 16, 2012, 11:41:05 PM\',\n		author: \'emanuele\',\n		message: \'Security patches have been released, addressing a vulnerability in SMF 2.0.x, SMF 1.1.x and SMF 1.0.x. We urge all administrators to upgrade as soon as possible. Just visit the package manager to install the patch.\'\n	},\n	{\n		subject: \'SMF 2.0.2 and 1.1.16 security patches have been released.\',\n		href: \'https://www.simplemachines.org/community/index.php?topic=463103.0\',\n		time: \'December 23, 2011, 12:41:31 AM\',\n		author: \'Norv\',\n		message: \'Critical security patches have been released, addressing vulnerabilities in SMF 2.0.x and SMF 1.1.x. We urge all administrators to upgrade as soon as possible. Just visit the package manager to install the patch.\'\n	},\n	{\n		subject: \'SMF 2.0.1 and 1.1.15 security patches have been released.\',\n		href: \'https://www.simplemachines.org/community/index.php?topic=452888.0\',\n		time: \'September 18, 2011, 04:48:18 PM\',\n		author: \'Norv\',\n		message: \'Critical security patches have been released, addressing vulnerabilities in SMF 2.0 and SMF 1.1.x. We urge all administrators to upgrade as soon as possible. Just visit the package manager to install the patch.\'\n	},\n	{\n		subject: \'SMF 2.0 Gold\',\n		href: \'https://www.simplemachines.org/community/index.php?topic=421547.0\',\n		time: \'June 04, 2011, 05:00:00 PM\',\n		author: \'Norv\',\n		message: \'SMF 2.0 has gone Gold! Please upgrade your forum from older versions, as 2.0 is now the stable version, and mods and themes will be built on it.\'\n	},\n	{\n		subject: \'SMF 1.1.13, 2.0 RC4 security patch and SMF 2.0 RC5 released\',\n		href: \'https://www.simplemachines.org/community/index.php?topic=421547.0\',\n		time: \'February 11, 2011, 03:16:35 PM\',\n		author: \'Norv\',\n		message: \'Simple Machines announces the release of important security patches for SMF 1.1.x and SMF 2.0 RC4, along with the fifth Release Candidate of SMF 2.0. Please visit the Simple Machines site for more information on how you can help test this new release.\'\n	},\n	{\n		subject: \'SMF 2.0 RC4 and SMF 1.1.12 released\',\n		href: \'https://www.simplemachines.org/community/index.php?topic=407256.0\',\n		time: \'November 01, 2010, 12:14:21 PM\',\n		author: \'Norv\',\n		message: \'Simple Machines is pleased to announce the release of the fourth Release Candidate of SMF 2.0, along with an important security patch for SMF 1.1.x. Please visit the Simple Machines site for more information on how you can help test this new release.\'\n	},\n	{\n		subject: \'SMF 2.0 RC3 Public released\',\n		href: \'https://www.simplemachines.org/community/index.php?topic=369616.0\',\n		time: \'March 08, 2010, 06:03:11 PM\',\n		author: \'Aaron\',\n		message: \'Simple Machines is pleased to announce the release of the third Release Candidate of SMF 2.0. Please visit the Simple Machines site for more information on how you can help test this new release.\'\n	},\n	{\n		subject: \'SMF 1.1.11 released\',\n		href: \'https://www.simplemachines.org/community/index.php?topic=351341.0\',\n		time: \'December 01, 2009, 05:59:19 PM\',\n		author: \'SleePy\',\n		message: \'A patch has been released, addressing multiple vulnerabilites.  We urge all forum administrators to upgrade to 1.1.11. Simply visit the package manager to install the patch. Also for those still using the 1.0 branch, version 1.0.19 has been released.\'\n	},\n	{\n		subject: \'SMF 2.0 RC2 Public released\',\n		href: \'https://www.simplemachines.org/community/index.php?topic=346813.0\',\n		time: \'November 08, 2009, 07:10:03 PM\',\n		author: \'Aaron\',\n		message: \'Simple Machines is very pleased to announce the release of the second Release Candidate of SMF 2.0. Please visit the Simple Machines site for more information on how you can help test this new release.\'\n	},\n	{\n		subject: \'SMF 1.1.10 and 2.0 RC1.2 released\',\n		href: \'https://www.simplemachines.org/community/index.php?topic=324169.0\',\n		time: \'July 14, 2009, 07:05:19 PM\',\n		author: \'Compuart\',\n		message: \'A patch has been released, addressing a few security vulnerabilites.  We urge all forum administrators to upgrade to either 1.1.10 or 2.0 RC1.2, depending on the current version. Simply visit the package manager to install the patch.\'\n	},\n	{\n		subject: \'SMF 1.1.9 and 2.0 RC1-1 released\',\n		href: \'https://www.simplemachines.org/community/index.php?topic=311899.0\',\n		time: \'May 20, 2009, 08:40:41 PM\',\n		author: \'Compuart\',\n		message: \'A patch has been released, addressing multiple security vulnerabilites.  We urge all forum administrators to upgrade to either 1.1.9 or 2.0 RC1-1, depending on the current version. Simply visit the package manager to install the patch.\'\n	},\n	{\n		subject: \'SMF 2.0 RC1 Public Released\',\n		href: \'https://www.simplemachines.org/community/index.php?topic=290609.0\',\n		time: \'February 04, 2009, 11:10:01 PM\',\n		author: \'Compuart\',\n		message: \'Simple Machines are very pleased to announce the release of the first Release Candidate of SMF 2.0. Please visit the Simple Machines site for more information on how you can help test this new release.\'\n	},\n	{\n		subject: \'SMF 1.1.8\',\n		href: \'https://www.simplemachines.org/community/index.php?topic=290608.0\',\n		time: \'February 04, 2009, 11:08:44 PM\',\n		author: \'Compuart\',\n		message: \'A patch has been released, addressing multiple security vulnerabilites.  We urge all forum administrators to upgrade to SMF 1.1.8&mdash;simply visit the package manager to install the patch.\'\n	},\n	{\n		subject: \'SMF 1.1.7\',\n		href: \'https://www.simplemachines.org/community/index.php?topic=272861.0\',\n		time: \'November 07, 2008, 02:15:36 PM\',\n		author: \'Compuart\',\n		message: \'A patch has been released, addressing multiple security vulnerabilites.  We urge all forum administrators to upgrade to SMF 1.1.7&mdash;simply visit the package manager to install the patch.\'\n	},\n	{\n		subject: \'SMF 1.1.6\',\n		href: \'https://www.simplemachines.org/community/index.php?topic=260145.0\',\n		time: \'September 07, 2008, 04:38:05 AM\',\n		author: \'Compuart\',\n		message: \'A patch has been released fixing a few bugs and addressing a security vulnerability.  We urge all forum administrators to upgrade to SMF 1.1.6&mdash;simply visit the package manager to install the patch.\'\n	},\n	{\n		subject: \'SMF 1.1.5\',\n		href: \'https://www.simplemachines.org/community/index.php?topic=236816.0\',\n		time: \'April 20, 2008, 09:56:14 PM\',\n		author: \'Compuart\',\n		message: \'A patch has been released fixing a few bugs and addressing some security vulnerabilities.  We urge all forum administrators to upgrade to SMF 1.1.5&mdash;simply visit the package manager to install the patch.\'\n	},\n	{\n		subject: \'SMF 2.0 Beta 3 Public Released\',\n		href: \'https://www.simplemachines.org/community/index.php?topic=228921.0\',\n		time: \'March 17, 2008, 03:20:21 PM\',\n		author: \'Grudge\',\n		message: \'Simple Machines are very pleased to announce the release of the first public beta of SMF 2.0. Please visit the Simple Machines site for more information on how you can help test this new release.\'\n	},\n	{\n		subject: \'SMF 1.1.4\',\n		href: \'https://www.simplemachines.org/community/index.php?topic=196380.0\',\n		time: \'September 24, 2007, 09:07:36 PM\',\n		author: \'Compuart\',\n		message: \'A patch has been released to address some security vulnerabilities discovered in SMF 1.1.3.  We urge all forum administrators to upgrade to SMF 1.1.4&mdash;simply visit the package manager to install the patch.\'\n	},\n	{\n		subject: \'SMF 2.0 Beta 1 Released to Charter Members\',\n		href: \'https://www.simplemachines.org/community/index.php?topic=190812.0\',\n		time: \'August 25, 2007, 07:29:25 AM\',\n		author: \'Grudge\',\n		message: \'Simple Machines are pleased to announce the first beta of SMF 2.0 has been released to our Charter Members. Visit the Simple Machines site for information on what\\\'s new\'\n	},\n	{\n		subject: \'SMF 1.1.3\',\n		href: \'https://www.simplemachines.org/community/index.php?topic=178757.0\',\n		time: \'June 24, 2007, 09:52:40 PM\',\n		author: \'Thantos\',\n		message: \'A number of small bugs and a potential security issue have been discovered in SMF 1.1.2.  We urge all forum administrators to upgrade to SMF 1.1.3&mdash;simply visit the package manager to install the patch.\'\n	},\n	{\n		subject: \'SMF 1.1.2\',\n		href: \'https://www.simplemachines.org/community/index.php?topic=149553.0\',\n		time: \'February 11, 2007, 08:35:45 AM\',\n		author: \'Grudge\',\n		message: \'A patch has been released to address a number of outstanding bugs in SMF 1.1.1, including several around UTF-8 language support. In addition this patch offers improved image verification support and fixes a couple of low risk security related bugs. If you need any help upgrading please visit our forum.\'\n	},\n	{\n		subject: \'SMF 1.1.1\',\n		href: \'https://www.simplemachines.org/community/index.php?topic=134971.0\',\n		time: \'December 17, 2006, 09:33:41 AM\',\n		author: \'Grudge\',\n		message: \'A number of small bugs and a potential security issue have been discovered in SMF 1.1. We urge all forum administrators to upgrade to SMF 1.1.1 - simply visit the package manager to install the patch.\'\n	},\n	{\n		subject: \'SMF 1.1\',\n		href: \'https://www.simplemachines.org/community/index.php?topic=131008.0\',\n		time: \'December 02, 2006, 02:53:16 PM\',\n		author: \'Grudge\',\n		message: \'SMF 1.1 has gone gold!  If you are using an older version, please upgrade as soon as possible - many things have been changed and fixed, and mods and packages will expect you to be using 1.1.  If you need any help upgrading custom modifications to the new version, please feel free to ask us at our forum.\'\n	}\n];\nif (window.smfVersion < \"SMF 2.0\")\n{\n	window.smfUpdateNotice = \'SMF 2.0 Final has now been released. To take advantage of the improvements available in SMF 2.0 we recommend upgrading as soon as is practical.\';\n	window.smfUpdateCritical = false;\n}\n\nif (document.getElementById(\"yourVersion\"))\n{\n	var yourVersion = getInnerHTML(document.getElementById(\"yourVersion\"));\n	if (yourVersion == \"SMF 1.0.4\")\n		window.smfUpdatePackage = \"http://custom.simplemachines.org/mods/downloads/smf_1-0-5_package.tar.gz\";\n	else if (yourVersion == \"SMF 1.0.5\" || yourVersion == \"SMF 1.0.6\")\n	{\n		window.smfUpdatePackage = \"http://custom.simplemachines.org/mods/downloads/smf_patch_1.0.7_1.1-RC2-1.tar.gz\";\n		window.smfUpdateCritical = false;\n	}\n	else if (yourVersion == \"SMF 1.0.7\")\n		window.smfUpdatePackage = \"http://custom.simplemachines.org/mods/downloads/smf_1-0-8_package.tar.gz\";\n	else if (yourVersion == \"SMF 1.0.8\")\n		window.smfUpdatePackage = \"http://custom.simplemachines.org/mods/downloads/smf_patch_1-0-9_1-1-rc3-1.tar.gz\";\n	else if (yourVersion == \"SMF 1.0.9\")\n		window.smfUpdatePackage = \"http://custom.simplemachines.org/mods/downloads/smf_1-0-10_patch.tar.gz\";\n	else if (yourVersion == \"SMF 1.0.10\" || yourVersion == \"SMF 1.1.2\")\n		window.smfUpdatePackage = \"http://custom.simplemachines.org/mods/downloads/smf_patch_1.1.3_1.0.11.tar.gz\";\n	else if (yourVersion == \"SMF 1.0.11\" || yourVersion == \"SMF 1.1.3\" || yourVersion == \"SMF 2.0 beta 1\")\n	{\n		window.smfUpdatePackage = \"http://custom.simplemachines.org/mods/downloads/smf_patch_1.0.12_1.1.4_2.0.b1.1.tar.gz\";\n		window.smfUpdateCritical = true;\n	}\n	else if (yourVersion == \"SMF 1.0.12\" || yourVersion == \"SMF 1.1.4\" || yourVersion == \"SMF 2.0 beta 3 Public\")\n		window.smfUpdatePackage = \"http://custom.simplemachines.org/mods/downloads/smf_patch_1.0.13_1.1.5_2.0-b3.1.zip\";\n	else if (yourVersion == \"SMF 1.0.13\" || yourVersion == \"SMF 1.1.5\")\n	{\n		window.smfUpdatePackage = \"http://custom.simplemachines.org/mods/downloads/smf_patch_1.0.14_1.1.6.zip\";\n		window.smfUpdateCritical = true;\n	}\n	else if (yourVersion == \"SMF 1.0.14\" || yourVersion == \"SMF 1.1.6\")\n	{\n		window.smfUpdatePackage = \"http://custom.simplemachines.org/mods/downloads/smf_patch_1.0.15_1.1.7.zip\";\n		window.smfUpdateCritical = true;\n	}\n	else if (yourVersion == \"SMF 1.0.15\" || yourVersion == \"SMF 1.1.7\")\n	{\n		window.smfUpdatePackage = \"http://custom.simplemachines.org/mods/downloads/smf_patch_1.0.16_1.1.8.zip\";\n		window.smfUpdateCritical = false;\n	}\n	else if (yourVersion == \"SMF 1.0.16\" || yourVersion == \"SMF 1.1.8\" || yourVersion == \"SMF 2.0 RC1\")\n		window.smfUpdatePackage = \"http://custom.simplemachines.org/mods/downloads/smf_patch_1.0.17_1.1.9_2.0-RC1-1.zip\";\n	else if (yourVersion == \"SMF 1.0.17\" || yourVersion == \"SMF 1.1.9\" || yourVersion == \"SMF 2.0 RC1-1\")\n		window.smfUpdatePackage = \"http://custom.simplemachines.org/mods/downloads/smf_patch_1.0.18_1.1.10-2.0-RC1.2.zip\";\n	else if (yourVersion == \"SMF 1.0.18\" || yourVersion == \"SMF 1.1.10\")\n	{\n		window.smfUpdatePackage = \"http://custom.simplemachines.org/mods/downloads/smf_patch_1.0.19_1.1.11.zip\";\n		window.smfUpdateCritical = true;\n	}\n	else if (yourVersion == \"SMF 1.0.19\" || yourVersion == \"SMF 1.1.11\")\n	{\n		window.smfUpdatePackage = \"http://custom.simplemachines.org/mods/downloads/smf_patch_1.0.20_1.1.12.tar.gz\";\n	}\n	else if (yourVersion == \"SMF 1.0.20\" || yourVersion == \"SMF 1.1.12\")\n	{\n		window.smfUpdatePackage = \"http://custom.simplemachines.org/mods/downloads/smf_patch_1.0.21_1.1.13.tar.gz\";\n		window.smfUpdateCritical = true;\n	}\n	else if (yourVersion == \"SMF 1.1.14\")\n	{\n		window.smfUpdatePackage = \"http://custom.simplemachines.org/mods/downloads/smf_patch_1.1.15.tar.gz\";\n		window.smfUpdateCritical = true;\n	}\n	else if (yourVersion == \"SMF 2.0\")\n	{\n		window.smfUpdatePackage = \"http://custom.simplemachines.org/mods/downloads/smf_patch_2.0.1.tar.gz\";\n		window.smfUpdateCritical = true;\n	}\n	else if (yourVersion == \"SMF 1.1.15\" || yourVersion == \"SMF 1.0.21\")\n	{\n		window.smfUpdatePackage = \"http://custom.simplemachines.org/mods/downloads/smf_patch_1.0.22_1.1.16.tar.gz\";\n		window.smfUpdateCritical = true;\n	}\n	else if (yourVersion == \"SMF 2.0.1\")\n	{\n		window.smfUpdatePackage = \"http://custom.simplemachines.org/mods/downloads/smf_patch_2.0.2.tar.gz\";\n		window.smfUpdateCritical = true;\n	}\n	else if (yourVersion == \"SMF 1.1.16\" || yourVersion == \"SMF 1.0.22\")\n	{\n		window.smfUpdatePackage = \"http://custom.simplemachines.org/mods/downloads/smf_patch_1.0.23_1.1.17.tar.gz\";\n		window.smfUpdateCritical = true;\n	}\n	else if (yourVersion == \"SMF 1.1.17\")\n	{\n		window.smfUpdatePackage = \"http://custom.simplemachines.org/mods/downloads/smf_patch_1.1.18.tar.gz\";\n		window.smfUpdateCritical = true;\n	}\n	else if (yourVersion == \"SMF 2.0.2\")\n	{\n		window.smfUpdatePackage = \"http://custom.simplemachines.org/mods/downloads/smf_patch_2.0.3.tar.gz\";\n		window.smfUpdateCritical = true;\n	}\n	else if (yourVersion == \"SMF 2.0.3\")\n	{\n		window.smfUpdatePackage = \"http://custom.simplemachines.org/mods/downloads/smf_patch_2.0.4.tar.gz\";\n		window.smfUpdateCritical = true;\n	}\n	else if (yourVersion == \"SMF 2.0.4\")\n	{\n		window.smfUpdatePackage = \"http://custom.simplemachines.org/mods/downloads/smf_patch_2.0.5.tar.gz\";\n		window.smfUpdateCritical = true;\n	}\n	else if (yourVersion == \"SMF 1.1.18\" || yourVersion == \"SMF 2.0.5\")\n	{\n		window.smfUpdatePackage = \"http://custom.simplemachines.org/mods/downloads/smf_patch_1.1.19_2.0.6.tar.gz\";\n		window.smfUpdateCritical = true;\n	}\n	else if (yourVersion == \"SMF 1.1.19\" || yourVersion == \"SMF 2.0.8\")\n	{\n		window.smfUpdatePackage = \"http://custom.simplemachines.org/mods/downloads/smf_patch_1.1.20_2.0.9.zip\";\n		window.smfUpdateCritical = true;\n	}\n	else if (yourVersion == \"SMF 1.1.20\" || yourVersion == \"SMF 2.0.9\")\n		window.smfUpdatePackage = \"http://custom.simplemachines.org/mods/downloads/smf_patch_1.1.21_2.0.10.zip\";\n	else if (yourVersion == \"SMF 2.0.10\")\n	{\n		window.smfUpdatePackage = \"http://custom.simplemachines.org/mods/downloads/smf_patch_2.0.11.zip\";\n		window.smfUpdateCritical = true;\n	}\n	else if (yourVersion == \"SMF 1.1\")\n		window.smfUpdatePackage = \"http://custom.simplemachines.org/mods/downloads/smf_1-1-1_patch.tar.gz\";\n	else if (yourVersion == \"SMF 1.1.1\")\n		window.smfUpdatePackage = \"http://custom.simplemachines.org/mods/downloads/smf_1-1-2_patch.tar.gz\";\n	else if (yourVersion == \"SMF 2.0.11\")\n	{\n		window.smfUpdatePackage = \"http://custom.simplemachines.org/mods/downloads/smf_patch_2.0.12.zip\";\n		window.smfUpdateCritical = true;\n	}\n	else if (yourVersion == \"SMF 2.0.12\")\n	{\n		window.smfUpdatePackage = \"http://custom.simplemachines.org/mods/downloads/smf_patch_2.0.13.zip\";\n		window.smfUpdateCritical = true;\n	}\n	else if (yourVersion == \"SMF 2.0.13\")\n	{\n		window.smfUpdatePackage = \"http://custom.simplemachines.org/mods/downloads/smf_patch_2.0.14.tar.gz\";\n		window.smfUpdateCritical = true;\n	}\n	else if (yourVersion == \"SMF 2.0.14\")\n	{\n		window.smfUpdatePackage = \"http://custom.simplemachines.org/mods/downloads/smf_patch_2.0.15.tar.gz\";\n		window.smfUpdateCritical = true;\n	}\n	else if (yourVersion == \"SMF 2.0.15\")\n	{\n		window.smfUpdatePackage = \"http://custom.simplemachines.org/mods/downloads/smf_patch_2.0.16.tar.gz\";\n		window.smfUpdateCritical = true;\n	}\n	else if (yourVersion == \"SMF 2.0.16\")\n	{\n		window.smfUpdatePackage = \"http://custom.simplemachines.org/mods/downloads/smf_patch_2.0.17.tar.gz\";\n		window.smfUpdateCritical = true;\n	}\n	else if (yourVersion == \"SMF 2.0.17\")\n	{\n	window.smfUpdatePackage = \"http://custom.simplemachines.org/mods/downloads/smf_patch_2.0.18.tar.gz\";\n	window.smfUpdateCritical = true;\n	}\n}\n\nif (document.getElementById(\'credits\'))\n	setInnerHTML(document.getElementById(\'credits\'), getInnerHTML(document.getElementById(\'credits\')).replace(/anyone we may have missed/, \'<span title=\"And you thought you had escaped the credits, hadn\\\'t you, Zef Hemel?\">anyone we may have missed</span>\'));\n', 'text/javascript');
INSERT INTO `kzw_admin_info_files` (`id_file`, `filename`, `path`, `parameters`, `data`, `filetype`) VALUES
(4, 'latest-packages.js', '/smf/', 'language=%1$s&version=%3$s', 'var actionurl = \'?action=admin;area=packages;sa=download;get;package=\';if (typeof(window.smfForum_sessionvar) == \"undefined\")\n	window.smfForum_sessionvar = \'sesc\';\n\nif (typeof(window.smfVersion) != \"undefined\")\n{\n	var version = window.smfVersion;\n\n	// We might need this...\n	var smf_modificationInfo = {};\n	\n	switch (version)\n	{\n		case \"SMF 2.0 Beta 1\":\n			window.smfLatestPackages = \'A few security vulnerabilities have been identified in SMF 2.0 beta 1 as well as a few small bugs. You can install <a href=\"\' + window.smfForum_scripturl + actionurl + \'http://custom.simplemachines.org/mods/downloads/smf_patch_1.0.12_1.1.4_2.0.b1.1.tar.gz;\' + window.smfForum_sessionvar + \'=\' + window.smfForum_sessionid + \'\">this patch (click here to install)</a> to update your version of SMF to 2.0 beta 1.1.<br /><br />If you have any problems applying it, you can use the version posted on the downloads page - although, any modifications you have installed will need to be uninstalled.  Please post on the <a href=\"https://www.simplemachines.org/community/index.php?P=ee9c2d3a800cd55251958a9541a9954a&amp;\">forum</a> if you need more help.\';\n			break;\n		case \"SMF 2.0 Beta 3 Public\":\n			window.smfLatestPackages = \'A few security vulnerabilities have been identified in SMF 2.0 beta 3 as well as a few small bugs. You can install <a href=\"\' + window.smfForum_scripturl + actionurl + \'http://custom.simplemachines.org/mods/downloads/smf_patch_1.0.13_1.1.5_2.0-b3.1.zip;\' + window.smfForum_sessionvar + \'=\' + window.smfForum_sessionid + \'\">this patch (click here to install)</a> to update your version of SMF to 2.0 beta 3.1.<br /><br />If you have any problems applying it, you can use the version posted on the downloads page - although, any modifications you have installed will need to be uninstalled.  Please post on the <a href=\"https://www.simplemachines.org/community/index.php?P=ee9c2d3a800cd55251958a9541a9954a&amp;\">forum</a> if you need more help.\';\n			break;\n		case \"SMF 2.0 RC1\":\n			window.smfLatestPackages = \'A few security vulnerabilities have been identified in SMF 2.0 RC1. You can install <a href=\"\' + window.smfForum_scripturl + actionurl + \'http://custom.simplemachines.org/mods/downloads/smf_patch_1.0.17_1.1.9_2.0-RC1-1.zip;\' + window.smfForum_sessionvar + \'=\' + window.smfForum_sessionid + \'\">this patch (click here to install)</a> to update your version of SMF to 2.0-RC1-1.<br /><br />If you have any problems applying it, you can use the version posted on the downloads page - although, any modifications you have installed will need to be uninstalled.  Please post on the <a href=\"https://www.simplemachines.org/community/index.php?P=ee9c2d3a800cd55251958a9541a9954a&amp;\">forum</a> if you need more help.\';\n			break;\n		case \"SMF 2.0 RC1-1\":\n			window.smfLatestPackages = \'A few security vulnerabilities have been identified in SMF 2.0 RC1-1. You can install <a href=\"\' + window.smfForum_scripturl + actionurl + \'http://custom.simplemachines.org/mods/downloads/smf_patch_1.0.18_1.1.10-2.0-RC1.2.zip;\' + window.smfForum_sessionvar + \'=\' + window.smfForum_sessionid + \'\">this patch (click here to install)</a> to update your version of SMF to 2.0-RC1.2 .<br /><br />If you have any problems applying it, you can use the version posted on the downloads page - although, any modifications you have installed will need to be uninstalled.  Please post on the <a href=\"https://www.simplemachines.org/community/index.php?P=ee9c2d3a800cd55251958a9541a9954a&amp;\">forum</a> if you need more help.\';\n			break;\n		case \"SMF 2.0 RC4\":\n			if (typeof(window.smfRC4patch) == \"undefined\")\n				window.smfLatestPackages = \'A few security vulnerabilities have been identified in SMF 2.0 RC4. You can install <a href=\"\' + window.smfForum_scripturl + actionurl + \'http://custom.simplemachines.org/mods/downloads/smf_patch_2.0-RC4_security.zip;\' + window.smfForum_sessionvar + \'=\' + window.smfForum_sessionid + \'\">this patch (click here to install)</a> to install the security patch for SMF 2.0 RC4.<br /><br />If you have any problems applying it, you can use the version posted on the downloads page - although, any modifications you have installed will need to be uninstalled.  Please post on the <a href=\"https://www.simplemachines.org/community/index.php?P=ee9c2d3a800cd55251958a9541a9954a&amp;\">forum</a> if you need more help.\';\n			else\n				showLatestPackages();\n			break;\n		case \"SMF 2.0\":\n			window.smfLatestPackages = \'A few security vulnerabilities have been identified in SMF 2.0. You can install <a href=\"\' + window.smfForum_scripturl + actionurl + \'http://custom.simplemachines.org/mods/downloads/smf_patch_2.0.1.tar.gz;\' + window.smfForum_sessionvar + \'=\' + window.smfForum_sessionid + \'\">this patch (click here to install)</a> to update your forum.<br /><br />If you have any problems applying it, you can use the version posted on the downloads page - although, any modifications you have installed will need to be uninstalled.  Please post on the <a href=\"https://www.simplemachines.org/community/index.php?P=ee9c2d3a800cd55251958a9541a9954a&amp;\">forum</a> if you need more help.\';\n			break;\n		case \"SMF 2.0.1\":\n			window.smfLatestPackages = \'A few security vulnerabilities and bugs in SMF 2.0.1 have been fixed. You can install <a href=\"\' + window.smfForum_scripturl + actionurl + \'http://custom.simplemachines.org/mods/downloads/smf_patch_2.0.2.tar.gz;\' + window.smfForum_sessionvar + \'=\' + window.smfForum_sessionid + \'\">this patch (click here to install)</a> to fix your forum.<br /><br />If you have any problems applying it, you can use the version posted on the downloads page - although, any modifications you have installed will need to be uninstalled.  Please post on the <a href=\"https://www.simplemachines.org/community/index.php?P=ee9c2d3a800cd55251958a9541a9954a&amp;\">forum</a> if you need more help.\';\n			break;\n		case \"SMF 2.0.2\":\n			window.smfLatestPackages = \'A security vulnerability and few bugs in SMF 2.0.2 have been fixed. You can install <a href=\"\' + window.smfForum_scripturl + actionurl + \'http://custom.simplemachines.org/mods/downloads/smf_patch_2.0.3.tar.gz;\' + window.smfForum_sessionvar + \'=\' + window.smfForum_sessionid + \'\">this patch (click here to install)</a> to fix your forum.<br /><br />If you have any problems applying it, you can use the version posted on the downloads page - although, any modifications you have installed will need to be uninstalled.  Please post on the <a href=\"https://www.simplemachines.org/community/index.php?P=ee9c2d3a800cd55251958a9541a9954a&amp;\">forum</a> if you need more help.\';\n			break;\n		case \"SMF 2.0.3\":\n			window.smfLatestPackages = \'A few security vulnerabilities in SMF 2.0.3 have been fixed. You can install <a href=\"\' + window.smfForum_scripturl + actionurl + \'http://custom.simplemachines.org/mods/downloads/smf_patch_2.0.4.tar.gz;\' + window.smfForum_sessionvar + \'=\' + window.smfForum_sessionid + \'\">this patch (click here to install)</a> to fix your forum.<br /><br />If you have any problems applying it, you can use the version posted on the downloads page - although, any modifications you have installed will need to be uninstalled.  Please post on the <a href=\"https://www.simplemachines.org/community/index.php?P=ee9c2d3a800cd55251958a9541a9954a&amp;\">forum</a> if you need more help.\';\n			break;\n		case \"SMF 2.0.4\":\n			window.smfLatestPackages = \'A few security vulnerabilities in SMF 2.0.4 have been fixed. You can install <a href=\"\' + window.smfForum_scripturl + actionurl + \'http://custom.simplemachines.org/mods/downloads/smf_patch_2.0.5.tar.gz;\' + window.smfForum_sessionvar + \'=\' + window.smfForum_sessionid + \'\">this patch (click here to install)</a> to fix your forum.<br /><br />If you have any problems applying it, you can use the version posted on the downloads page - although, any modifications you have installed will need to be uninstalled.  Please post on the <a href=\"https://www.simplemachines.org/community/index.php?P=ee9c2d3a800cd55251958a9541a9954a&amp;\">forum</a> if you need more help.\';\n			break;\n		case \"SMF 2.0.5\":\n			window.smfLatestPackages = \'A few security vulnerabilities and bugs in SMF 2.0.5 have been fixed. You can install <a href=\"\' + window.smfForum_scripturl + actionurl + \'http://custom.simplemachines.org/mods/downloads/smf_patch_1.1.19_2.0.6.tar.gz;\' + window.smfForum_sessionvar + \'=\' + window.smfForum_sessionid + \'\">this patch (click here to install)</a> to fix your forum.<br /><br />If you have any problems applying it, you can use the version posted on the downloads page - although, any modifications you have installed will need to be uninstalled.  Please post on the <a href=\"https://www.simplemachines.org/community/index.php?P=ee9c2d3a800cd55251958a9541a9954a&amp;\">forum</a> if you need more help.\';\n			break;\n		case \"SMF 2.0.6\":\n			window.smfLatestPackages = \'PHP 5.5 compatibility issues and several other bugs have been fixed. You can install <a href=\"\' + window.smfForum_scripturl + actionurl + \'http://custom.simplemachines.org/mods/downloads/smf_patch_2.0.7.tar.gz;\' + window.smfForum_sessionvar + \'=\' + window.smfForum_sessionid + \'\">this patch (click here to install)</a> to fix your forum and update it to 2.0.7.<br /><br />If you have any problems applying it, you can try to use the upgrade file posted on the downloads page - although, any modifications you have installed will need to be uninstalled when you use that method.<br />Please post on the <a href=\"https://www.simplemachines.org/community/index.php?P=ee9c2d3a800cd55251958a9541a9954a&amp;\">forum</a> if you need more help.\';\n			break;\n		case \"SMF 2.0.7\":\n			window.smfLatestPackages = \'Memory issues encountered with SMF 2.0.7, some MySQL 5.6 compatibility issues and a rare bug with the memberlist search feature have been fixed. You can install <a href=\"\' + window.smfForum_scripturl + actionurl + \'http://custom.simplemachines.org/mods/downloads/smf_patch_2.0.8.zip;\' + window.smfForum_sessionvar + \'=\' + window.smfForum_sessionid + \'\">this patch (click here to install)</a> to fix your forum and update it to 2.0.8.<br /><br />If you have any problems applying it, you can try to use the upgrade file posted on the downloads page - although, any modifications you have installed will need to be uninstalled when you use that method.<br />Please post on the <a href=\"https://www.simplemachines.org/community/index.php?P=ee9c2d3a800cd55251958a9541a9954a&amp;\">forum</a> if you need more help.\';\n			break;\n		case \"SMF 2.0.8\":\n			window.smfLatestPackages = \'A few security vulnerabilities and bugs in SMF 2.0.8 have been fixed. You can install <a href=\"\' + window.smfForum_scripturl + actionurl + \'http://custom.simplemachines.org/mods/downloads/smf_patch_1.1.20_2.0.9.zip;\' + window.smfForum_sessionvar + \'=\' + window.smfForum_sessionid + \'\">this patch (click here to install)</a> to fix your forum and update it to 2.0.9.<br /><br />If you have any problems applying it, you can use the version posted on the downloads page - although, any modifications you have installed will need to be uninstalled.  Please post on the <a href=\"https://www.simplemachines.org/community/index.php?P=ee9c2d3a800cd55251958a9541a9954a&amp;\">forum</a> if you need more help.\';\n			break;\n		case \"SMF 2.0.9\":\n			window.smfLatestPackages = \'A few bugs in SMF 2.0.9 have been fixed. You can install <a href=\"\' + window.smfForum_scripturl + actionurl + \'http://custom.simplemachines.org/mods/downloads/smf_patch_1.1.21_2.0.10.zip;\' + window.smfForum_sessionvar + \'=\' + window.smfForum_sessionid + \'\">this patch (click here to install)</a> to fix your forum and update it to 2.0.10.<br /><br />If you have any problems applying it, you can use the version posted on the downloads page - although, any modifications you have installed will need to be uninstalled.  Please post on the <a href=\"https://www.simplemachines.org/community/index.php?P=ee9c2d3a800cd55251958a9541a9954a&amp;\">forum</a> if you need more help.\';\n			break;\n		case \"SMF 2.0.10\":\n			window.smfLatestPackages = \'A security vulnerability has been fixed. You can install <a href=\"\' + window.smfForum_scripturl + actionurl + \'http://custom.simplemachines.org/mods/downloads/smf_patch_2.0.11.zip;\' + window.smfForum_sessionvar + \'=\' + window.smfForum_sessionid + \'\">this patch (click here to install)</a> to fix your forum and update it to 2.0.11.<br /><br />If you have any problems applying it, you can use the version posted on the downloads page - although, any modifications you have installed will need to be uninstalled. Please post on the <a href=\"https://www.simplemachines.org/community/index.php?P=ee9c2d3a800cd55251958a9541a9954a&amp;\">forum</a> if you need more help.\';\n			break;\n		case \"SMF 2.0.11\":\n			window.smfLatestPackages = \'A few security vulnerabilities and bugs in SMF 2.0.11 have been fixed. You can install <a href=\"\' + window.smfForum_scripturl + actionurl + \'http://custom.simplemachines.org/mods/downloads/smf_patch_2.0.12.zip;\' + window.smfForum_sessionvar + \'=\' + window.smfForum_sessionid + \'\">this patch (click here to install)</a> to fix your forum and update it to 2.0.12.<br /><br />If you have any problems applying it, you can use the version posted on the downloads page - although, any modifications you have installed will need to be uninstalled. Please post on the <a href=\"https://www.simplemachines.org/community/index.php?P=ee9c2d3a800cd55251958a9541a9954a&amp;\">forum</a> if you need more help.\';\n			break;\n		case \"SMF 2.0.12\":\n			window.smfLatestPackages = \'A few security vulnerabilities and bugs in SMF 2.0.12 have been fixed. You can install <a href=\"\' + window.smfForum_scripturl + actionurl + \'http://custom.simplemachines.org/mods/downloads/smf_patch_2.0.13.zip;\' + window.smfForum_sessionvar + \'=\' + window.smfForum_sessionid + \'\">this patch (click here to install)</a> to fix your forum and update it to 2.0.13.<br /><br />If you have any problems applying it, you can use the version posted on the downloads page - although, any modifications you have installed will need to be uninstalled. Please post on the <a href=\"https://www.simplemachines.org/community/index.php?P=ee9c2d3a800cd55251958a9541a9954a&amp;\">forum</a> if you need more help.\';\n			break;\n		case \"SMF 2.0.13\":\n			window.smfLatestPackages = \'A few security vulnerabilities and bugs in SMF 2.0.13 have been fixed. You can install <a href=\"\' + window.smfForum_scripturl + actionurl + \'http://custom.simplemachines.org/mods/downloads/smf_patch_2.0.14.tar.gz;\' + window.smfForum_sessionvar + \'=\' + window.smfForum_sessionid + \'\">this patch (click here to install)</a> to fix your forum and update it to 2.0.14.<br /><br />If you have any problems applying it, you can use the version posted on the downloads page - although, any modifications you have installed will need to be uninstalled. Please post on the <a href=\"https://www.simplemachines.org/community/index.php?P=ee9c2d3a800cd55251958a9541a9954a&amp;\">forum</a> if you need more help.\';\n			break;\n		case \"SMF 2.0.14\":\n			window.smfLatestPackages = \'A few security vulnerabilities and bugs in SMF 2.0.14 have been fixed. You can install <a href=\"\' + window.smfForum_scripturl + actionurl + \'http://custom.simplemachines.org/mods/downloads/smf_patch_2.0.15.tar.gz;\' + window.smfForum_sessionvar + \'=\' + window.smfForum_sessionid + \'\">this patch (click here to install)</a> to fix your forum and update it to 2.0.15.<br /><br />If you have any problems applying it, you can use the version posted on the downloads page - although, any modifications you have installed will need to be uninstalled. Please post on the <a href=\"https://www.simplemachines.org/community/index.php?P=ee9c2d3a800cd55251958a9541a9954a&amp;\">forum</a> if you need more help.\';\n			break;\n		case \"SMF 2.0.15\":\n			window.smfLatestPackages = \'SMF 2.0.16 fixes some important security issues and adds support for the EU\\\'s General Data Protection Regulation (GDPR) requirements. You can install <a href=\"\' + window.smfForum_scripturl + actionurl + \'http://custom.simplemachines.org/mods/downloads/smf_patch_2.0.16.tar.gz;\' + window.smfForum_sessionvar + \'=\' + window.smfForum_sessionid + \'\">this patch (click here to install)</a> to fix your forum and update it to 2.0.16.<br /><br />If you have any problems applying it, you can use the version posted on the downloads page - although, any modifications you have installed will need to be uninstalled. Please post on the <a href=\"https://www.simplemachines.org/community/index.php?P=ee9c2d3a800cd55251958a9541a9954a&amp;\">forum</a> if you need more help.\';\n			break;\n		case \"SMF 2.0.16\":\n			window.smfLatestPackages = \'SMF 2.0.17 fixes a bug introduced in 2.0.16 that could cause significant performance issues when retrieving RSS feeds, and fixes some annoying warning messages that could appear when using SSI.php. You can install <a href=\"\' + window.smfForum_scripturl + actionurl + \'http://custom.simplemachines.org/mods/downloads/smf_patch_2.0.17.tar.gz;\' + window.smfForum_sessionvar + \'=\' + window.smfForum_sessionid + \'\">this patch (click here to install)</a> to fix your forum and update it to 2.0.17.<br /><br />If you have any problems applying it, you can use the \"Large upgrade\" posted on the <a href=\"https://download.simplemachines.org/\">Download</a> page - although, any modifications you have installed will need to be reinstalled. Please post on the <a href=\"https://www.simplemachines.org/community/index.php?P=ee9c2d3a800cd55251958a9541a9954a&amp;\">forum</a> if you need more help.\';\n			break;\n		case \"SMF 2.0.17\":\n		window.smfLatestPackages = \'SMF 2.0.18 adds compatibility to PHP 7.4 version as well as fixes a few bugs in 2.0.17. You can install <a href=\"\' + window.smfForum_scripturl + actionurl + \'http://custom.simplemachines.org/mods/downloads/smf_patch_2.0.18.tar.gz;\' + window.smfForum_sessionvar + \'=\' + window.smfForum_sessionid + \'\">this patch (click here to install)</a> to fix your forum and update it to 2.0.18.<br /><br />If you have any problems applying it, you can use the \"Large upgrade\" posted on the <a href=\"https://download.simplemachines.org/\">Download</a> page - although, any modifications you have installed will need to be reinstalled. Please post on the <a href=\"https://www.simplemachines.org/community/index.php?P=ee9c2d3a800cd55251958a9541a9954a&amp;\">forum</a> if you need more help.\';\n		break;\n        default:\n			showLatestPackages();\n			break;\n	}\n}\nelse\n{\n	window.smfLatestPackages = \'For the package manager to function properly, please upgrade to the latest version of SMF.\';\n}\n\n// This function shows latest mods when there isn\'t anything else to display\nfunction showLatestPackages()\n{\n	smf_modificationInfo = {\n	\n		4282: {\n			name: \'Staff and User Menus 1.0\',\n			versions: [\'97\'],\n			desc: \'This will add 2 new menu items<br />Staff Menu<br />User Menu<br /><br />it will move the admin and moderator menus into the new Staff Menu<br />it will move the profile and my messages menus into the new User Menu<br /><br />this only modifies subs.php, so backup Sources/Subs.php before installing just in case <img src=\"https://static.simplemachinesweb.com/smf/smileys/default/smiley.gif\" alt=\"&#58;&#41;\" title=\"Smiley\" class=\"smiley\" /><br />and adds 2 lines to Modifications.english.php and Modifications.english-utf8.php (if you have them)<br /><br />to translate<br /><div class=\"codeheader\">Kod: <a href=\"javascript:void(0);\" onclick=\"return smfSelectText(this);\" class=\"codeoperation\">[Zaznacz]</a></div><code class=\"bbc_code\">$txt&#91;&#039;staff_menu&#039;] = &#039;Staff Menu&#039;;<br />$txt&#91;&#039;user_menu&#039;] = &#039;User Menu&#039;;</code><br />The staff menu will only show to those who have permission to view the moderation center<br />The user menu will only show to those who have permission to edit their profiles<br /><br />thanks to vbgamer for bring up a point about the user menu<br />I had just used if allowed to edit profile then show the menu but should also add if allowed pm to show the menu<br /><br />so changed the show in to an array<br /><div class=\"codeheader\">Kod: <a href=\"javascript:void(0);\" onclick=\"return smfSelectText(this);\" class=\"codeoperation\">[Zaznacz]</a></div><code class=\"bbc_code\">&#039;show&#039; =&gt; allowedTo(array(&#039;allow_edit_profile&#039;, &#039;allow_pm&#039;)),</code>this way also if you add other menus into the the user menu you can add it&#039;s show setting into the array\',\n			file: \'Staff_and_User_Menus.zip\'\n		},\n		4281: {\n			name: \'Discord Who&#039;s Online 1.0.1\',\n			versions: [\'97\', \'96\'],\n			desc: \'Discord Who&#039;s Online<br />By: vbgamer45<br /><br />For: SMF 2.1.x, SMF 2.0.x<br /><br />Adds who is online for a discord channel below who&#039;s online a forum.<br />Requires the Server Widget to be enabled under the Widget section for the channel settings.<br />Also requires cURL to be installed with PHP<br /><br /><br />Based on the idea from Arantor/StoryBB.<br /><br /><br /><a href=\"https://www.smfhacks.com\" class=\"bbc_link\" target=\"_blank\" rel=\"noopener noreferrer\">https://www.smfhacks.com</a>\',\n			file: \'discordwhosonline.zip\'\n		},\n		4278: {\n			name: \'Image for Anti-Spam Verification Questions 1.0\',\n			versions: [\'95\'],\n			desc: \'<strong><span style=\"font-size: 14pt;\" class=\"bbc_size\">Image for Anti-Spam Verification Questions</span></strong><br /><br />Custom Image for use with Anti-Spam Verification Questions<br /><br />Following on from a <a href=\"https://www.simplemachines.org/community/index.php?P=ee9c2d3a800cd55251958a9541a9954a&amp;topic=575145.msg4070373#msg4070373\" class=\"bbc_link\" target=\"_blank\" rel=\"noopener noreferrer\">tip</a> shared by <a href=\"https://www.simplemachines.org/community/index.php?P=ee9c2d3a800cd55251958a9541a9954a&amp;action=profile;u=424443\" class=\"bbc_link\" target=\"_blank\" rel=\"noopener noreferrer\">Sir Osis of Liver</a> this mod has been created to enable Admins to use a custom image for the anti-spam verification questions that are created via <em>Administration Center <span style=\"font-size: 7pt;\" class=\"bbc_size\">&gt;&gt;</span> Security and Moderation <span style=\"font-size: 7pt;\" class=\"bbc_size\">&gt;&gt;</span> Anti-Spam</em>.&nbsp; The custom image will be displayed <strong>everywhere</strong> verification is required (eg, registration, guest searches, guest posting, guest reporting posts, etc).<br /><br /><strong>Suggestion:</strong> Save the image you want to use to the forum&#039;s <em>&#039;images&#039;</em> folder.<br /><br />This mod also includes some safeguards just in case the verification image cannot be accessed via the supplied URL and/or if the verification image cannot be seen on the pages on which it is displayed:<br />1.&nbsp; A message will be displayed in the Admin Center if the verification image URL is not valid; and<br />2.&nbsp; On the pages on which the verification image is displayed a link to contact the webmaster is provided if the verification image cannot be seen.<br /><br />Also, and even though the verification image size is displayed at a maximum pixel resolution of 300x300 on the registration page, the full-sized version of the image will be displayed in a new window/tab by clicking on it.<br /><br /><br /><hr /><span style=\"color: blue;\" class=\"bbc_color\"><em><span style=\"font-size: 10pt;\" class=\"bbc_size\">License</span></em></span><br />Copyright 2020 Kathy Leslie<br /><br />Redistribution and use in source and binary forms, with or without modification, are permitted provided that the following conditions are met:<br /><br />1. Redistributions of source code must retain the above copyright notice, this list of conditions and the following disclaimer.<br /><br />2. Redistributions in binary form must reproduce the above copyright notice, this list of conditions and the following disclaimer in the documentation and/or other materials provided with the distribution.<br /><br />THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS &quot;AS IS&quot; AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE ARE DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT HOLDER OR CONTRIBUTORS BE LIABLE FOR ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES; LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE OF THIS SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.\',\n			file: \'Image for Anti-Spam Verification Questions.zip\'\n		},\n		1421: {\n			name: \'Menu Buttons 1.1\',\n			versions: [\'39\', \'41\', \'53\', \'51\'],\n			desc: \'This mod gives you the ability to create/edit/remove additional links to the external pages in your forum menu.<br />You can change style for each button.<br /><br />Enjoy =)<br /><br /><a href=\"http://www.2by2host.com/legal/mods\" class=\"bbc_link\" target=\"_blank\" rel=\"noopener noreferrer\">Terms of use</a><br /><br /><strong>Changelog:</strong><br /><br />2010-01-12 - Version 1.1<br /><ul class=\"bbc_list\"><li>[Feature]: SMF 2.0 RC2 support added.</li><li>[Change]: Copyrights insertion corrected.</li></ul><br />2008-09-22 - Version 1.0<br /><ul class=\"bbc_list\"><li>Initial release</li></ul>\',\n			file: \'menu.buttons.1.1.smf.1.1.x-2.x.zip\'\n		}	};\n	var smf_latestModifications = [4282, 4281, 4278];\n	\n	window.smfLatestPackages = \'\\\n		<div id=\"smfLatestPackagesWindow\"style=\"overflow: auto;\">\\\n			<h3 style=\"margin: 0; padding: 4px;\">New Packages:</h3>\\\n			<img src=\"https://www.simplemachines.org/smf/images/package.png\" width=\"102\" height=\"98\" style=\"float: right; margin: 4px;\" alt=\"(package)\" />\\\n			<ul style=\"list-style: none; margin-top: 3px; padding: 0 4px;\">\';\n	\n	for (var i = 0; i < smf_latestModifications.length; i++)\n	{\n		var id_mod = smf_latestModifications[i];\n	\n		window.smfLatestPackages += \'<li><a href=\"javascript:smf_packagesMoreInfo(\' + id_mod + \');void(0);\">\' + smf_modificationInfo[id_mod].name + \'</a></li>\';\n	}\n	\n	window.smfLatestPackages += \'\\\n			</ul>\';\n	\n	if (typeof(window.smfVersion) != \"undefined\" && (window.smfVersion < \"SMF 1.0.6\" || (window.smfVersion == \"SMF 1.1 RC2\" && !in_array(\'smf:smf-1.0.7\', window.smfInstalledPackages))))\n		window.smfLatestPackages += \'\\\n			<h3 class=\"error\" style=\"margin: 0; padding: 4px;\">Updates for SMF:</h3>\\\n			<div style=\"padding: 0 4px;\">\\\n				<a href=\"\' + window.smfForum_scripturl + actionurl + \'https://custom.simplemachines.org/mods/downloads/smf_patch_1.0.7_1.1-RC2-1.tar.gz;\' + window.smfForum_sessionvar + \'=\' + window.smfForum_sessionid + \'\">Security update (X-Forwarded-For header vulnerability)</a>\\\n			</div>\';\n	else\n		window.smfLatestPackages += \'\\\n			<h3 style=\"margin: 0; padding: 4px;\">Package of the Moment:</h3>\\\n			<div style=\"padding: 0 4px;\">\\\n				<a href=\"javascript:smf_packagesMoreInfo(1421);void(0);\">Menu Buttons 1.1</a>\\\n			</div>\';\n	\n	window.smfLatestPackages += \'\\\n		</div>\';\n}\n\nfunction findTop(el)\n{\n	if (typeof(el.tagName) == \"undefined\")\n		return 0;\n\n	var skipMe = in_array(el.tagName.toLowerCase(), el.parentNode ? [\"tr\", \"tbody\", \"form\"] : []);\n	var coordsParent = el.parentNode ? \"parentNode\" : \"offsetParent\";\n\n	if (el[coordsParent] == null || typeof(el[coordsParent].offsetTop) == \"undefined\")\n		return skipMe ? 0 : el.offsetTop;\n	else\n		return (skipMe ? 0 : el.offsetTop) + findTop(el[coordsParent]);\n}\n\nfunction in_array(item, array)\n{\n	for (var i in array)\n	{\n		if (array[i] == item)\n			return true;\n	}\n\n	return false;\n}\n\nfunction smf_packagesMoreInfo(id)\n{\n	window.smfLatestPackages_temp = document.getElementById(\"smfLatestPackagesWindow\").innerHTML;\n\n	setInnerHTML(document.getElementById(\"smfLatestPackagesWindow\"),\n	\'\\\n		<h3 style=\"margin: 0; padding: 4px;\">\' + smf_modificationInfo[id].name + \'</h3>\\\n		<h4 style=\"padding: 4px; margin: 0;\"><a href=\"\' + window.smfForum_scripturl + actionurl + \'https://custom.simplemachines.org/mods/downloads/\' + id + \'/\' + smf_modificationInfo[id].file + \';\' + window.smfForum_sessionvar + \'=\' + window.smfForum_sessionid + \'\">Install Now!</a></h4>\\\n		<div style=\"margin: 4px;\">\' + smf_modificationInfo[id].desc.replace(/<a href/g, \'<a href\') + \'</div>\\\n		<div class=\"titlebg\" style=\"padding: 4px; margin: 0;\"><a href=\"javascript:smf_packagesBack();void(0);\">(go back)</a></div>\');\n}\n\nfunction smf_packagesBack()\n{\n	setInnerHTML(document.getElementById(\"smfLatestPackagesWindow\"), window.smfLatestPackages_temp);\n	window.scrollTo(0, findTop(document.getElementById(\"smfLatestPackagesWindow\")) - 10);\n}\n', 'text/javascript'),
(5, 'latest-smileys.js', '/smf/', 'language=%1$s&version=%3$s', 'var actionurl = \'?action=admin;area=smileys;sa=install;set_gz=\';\nif (typeof(window.smfForum_sessionvar) == \"undefined\")\n	window.smfForum_sessionvar = \'sesc\';\n\nvar smf_smileysInfo = {\n\n	4267: {\n		name: \'Hyves Smileys 1.0\',\n		versions: [\'95\', \'93\'],\n		desc: \'<img src=\"https://i2.wp.com/www.bregblogt.nl/wp-content/uploads/2015/10/hyves_kwekker_icons_2_11221_4168_image_5597.gif\" alt=\"\" width=\"600\" height=\"450\" class=\"bbc_img resized\" />\',\n		file: \'smilehyves.zip\'\n	},\n	4233: {\n		name: \'unicode emoji for smf 1.1\',\n		versions: [\'91\', \'93\'],\n		desc: \'unicode emoji Smilies by ~ibtisam midlet<br /><br />how to install:<br />firstly to active the Smilies after installation go to [your forum name]/admin/?area=smileys;sa=modifyset<br /><br /><img src=\"https://github.com/ibtisammidlet/unicode-emoji-for-smf/raw/master/1.PNG\" alt=\"\" width=\"600\" height=\"92\" class=\"bbc_img resized\" /><br />save then that go to [your forum name]/admin/?area=smileys;sa=settings;<br /><img src=\"https://github.com/ibtisammidlet/unicode-emoji-for-smf/raw/master/2.PNG\" alt=\"\" width=\"600\" height=\"195\" class=\"bbc_img resized\" /><br />save then then it will works <img src=\"https://static.simplemachinesweb.com/smf/smileys/default/smiley.gif\" alt=\"&#58;&#41;\" title=\"Smiley\" class=\"smiley\" /><br /><img src=\"https://github.com/ibtisammidlet/unicode-emoji-for-smf/raw/master/3.PNG\" alt=\"\" width=\"600\" height=\"301\" class=\"bbc_img resized\" /><br /><br /><a href=\"https://www.dailyinternetlife.com/2019/05/unicode-emoji-smilies-for-simple.html\" class=\"bbc_link\" target=\"_blank\" rel=\"noopener noreferrer\">unicode emoji v1.0 mod for SMF</a> is licensed under MIT and CC-BY 4.0<br /><br />emoji icons are licensed to:<br />Copyright 2019 Twitter, Inc and other contributors<br />Code licensed under the MIT License: <a href=\"http://opensource.org/licenses/MIT\" class=\"bbc_link\" target=\"_blank\" rel=\"noopener noreferrer\">http://opensource.org/licenses/MIT</a><br />Graphics licensed under CC-BY 4.0: <a href=\"https://creativecommons.org/licenses/by/4.0/\" class=\"bbc_link\" target=\"_blank\" rel=\"noopener noreferrer\">https://creativecommons.org/licenses/by/4.0/</a><br />&gt;&gt;<a href=\"https://twemoji.twitter.com/\" class=\"bbc_link\" target=\"_blank\" rel=\"noopener noreferrer\">https://twemoji.twitter.com/</a><br /><br /><br />Enjoy the Smilies :&quot;)<br /><br />change log:<br />1.1 - fixed the big size of the icon compared to the text<br />&nbsp; &nbsp; - fixed bug the previous version not working like it should do<br />&nbsp;&nbsp;&nbsp;<br />1.0 - first version\',\n		file: \'unicode emoji v1.1.zip\'\n	},\n	4099: {\n		name: \'EmojiOne 0.3.2\',\n		versions: [\'84\'],\n		desc: \'EmojiOne is not BBC but functions in the same space as BBC.<br /><br />This mod add some support for converting emoji decimal input into their hexadecimal counterpart. With the hexadecimal data this mod replaces the decimal data with the appropriate emoji from the EmojiOne CDN server.<br /><br /><strong>License</strong><br />Copyright (c) 2016, Russell Najar<br />All rights reserved.<br /><br />Redistribution and use in source and binary forms, with or without<br />modification, are permitted provided that the following conditions are met:<br /><br />* Redistributions of source code must retain the above copyright notice, this<br />&nbsp; list of conditions and the following disclaimer.<br /><br />* Redistributions in binary form must reproduce the above copyright notice,<br />&nbsp; this list of conditions and the following disclaimer in the documentation<br />&nbsp; and/or other materials provided with the distribution.<br /><br />THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS &quot;AS IS&quot;<br />AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE<br />IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE ARE<br />DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT HOLDER OR CONTRIBUTORS BE LIABLE<br />FOR ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL<br />DAMAGES (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR<br />SERVICES; LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER<br />CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY,<br />OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE<br />OF THIS SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.\',\n		file: \'SMF-EmojiOne.tar.gz\'\n	},\n	912: {\n		name: \'Express 2 smiley set 2.0.0.1\',\n		versions: [\'29\', \'31\', \'35\', \'39\', \'41\', \'44\', \'46\', \'49\', \'36\', \'37\', \'42\', \'47\', \'50\', \'51\', \'53\'],\n		desc: \'<strong>Express 2 smiley set</strong><br /><br />This second edition of this set. The first one is no longer available. The smiley&#039;s have been optimized even more. And some of them have been redone. Just like the icube set these have smiley&#039;s have very small file size.<br />The set also includes a sleepy smiley.(You can delete it if you don&#039;t wand it)<br /><br />You can install it using the package manager and then use the Smileys and message icons menu (Smileys and Message Icons -&gt; smiley sets new smiley set) to import the smiley&#039;s<br /><br />Pleas read the Terms of Use included in the package. You can only use these smiley&#039;s if you agree with them.<br /><br />Change log:<br />V2.0.0.1: Small T.O.U (Terms of Use) update.\',\n		file: \'express2.zip\'\n	},};\nvar smf_latestSmileys = [4267, 4233, 4099];\n\nfunction smf_packagesMoreInfo(id)\n{\n	window.smfLatestSmileys_temp = document.getElementById(\"smfLatestSmileysWindow\").innerHTML;\n\n	setInnerHTML(document.getElementById(\"smfLatestSmileysWindow\"),\n	\'\\\n		<h3 style=\"margin: 0; padding: 4px;\">\' + smf_smileysInfo[id].name + \'</h3>\\\n		<h4 style=\"padding: 4px; margin: 0;\"><a href=\"\' + window.smfForum_scripturl + actionurl + \'https://custom.simplemachines.org/mods/downloads/\' + id + \'/\' + smf_smileysInfo[id].file + \';\' + window.smfForum_sessionvar + \'=\' + window.smfForum_sessionid + \'\">Install Now!</a></h4>\\\n		<div style=\"margin: 4px;\">\' + smf_smileysInfo[id].desc.replace(/<a href/g, \'<a href\') + \'</div>\\\n		<div class=\"titlebg\" style=\"padding: 4px; margin: 0;\"><a href=\"javascript:smf_packagesBack();void(0);\">(go back)</a></div>\');\n}\n\nfunction smf_packagesBack()\n{\n	setInnerHTML(document.getElementById(\"smfLatestSmileysWindow\"), window.smfLatestSmileys_temp);\n	window.scrollTo(0, findTop(document.getElementById(\"smfLatestSmileysWindow\")) - 10);\n}\n\nwindow.smfLatestSmileys = \'\\\n	<div id=\"smfLatestSmileysWindow\" style=\"overflow: auto;\">\\\n		<img src=\"https://www.simplemachines.org/smf/images/smileys.png\" width=\"102\" height=\"98\" style=\"float: right; margin: 4px;\" alt=\"(package)\" />\\\n		<h3 style=\"margin: 0; padding: 4px;\">Smiley of the Moment:</h3>\\\n		<div style=\"padding: 0 4px;\">\\\n			<a href=\"javascript:smf_packagesMoreInfo(912);void(0);\">Express 2 smiley set 2.0.0.1</a>\\\n		</div>\';\n\nwindow.smfLatestSmileys += \'\\\n		<h3 style=\"margin: 0; padding: 4px;\">New Smileys:</h3>\\\n		<ul style=\"list-style: none; margin-top: 3px; padding: 0 4px;\">\';\n\nfor (var i = 0; i < smf_latestSmileys.length; i++)\n{\n	var id_mod = smf_latestSmileys[i];\n\n	window.smfLatestSmileys += \'<li><a href=\"javascript:smf_packagesMoreInfo(\' + id_mod + \');void(0);\">\' + smf_smileysInfo[id_mod].name + \'</a></li>\';\n}\n\nwindow.smfLatestSmileys += \'\\\n		</ul>\';\n\nwindow.smfLatestSmileys += \'\\\n	</div>\';\n\nfunction findTop(el)\n{\n	if (typeof(el.tagName) == \"undefined\")\n		return 0;\n\n	var skipMe = in_array(el.tagName.toLowerCase(), el.parentNode ? [\"tr\", \"tbody\", \"form\"] : []);\n	var coordsParent = el.parentNode ? \"parentNode\" : \"offsetParent\";\n\n	if (el[coordsParent] == null || typeof(el[coordsParent].offsetTop) == \"undefined\")\n		return skipMe ? 0 : el.offsetTop;\n	else\n		return (skipMe ? 0 : el.offsetTop) + findTop(el[coordsParent]);\n}\n\nfunction in_array(item, array)\n{\n	for (var i in array)\n	{\n		if (array[i] == item)\n			return true;\n	}\n\n	return false;\n}', 'text/javascript'),
(6, 'latest-support.js', '/smf/', 'language=%1$s&version=%3$s', 'window.smfLatestSupport = \'<div style=\"font-size: 0.85em;\"><div style=\"font-weight: bold;\">SMF 2.0.18</div>This version adds compatibility to PHP 7.4 version as well as fixes a few bugs in 2.0.17. Please <a href=\"https://download.simplemachines.org/\">try it</a> before requesting support.</div>\';\n\nif (document.getElementById(\'credits\'))\n	setInnerHTML(document.getElementById(\'credits\'), getInnerHTML(document.getElementById(\'credits\')).replace(/thank you!/, \'<span onclick=\"alert(\\\'Kupo!\\\');\">thank you!</span>\'));\n', 'text/javascript');
INSERT INTO `kzw_admin_info_files` (`id_file`, `filename`, `path`, `parameters`, `data`, `filetype`) VALUES
(7, 'latest-themes.js', '/smf/', 'language=%1$s&version=%3$s', '\r\nvar smf_themeInfo = {\r\n	2917: {\r\n		name: \'NightBreeze\',\r\n		desc: \'<div align=\"center\"><img src=\"https://3.bp.blogspot.com/-hs6vGoBtskM/W0yyF4F59yI/AAAAAAAAEvU/O12V6QHtOpU3XxjnLcLt5D2bLsblduQ0ACK4BGAYYCw/s1600/nightbreewe.png\" alt=\"\" class=\"bbc_img\" /><br /><span style=\"font-size: 18pt;\" class=\"bbc_size\"><strong>NightBreeze SMF Theme</strong></span></div><hr /><div align=\"center\"><strong>Author:</strong> <a href=\"http://sycho.22web.org/?ref=nightbreeze\" class=\"bbc_link\" target=\"_blank\" rel=\"noopener noreferrer\">SychO</a><br /><a href=\"http://dzignmz.22web.org/forum/index.php?theme=5\" class=\"bbc_link\" target=\"_blank\" rel=\"noopener noreferrer\">Live Demo</a><br />German Translation By: <a href=\"https://www.simplemachines.org/community/index.php?P=da8ef2515177f3456692bfa16919609c&amp;action=profile;u=444700\" class=\"bbc_link\" target=\"_blank\" rel=\"noopener noreferrer\">Rho</a><br /><br /><strong>NightBreeze</strong>, is a Dark Simple &amp; Responsive SMF Theme, For Free.<br /><span style=\"color: red;\" class=\"bbc_color\">NOTICE: Some Pages/Tables May not be responsive</span><br /><span style=\"color: #204a93;\" class=\"bbc_color\">█</span> <span style=\"color: black;\" class=\"bbc_color\">█</span> <span style=\"color: white;\" class=\"bbc_color\">█</span><br /><br /><img src=\"https://4.bp.blogspot.com/-DWIUC3axSsI/W1S4guDTs4I/AAAAAAAAEwY/8KeAz4KlphgHjWy9Dvworx9AvZTGi4C4gCK4BGAYYCw/s1600/mockup.png\" alt=\"\" width=\"600\" height=\"326\" class=\"bbc_img resized\" /><br /></div><br /><hr /><div align=\"center\"><a href=\"https://www.buymeacoffee.com/SychO\" class=\"bbc_link\" target=\"_blank\" rel=\"noopener noreferrer\"><img src=\"https://www.simplemachines.org/community/proxy.php?request=http%3A%2F%2F3.bp.blogspot.com%2F-xfMAxEcWwRE%2FW3lLSxJQzeI%2FAAAAAAAAE1A%2FY-IKYUMvtNcGtyNUTe-fo_FnHCuhfwMRACK4BGAYYCw%2Fs1600%2Fflat_buttons_donate.png&amp;hash=87a5f97bb7f4daf09e31abecea2e0bce\" alt=\"\" class=\"bbc_img\" /></a></div><hr /><span style=\"font-size: 13pt;\" class=\"bbc_size\"><strong>2020.09.08 - Update</strong></span><br />-----------------------<br />!Fixed performance issue<br /><br /><span style=\"font-size: 13pt;\" class=\"bbc_size\"><strong>2019.10.12 - Update</strong></span><br />-----------------------<br />!Updated FontAwesome to 5.11.2<br />!Code minor cleanup<br /><br /><span style=\"font-size: 13pt;\" class=\"bbc_size\"><strong>2018.08.16 - Update</strong></span><br />-----------------------<br />!Changed jQuery to no conflict mode<br />+Added Support for SimplePortal<br />!Fixed a few minor bugs, Thanks you <strong>bod22 </strong>for reporting them<br /><br /><br /><span style=\"font-size: 13pt;\" class=\"bbc_size\"><strong>2018.08.11 - Update</strong></span><br />-----------------------<br />!Fixed BBC elements colors<br />!Fixed width behavior with the main section<br />!Adjusted Text shadow for more text clarity<br />+Added German Translation by <a href=\"https://www.simplemachines.org/community/index.php?P=da8ef2515177f3456692bfa16919609c&amp;action=profile;u=444700\" class=\"bbc_link\" target=\"_blank\" rel=\"noopener noreferrer\">Rho</a> <br /><br /><div class=\"quoteheader\"><div class=\"topslice_quote\">Cytuj</div></div><blockquote class=\"bbc_standard_quote\">Copyright (C) 2018 SychO (M.S)<br />This program is free software; you can redistribute it and/or modify it under the terms of the GNU General Public License as published by the Free Software Foundation; either version 2 of the License, or (at your option) any later version.<br />This program is distributed in the hope that it will be useful, but WITHOUT ANY WARRANTY; without even the implied warranty of MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. See the GNU General Public License for more details.<br />You should have received a copy of the GNU General Public License along with this program; if not, write to the Free Software Foundation, Inc., 59 Temple Place, Suite 330, Boston, MA 02111-1307 USA<br /><hr />-----------------<br />Fugue Icons | © 2012 Yusuke Kamiyamane | These icons are licensed under a Creative Commons Attribution 3.0 License<br />Oxygen Icons | These icons are licensed under GNU LGPLv3<br />Tooltipster, Developed and maintained by Caleb Jacob and Louis Ameline under the MIT license<br />-----------------<br /></blockquote><div class=\"quotefooter\"><div class=\"botslice_quote\"></div></div>\',\r\n		file: \'NightBreeze20.zip\',\r\n		author: \'SychO\'\r\n	},\r\n	2955: {\r\n		name: \'SociWT Theme\',\r\n		desc: \'<span style=\"font-size: 14pt;\" class=\"bbc_size\"><strong>SociWT Theme</strong></span><br /><br /><span style=\"font-size: 14pt;\" class=\"bbc_size\"><strong>Screenshots</strong></span><br /><br /><div align=\"center\"><img src=\"https://i.ibb.co/sq6FzGr/beyaz.png\" alt=\"\" width=\"350\" class=\"bbc_img resized\" /><img src=\"https://i.ibb.co/jG0LBTG/siyah.png\" alt=\"\" width=\"350\" class=\"bbc_img resized\" /></div><br /><span style=\"font-size: 14pt;\" class=\"bbc_size\"><strong>License</strong></span><br />The MIT License.<br /><br /><strong>26.02.2021</strong><br />Theme Updated to Black and White<br />Admin-Configuration-Current Theme-Default theme variant: style1/style2\',\r\n		file: \'SociWT.zip\',\r\n		author: \'gecitli\'\r\n	},\r\n	2953: {\r\n		name: \'Potato\',\r\n		desc: \'<strong><span style=\"font-size: 18pt;\" class=\"bbc_size\">Potato Theme</span></strong><br /><a href=\"https://github.com/SychO9/smf-potato-theme\" class=\"bbc_link\" target=\"_blank\" rel=\"noopener noreferrer\"><img src=\"https://img.shields.io/badge/smf--potato--theme-blue.svg?style=flat-square&amp;color=24292e&amp;logo=github\" alt=\"\" class=\"bbc_img\" /></a> <img src=\"https://img.shields.io/github/v/release/SychO9/smf-potato-theme?include_prereleases&amp;sort=date&amp;style=flat-square\" alt=\"\" class=\"bbc_img\" /> <img src=\"https://img.shields.io/badge/SMF-^2.1-blue.svg?style=flat-square&amp;color=ed6033\" alt=\"\" class=\"bbc_img\" /> <img src=\"https://img.shields.io/badge/license-MIT-green.svg?style=flat-square&amp;color=green\" alt=\"\" class=\"bbc_img\" /><br /><br />The SMF Potato Theme that has nothing to do with potatoes.<br /><br /><strong>WARNING</strong>: <span style=\"color: red;\" class=\"bbc_color\">Does not work with ancient browsers. Compatible with SMF2.1 RC3+</span><br /><br /><a href=\"https://www.buymeacoffee.com/sycho\" class=\"bbc_link\" target=\"_blank\" rel=\"noopener noreferrer\"><img src=\"https://cdn.buymeacoffee.com/buttons/v2/default-yellow.png\" alt=\"\" width=\"217\" height=\"60\" class=\"bbc_img resized\" /></a><br /><br /><strong><span style=\"font-size: 14pt;\" class=\"bbc_size\">Screenshots</span></strong><br /><div align=\"center\"><img src=\"https://user-images.githubusercontent.com/20267363/88466387-aa571600-cec3-11ea-956a-50fc83719546.png\" alt=\"\" width=\"350\" class=\"bbc_img resized\" /><img src=\"https://user-images.githubusercontent.com/20267363/88466373-96131900-cec3-11ea-925e-ce624a7d08db.png\" alt=\"\" width=\"350\" class=\"bbc_img resized\" /><br /></div><br /><strong><span style=\"font-size: 14pt;\" class=\"bbc_size\">Installation</span></strong><br />Download <a href=\"https://github.com/SychO9/smf-potato-theme/releases\" class=\"bbc_link\" target=\"_blank\" rel=\"noopener noreferrer\">the latest release</a> package and upload it to your forum&#039;s theme section.<br /><br /><strong><span style=\"font-size: 14pt;\" class=\"bbc_size\">Updating</span></strong><br />To update the theme, you can either manually apply the changes to the theme&#039;s files, or overwrite the theme files with files from a new release package.<br /><br /><strong><span style=\"font-size: 12pt;\" class=\"bbc_size\">Overwriting files with new release package files</span></strong><br />This means that any custom file edits you may have made to the theme or any mod&#039;s modifications to the theme files will be lost, the former is not a problem as long as you remember your custom edits. The latter can create big problems with your forum setup.<br /><br />So the only way for you to update the theme this way, is for you to avoid installing mods that edit the theme&#039;s files and make sure the theme&#039;s files are untouched.<br /><br /><strong><span style=\"font-size: 12pt;\" class=\"bbc_size\">Manually updating</span></strong><br />If for whatever reason you cannot leave the theme files untouched, the only other way is for you to make the theme edits made from your version to the latest.<br /><br />To list these edits, simply use the following URL by replacing the `VERSION` by your theme&#039;s version number and `NEW_VERSION` by the latest version number which you can see in <a href=\"https://github.com/SychO9/smf-potato-theme/releases\" class=\"bbc_link\" target=\"_blank\" rel=\"noopener noreferrer\">the releases page</a>.<br /><br />`https://github.com/SychO9/smf-potato-theme/compare/VERSION...NEW_VERSION`<br /><br /><strong><span style=\"font-size: 12pt;\" class=\"bbc_size\">License</span></strong><br />The MIT License.<br /><br /><strong><span style=\"font-size: 12pt;\" class=\"bbc_size\">Donate</span></strong><br />Support the project by <a href=\"https://www.buymeacoffee.com/sycho\" class=\"bbc_link\" target=\"_blank\" rel=\"noopener noreferrer\">Donating</a>.\',\r\n		file: \'potato_0.1.1.tar.gz\',\r\n		author: \'SychO\'\r\n	},\r\n	2950: {\r\n		name: \'Jane [Responsive]\',\r\n		desc: \'A very simple plane Jane responsive theme for SMF 2.0. Has your social media follow buttons, flat design and minimal. Our style is clean, flat and professional. When you see our design out there, you&#039;ll know where it came from, idesignSMF.com This theme is free for personal and commercial use. You are allowed to use it in your projects, change it and adapt for your purposes. You are not allowed to remove the authorship and link to idesignsSMF.com<br /><br />**<a href=\"https://www.idesignsmf.com/demo/index.php?theme=13\" class=\"bbc_link\" target=\"_blank\" rel=\"noopener noreferrer\">Demo</a>\',\r\n		file: \'jane-v1.zip\',\r\n		author: \'BlueDevil\'\r\n	},\r\n	153: {\r\n		name: \'Absolute II\',\r\n		desc: \'Same theme base as my last release (Absolute Container) except it is lighter and more professional looking, for those of you who dont like dark themes. again this comes with both smf and tinyporal index.template.php\\\'s <br />\',\r\n		file: \'Absolute_II.zip\',\r\n		author: \'TreetopClimber\'\r\n	}\r\n};\r\nvar smf_featured = 2917;\r\nvar smf_random = 153;\r\nvar smf_latestThemes = [2955, 2953, 2950];\r\nfunction smf_themesMoreInfo(id)\r\n{\r\n	window.smfLatestThemes_temp = document.getElementById(\"smfLatestThemesWindow\").innerHTML;\r\n\r\n	// !!! Why not just always auto?\r\n	document.getElementById(\"smfLatestThemesWindow\").style.overflow = \"auto\";\r\n	setInnerHTML(document.getElementById(\"smfLatestThemesWindow\"),\r\n	\'\\\r\n		<h3 style=\"margin: 0; padding: 4px;\">\' + smf_themeInfo[id].name + \'</h3>\\\r\n		<h4 style=\"margin: 0;padding: 4px;\"><a href=\"https://custom.simplemachines.org/themes/index.php?lemma=\' + id + \'\">View Theme Now!</a></h4>\\\r\n		<div style=\"overflow: auto;\">\\\r\n			<img src=\"https://custom.simplemachines.org/themes/index.php?action=download;lemma=\'+id+\';image=thumb\" alt=\"\" style=\"float: right; margin: 10px;\" />\\\r\n			<div style=\"padding:8px;\">\' + smf_themeInfo[id].desc.replace(/<a href/g, \'<a href\') + \'</div>\\\r\n		</div>\\\r\n		<div style=\"padding: 4px;\" class=\"smalltext\"><a href=\"javascript:smf_themesBack();void(0);\">(go back)</a></div>\');\r\n}\r\n\r\nfunction smf_themesBack()\r\n{\r\n	document.getElementById(\"smfLatestThemesWindow\").style.overflow = \"\";\r\n	setInnerHTML(document.getElementById(\"smfLatestThemesWindow\"), window.smfLatestThemes_temp);\r\n	window.scrollTo(0, findTop(document.getElementById(\"smfLatestThemesWindow\")) - 10);\r\n}\r\n\r\nwindow.smfLatestThemes = \'\\\r\n	<div id=\"smfLatestThemesWindow\">\\\r\n		<div>\\\r\n			<img src=\"https://www.simplemachines.org/smf/images/themes.png\" width=\"102\" height=\"98\" style=\"float: right; margin: 0 0 10px 10px;\" alt=\"(package)\" />\\\r\n			<ul style=\"list-style: none; padding: 0; margin: 0 0 0 5px;\">\';\r\nfor(var i=0; i < smf_latestThemes.length; i++)\r\n{\r\n	var id_theme = smf_latestThemes[i];\r\n	window.smfLatestThemes += \'\\\r\n				<li style=\"list-style: none;\"><a href=\"javascript:smf_themesMoreInfo(\' + id_theme + \');void(0);\">\' + smf_themeInfo[id_theme].name + \' by \' + smf_themeInfo[id_theme].author + \'</a></li>\';\r\n}\r\n\r\nwindow.smfLatestThemes += \'\\\r\n			</ul>\';\r\nif ( smf_featured !=0 || smf_random != 0 )\r\n{\r\n\r\n	if ( smf_featured != 0 )\r\n		window.smfLatestThemes += \'\\\r\n				<h4 style=\"padding: 4px 4px 0 4px; margin: 0;\">Featured Theme</h4>\\\r\n				<p style=\"padding: 0 4px; margin: 0;\">\\\r\n					<a href=\"javascript:smf_themesMoreInfo(\'+smf_featured+\');void(0);\">\'+smf_themeInfo[smf_featured].name + \' by \' + smf_themeInfo[smf_featured].author+\'</a>\\\r\n				</p>\';\r\n	if ( smf_random != 0 )\r\n		window.smfLatestThemes += \'\\\r\n				<h4 style=\"padding: 4px 4px 0 4px;margin: 0;\">Theme of the Moment</h4>\\\r\n				<p style=\"padding: 0 4px; margin: 0;\">\\\r\n					<a href=\"javascript:smf_themesMoreInfo(\'+smf_random+\');void(0);\">\'+smf_themeInfo[smf_random].name + \' by \' + smf_themeInfo[smf_random].author+\'</a>\\\r\n				</p>\';\r\n}\r\nwindow.smfLatestThemes += \'\\\r\n		</div>\\\r\n	</div>\';\r\n\r\nfunction findTop(el)\r\n{\r\n	if (typeof(el.tagName) == \"undefined\")\r\n		return 0;\r\n\r\n	var skipMe = in_array(el.tagName.toLowerCase(), el.parentNode ? [\"tr\", \"tbody\", \"form\"] : []);\r\n	var coordsParent = el.parentNode ? \"parentNode\" : \"offsetParent\";\r\n\r\n	if (el[coordsParent] == null || typeof(el[coordsParent].offsetTop) == \"undefined\")\r\n		return skipMe ? 0 : el.offsetTop;\r\n	else\r\n		return (skipMe ? 0 : el.offsetTop) + findTop(el[coordsParent]);\r\n}\r\n\r\nfunction in_array(item, array)\r\n{\r\n	for (var i in array)\r\n	{\r\n		if (array[i] == item)\r\n			return true;\r\n	}\r\n\r\n	return false;\r\n}', 'text/javascript');

-- --------------------------------------------------------

--
-- Estrutura da tabela `kzw_approval_queue`
--

CREATE TABLE `kzw_approval_queue` (
  `id_msg` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `id_attach` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `id_event` smallint(5) UNSIGNED NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura da tabela `kzw_attachments`
--

CREATE TABLE `kzw_attachments` (
  `id_attach` int(10) UNSIGNED NOT NULL,
  `id_thumb` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `id_msg` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `id_member` mediumint(8) UNSIGNED NOT NULL DEFAULT 0,
  `id_folder` tinyint(3) NOT NULL DEFAULT 1,
  `attachment_type` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `filename` varchar(255) NOT NULL DEFAULT '',
  `file_hash` varchar(40) NOT NULL DEFAULT '',
  `fileext` varchar(8) NOT NULL DEFAULT '',
  `size` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `downloads` mediumint(8) UNSIGNED NOT NULL DEFAULT 0,
  `width` mediumint(8) UNSIGNED NOT NULL DEFAULT 0,
  `height` mediumint(8) UNSIGNED NOT NULL DEFAULT 0,
  `mime_type` varchar(20) NOT NULL DEFAULT '',
  `approved` tinyint(3) NOT NULL DEFAULT 1
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura da tabela `kzw_ban_groups`
--

CREATE TABLE `kzw_ban_groups` (
  `id_ban_group` mediumint(8) UNSIGNED NOT NULL,
  `name` varchar(20) NOT NULL DEFAULT '',
  `ban_time` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `expire_time` int(10) UNSIGNED DEFAULT NULL,
  `cannot_access` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `cannot_register` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `cannot_post` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `cannot_login` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `reason` varchar(255) NOT NULL DEFAULT '',
  `notes` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura da tabela `kzw_ban_items`
--

CREATE TABLE `kzw_ban_items` (
  `id_ban` mediumint(8) UNSIGNED NOT NULL,
  `id_ban_group` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `ip_low1` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `ip_high1` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `ip_low2` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `ip_high2` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `ip_low3` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `ip_high3` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `ip_low4` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `ip_high4` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `hostname` varchar(255) NOT NULL DEFAULT '',
  `email_address` varchar(255) NOT NULL DEFAULT '',
  `id_member` mediumint(8) UNSIGNED NOT NULL DEFAULT 0,
  `hits` mediumint(8) UNSIGNED NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura da tabela `kzw_boards`
--

CREATE TABLE `kzw_boards` (
  `id_board` smallint(5) UNSIGNED NOT NULL,
  `id_cat` tinyint(4) UNSIGNED NOT NULL DEFAULT 0,
  `child_level` tinyint(4) UNSIGNED NOT NULL DEFAULT 0,
  `id_parent` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `board_order` smallint(5) NOT NULL DEFAULT 0,
  `id_last_msg` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `id_msg_updated` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `member_groups` varchar(255) NOT NULL DEFAULT '-1,0',
  `id_profile` smallint(5) UNSIGNED NOT NULL DEFAULT 1,
  `name` varchar(255) NOT NULL DEFAULT '',
  `description` text NOT NULL,
  `num_topics` mediumint(8) UNSIGNED NOT NULL DEFAULT 0,
  `num_posts` mediumint(8) UNSIGNED NOT NULL DEFAULT 0,
  `count_posts` tinyint(4) NOT NULL DEFAULT 0,
  `id_theme` tinyint(4) UNSIGNED NOT NULL DEFAULT 0,
  `override_theme` tinyint(4) UNSIGNED NOT NULL DEFAULT 0,
  `unapproved_posts` smallint(5) NOT NULL DEFAULT 0,
  `unapproved_topics` smallint(5) NOT NULL DEFAULT 0,
  `redirect` varchar(255) NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `kzw_boards`
--

INSERT INTO `kzw_boards` (`id_board`, `id_cat`, `child_level`, `id_parent`, `board_order`, `id_last_msg`, `id_msg_updated`, `member_groups`, `id_profile`, `name`, `description`, `num_topics`, `num_posts`, `count_posts`, `id_theme`, `override_theme`, `unapproved_posts`, `unapproved_topics`, `redirect`) VALUES
(2, 2, 0, 0, 1, 2, 2, '-1,0,2,4,5,6,7,8', 1, 'Fórum', 'Verifique aqui as regras e tutoriais sobre o fórum', 1, 1, 0, 0, 0, 0, 0, ''),
(3, 2, 0, 0, 2, 4, 4, '-1,0,2,4,5,6,7,8', 1, 'Servidor', '', 2, 2, 0, 0, 0, 0, 0, ''),
(4, 3, 0, 0, 3, 5, 5, '0,2,4,5,6,7,8', 1, 'Ajuda', 'Utilize está seção para sanar suas dúvidas sobre sobre o servidor ou fórum.', 1, 1, 0, 0, 0, 0, 0, ''),
(5, 3, 0, 0, 4, 0, 0, '-1,0,2,4,5,6,7,8', 1, 'Suporte', 'Solicite aqui suporte para problemas que somente a equipe administrativa possa solucionar', 0, 0, 0, 0, 0, 0, 0, ''),
(6, 8, 0, 0, 5, 0, 0, '-1,0,2,4,5,6,7,8', 1, 'Cheaters / Hacks', 'Utilize está seção para reportar jogadores que utilizam modificação para ter vantagens', 0, 0, 0, 0, 0, 0, 0, ''),
(7, 8, 0, 0, 6, 0, 0, '2,4,5,6,7,8', 1, 'Anti roleplay', 'Utilize está seção para reportar jogadores que não seguem e/ou atrapalham o rol alheio', 0, 0, 0, 0, 0, 0, 0, ''),
(8, 8, 0, 0, 9, 0, 0, '0,2,4,5,6,7,8', 1, 'Erros e/ou bugs', 'Utilize está seção para reportar erros encontrados no servidor ou fórum', 0, 0, 0, 0, 0, 0, 0, ''),
(9, 8, 0, 0, 7, 0, 0, '0,2,4,5,6,7,8', 1, 'Roubos / Enganações', 'Utilize está seção caso teve sua conta roubada ou foi enganado por alguém', 0, 0, 0, 0, 0, 0, 0, ''),
(10, 8, 0, 0, 8, 0, 0, '-1,0,2,4,5,6,7,8', 1, 'Discurso de ódio', 'Utilize está seção para reportar jogadores com má conduta que pregam o racismo, homofobia, etc', 0, 0, 0, 0, 0, 0, 0, ''),
(11, 4, 0, 0, 10, 0, 0, '-1,0,2,4,5,6,7,8', 1, 'Imóveis', 'Solicite que uma propriedade seja posta a venda ou consulte seu valor', 0, 0, 0, 0, 0, 0, 0, ''),
(12, 5, 0, 0, 11, 0, 0, '-1,0,2,4,5,6,7,8', 1, 'Guias e tutoriais ', 'Guias e tutoriais feitos pela comunidade', 0, 0, 0, 0, 0, 0, 0, ''),
(13, 5, 0, 0, 12, 0, 0, '-1,0,2', 1, 'Ideias ', '', 0, 0, 0, 0, 0, 0, 0, ''),
(14, 7, 0, 0, 13, 0, 0, '2', 1, 'Staff', 'Conteúdos restritos a membros com uma patente administrativa ', 0, 0, 0, 0, 0, 0, 0, '');

-- --------------------------------------------------------

--
-- Estrutura da tabela `kzw_board_permissions`
--

CREATE TABLE `kzw_board_permissions` (
  `id_group` smallint(5) NOT NULL DEFAULT 0,
  `id_profile` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `permission` varchar(30) NOT NULL DEFAULT '',
  `add_deny` tinyint(4) NOT NULL DEFAULT 1
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `kzw_board_permissions`
--

INSERT INTO `kzw_board_permissions` (`id_group`, `id_profile`, `permission`, `add_deny`) VALUES
(-1, 1, 'poll_view', 1),
(0, 1, 'remove_own', 1),
(0, 1, 'lock_own', 1),
(0, 1, 'mark_any_notify', 1),
(0, 1, 'mark_notify', 1),
(0, 1, 'modify_own', 1),
(0, 1, 'poll_add_own', 1),
(0, 1, 'poll_edit_own', 1),
(0, 1, 'poll_lock_own', 1),
(0, 1, 'poll_post', 1),
(0, 1, 'poll_view', 1),
(0, 1, 'poll_vote', 1),
(0, 1, 'post_attachment', 1),
(0, 1, 'post_new', 1),
(0, 1, 'post_reply_any', 1),
(0, 1, 'post_reply_own', 1),
(0, 1, 'post_unapproved_topics', 1),
(0, 1, 'post_unapproved_replies_any', 1),
(0, 1, 'post_unapproved_replies_own', 1),
(0, 1, 'post_unapproved_attachments', 1),
(0, 1, 'delete_own', 1),
(0, 1, 'report_any', 1),
(0, 1, 'send_topic', 1),
(0, 1, 'view_attachments', 1),
(2, 1, 'moderate_board', 1),
(2, 1, 'post_new', 1),
(2, 1, 'post_reply_own', 1),
(2, 1, 'post_reply_any', 1),
(2, 1, 'post_unapproved_topics', 1),
(2, 1, 'post_unapproved_replies_any', 1),
(2, 1, 'post_unapproved_replies_own', 1),
(2, 1, 'post_unapproved_attachments', 1),
(2, 1, 'poll_post', 1),
(2, 1, 'poll_add_any', 1),
(2, 1, 'poll_remove_any', 1),
(2, 1, 'poll_view', 1),
(2, 1, 'poll_vote', 1),
(2, 1, 'poll_lock_any', 1),
(2, 1, 'poll_edit_any', 1),
(2, 1, 'report_any', 1),
(2, 1, 'lock_own', 1),
(2, 1, 'send_topic', 1),
(2, 1, 'mark_any_notify', 1),
(2, 1, 'mark_notify', 1),
(2, 1, 'delete_own', 1),
(2, 1, 'modify_own', 1),
(2, 1, 'make_sticky', 1),
(2, 1, 'lock_any', 1),
(2, 1, 'remove_any', 1),
(2, 1, 'move_any', 1),
(2, 1, 'merge_any', 1),
(2, 1, 'split_any', 1),
(2, 1, 'delete_any', 1),
(2, 1, 'modify_any', 1),
(2, 1, 'approve_posts', 1),
(2, 1, 'post_attachment', 1),
(2, 1, 'view_attachments', 1),
(3, 1, 'moderate_board', 1),
(3, 1, 'post_new', 1),
(3, 1, 'post_reply_own', 1),
(3, 1, 'post_reply_any', 1),
(3, 1, 'post_unapproved_topics', 1),
(3, 1, 'post_unapproved_replies_any', 1),
(3, 1, 'post_unapproved_replies_own', 1),
(3, 1, 'post_unapproved_attachments', 1),
(3, 1, 'poll_post', 1),
(3, 1, 'poll_add_any', 1),
(3, 1, 'poll_remove_any', 1),
(3, 1, 'poll_view', 1),
(3, 1, 'poll_vote', 1),
(3, 1, 'poll_lock_any', 1),
(3, 1, 'poll_edit_any', 1),
(3, 1, 'report_any', 1),
(3, 1, 'lock_own', 1),
(3, 1, 'send_topic', 1),
(3, 1, 'mark_any_notify', 1),
(3, 1, 'mark_notify', 1),
(3, 1, 'delete_own', 1),
(3, 1, 'modify_own', 1),
(3, 1, 'make_sticky', 1),
(3, 1, 'lock_any', 1),
(3, 1, 'remove_any', 1),
(3, 1, 'move_any', 1),
(3, 1, 'merge_any', 1),
(3, 1, 'split_any', 1),
(3, 1, 'delete_any', 1),
(3, 1, 'modify_any', 1),
(3, 1, 'approve_posts', 1),
(3, 1, 'post_attachment', 1),
(3, 1, 'view_attachments', 1),
(-1, 2, 'poll_view', 1),
(0, 2, 'remove_own', 1),
(0, 2, 'lock_own', 1),
(0, 2, 'mark_any_notify', 1),
(0, 2, 'mark_notify', 1),
(0, 2, 'modify_own', 1),
(0, 2, 'poll_view', 1),
(0, 2, 'poll_vote', 1),
(0, 2, 'post_attachment', 1),
(0, 2, 'post_new', 1),
(0, 2, 'post_reply_any', 1),
(0, 2, 'post_reply_own', 1),
(0, 2, 'post_unapproved_topics', 1),
(0, 2, 'post_unapproved_replies_any', 1),
(0, 2, 'post_unapproved_replies_own', 1),
(0, 2, 'post_unapproved_attachments', 1),
(0, 2, 'delete_own', 1),
(0, 2, 'report_any', 1),
(0, 2, 'send_topic', 1),
(0, 2, 'view_attachments', 1),
(2, 2, 'moderate_board', 1),
(2, 2, 'post_new', 1),
(2, 2, 'post_reply_own', 1),
(2, 2, 'post_reply_any', 1),
(2, 2, 'post_unapproved_topics', 1),
(2, 2, 'post_unapproved_replies_any', 1),
(2, 2, 'post_unapproved_replies_own', 1),
(2, 2, 'post_unapproved_attachments', 1),
(2, 2, 'poll_post', 1),
(2, 2, 'poll_add_any', 1),
(2, 2, 'poll_remove_any', 1),
(2, 2, 'poll_view', 1),
(2, 2, 'poll_vote', 1),
(2, 2, 'poll_lock_any', 1),
(2, 2, 'poll_edit_any', 1),
(2, 2, 'report_any', 1),
(2, 2, 'lock_own', 1),
(2, 2, 'send_topic', 1),
(2, 2, 'mark_any_notify', 1),
(2, 2, 'mark_notify', 1),
(2, 2, 'delete_own', 1),
(2, 2, 'modify_own', 1),
(2, 2, 'make_sticky', 1),
(2, 2, 'lock_any', 1),
(2, 2, 'remove_any', 1),
(2, 2, 'move_any', 1),
(2, 2, 'merge_any', 1),
(2, 2, 'split_any', 1),
(2, 2, 'delete_any', 1),
(2, 2, 'modify_any', 1),
(2, 2, 'approve_posts', 1),
(2, 2, 'post_attachment', 1),
(2, 2, 'view_attachments', 1),
(3, 2, 'moderate_board', 1),
(3, 2, 'post_new', 1),
(3, 2, 'post_reply_own', 1),
(3, 2, 'post_reply_any', 1),
(3, 2, 'post_unapproved_topics', 1),
(3, 2, 'post_unapproved_replies_any', 1),
(3, 2, 'post_unapproved_replies_own', 1),
(3, 2, 'post_unapproved_attachments', 1),
(3, 2, 'poll_post', 1),
(3, 2, 'poll_add_any', 1),
(3, 2, 'poll_remove_any', 1),
(3, 2, 'poll_view', 1),
(3, 2, 'poll_vote', 1),
(3, 2, 'poll_lock_any', 1),
(3, 2, 'poll_edit_any', 1),
(3, 2, 'report_any', 1),
(3, 2, 'lock_own', 1),
(3, 2, 'send_topic', 1),
(3, 2, 'mark_any_notify', 1),
(3, 2, 'mark_notify', 1),
(3, 2, 'delete_own', 1),
(3, 2, 'modify_own', 1),
(3, 2, 'make_sticky', 1),
(3, 2, 'lock_any', 1),
(3, 2, 'remove_any', 1),
(3, 2, 'move_any', 1),
(3, 2, 'merge_any', 1),
(3, 2, 'split_any', 1),
(3, 2, 'delete_any', 1),
(3, 2, 'modify_any', 1),
(3, 2, 'approve_posts', 1),
(3, 2, 'post_attachment', 1),
(3, 2, 'view_attachments', 1),
(-1, 3, 'poll_view', 1),
(0, 3, 'remove_own', 1),
(0, 3, 'lock_own', 1),
(0, 3, 'mark_any_notify', 1),
(0, 3, 'mark_notify', 1),
(0, 3, 'modify_own', 1),
(0, 3, 'poll_view', 1),
(0, 3, 'poll_vote', 1),
(0, 3, 'post_attachment', 1),
(0, 3, 'post_reply_any', 1),
(0, 3, 'post_reply_own', 1),
(0, 3, 'post_unapproved_replies_any', 1),
(0, 3, 'post_unapproved_replies_own', 1),
(0, 3, 'post_unapproved_attachments', 1),
(0, 3, 'delete_own', 1),
(0, 3, 'report_any', 1),
(0, 3, 'send_topic', 1),
(0, 3, 'view_attachments', 1),
(2, 3, 'moderate_board', 1),
(2, 3, 'post_new', 1),
(2, 3, 'post_reply_own', 1),
(2, 3, 'post_reply_any', 1),
(2, 3, 'post_unapproved_topics', 1),
(2, 3, 'post_unapproved_replies_any', 1),
(2, 3, 'post_unapproved_replies_own', 1),
(2, 3, 'post_unapproved_attachments', 1),
(2, 3, 'poll_post', 1),
(2, 3, 'poll_add_any', 1),
(2, 3, 'poll_remove_any', 1),
(2, 3, 'poll_view', 1),
(2, 3, 'poll_vote', 1),
(2, 3, 'poll_lock_any', 1),
(2, 3, 'poll_edit_any', 1),
(2, 3, 'report_any', 1),
(2, 3, 'lock_own', 1),
(2, 3, 'send_topic', 1),
(2, 3, 'mark_any_notify', 1),
(2, 3, 'mark_notify', 1),
(2, 3, 'delete_own', 1),
(2, 3, 'modify_own', 1),
(2, 3, 'make_sticky', 1),
(2, 3, 'lock_any', 1),
(2, 3, 'remove_any', 1),
(2, 3, 'move_any', 1),
(2, 3, 'merge_any', 1),
(2, 3, 'split_any', 1),
(2, 3, 'delete_any', 1),
(2, 3, 'modify_any', 1),
(2, 3, 'approve_posts', 1),
(2, 3, 'post_attachment', 1),
(2, 3, 'view_attachments', 1),
(3, 3, 'moderate_board', 1),
(3, 3, 'post_new', 1),
(3, 3, 'post_reply_own', 1),
(3, 3, 'post_reply_any', 1),
(3, 3, 'post_unapproved_topics', 1),
(3, 3, 'post_unapproved_replies_any', 1),
(3, 3, 'post_unapproved_replies_own', 1),
(3, 3, 'post_unapproved_attachments', 1),
(3, 3, 'poll_post', 1),
(3, 3, 'poll_add_any', 1),
(3, 3, 'poll_remove_any', 1),
(3, 3, 'poll_view', 1),
(3, 3, 'poll_vote', 1),
(3, 3, 'poll_lock_any', 1),
(3, 3, 'poll_edit_any', 1),
(3, 3, 'report_any', 1),
(3, 3, 'lock_own', 1),
(3, 3, 'send_topic', 1),
(3, 3, 'mark_any_notify', 1),
(3, 3, 'mark_notify', 1),
(3, 3, 'delete_own', 1),
(3, 3, 'modify_own', 1),
(3, 3, 'make_sticky', 1),
(3, 3, 'lock_any', 1),
(3, 3, 'remove_any', 1),
(3, 3, 'move_any', 1),
(3, 3, 'merge_any', 1),
(3, 3, 'split_any', 1),
(3, 3, 'delete_any', 1),
(3, 3, 'modify_any', 1),
(3, 3, 'approve_posts', 1),
(3, 3, 'post_attachment', 1),
(3, 3, 'view_attachments', 1),
(-1, 4, 'poll_view', 1),
(0, 4, 'mark_any_notify', 1),
(0, 4, 'mark_notify', 1),
(0, 4, 'poll_view', 1),
(0, 4, 'poll_vote', 1),
(0, 4, 'report_any', 1),
(0, 4, 'send_topic', 1),
(0, 4, 'view_attachments', 1),
(2, 4, 'moderate_board', 1),
(2, 4, 'post_new', 1),
(2, 4, 'post_reply_own', 1),
(2, 4, 'post_reply_any', 1),
(2, 4, 'post_unapproved_topics', 1),
(2, 4, 'post_unapproved_replies_any', 1),
(2, 4, 'post_unapproved_replies_own', 1),
(2, 4, 'post_unapproved_attachments', 1),
(2, 4, 'poll_post', 1),
(2, 4, 'poll_add_any', 1),
(2, 4, 'poll_remove_any', 1),
(2, 4, 'poll_view', 1),
(2, 4, 'poll_vote', 1),
(2, 4, 'poll_lock_any', 1),
(2, 4, 'poll_edit_any', 1),
(2, 4, 'report_any', 1),
(2, 4, 'lock_own', 1),
(2, 4, 'send_topic', 1),
(2, 4, 'mark_any_notify', 1),
(2, 4, 'mark_notify', 1),
(2, 4, 'delete_own', 1),
(2, 4, 'modify_own', 1),
(2, 4, 'make_sticky', 1),
(2, 4, 'lock_any', 1),
(2, 4, 'remove_any', 1),
(2, 4, 'move_any', 1),
(2, 4, 'merge_any', 1),
(2, 4, 'split_any', 1),
(2, 4, 'delete_any', 1),
(2, 4, 'modify_any', 1),
(2, 4, 'approve_posts', 1),
(2, 4, 'post_attachment', 1),
(2, 4, 'view_attachments', 1),
(3, 4, 'moderate_board', 1),
(3, 4, 'post_new', 1),
(3, 4, 'post_reply_own', 1),
(3, 4, 'post_reply_any', 1),
(3, 4, 'post_unapproved_topics', 1),
(3, 4, 'post_unapproved_replies_any', 1),
(3, 4, 'post_unapproved_replies_own', 1),
(3, 4, 'post_unapproved_attachments', 1),
(3, 4, 'poll_post', 1),
(3, 4, 'poll_add_any', 1),
(3, 4, 'poll_remove_any', 1),
(3, 4, 'poll_view', 1),
(3, 4, 'poll_vote', 1),
(3, 4, 'poll_lock_any', 1),
(3, 4, 'poll_edit_any', 1),
(3, 4, 'report_any', 1),
(3, 4, 'lock_own', 1),
(3, 4, 'send_topic', 1),
(3, 4, 'mark_any_notify', 1),
(3, 4, 'mark_notify', 1),
(3, 4, 'delete_own', 1),
(3, 4, 'modify_own', 1),
(3, 4, 'make_sticky', 1),
(3, 4, 'lock_any', 1),
(3, 4, 'remove_any', 1),
(3, 4, 'move_any', 1),
(3, 4, 'merge_any', 1),
(3, 4, 'split_any', 1),
(3, 4, 'delete_any', 1),
(3, 4, 'modify_any', 1),
(3, 4, 'approve_posts', 1),
(3, 4, 'post_attachment', 1),
(3, 4, 'view_attachments', 1);

-- --------------------------------------------------------

--
-- Estrutura da tabela `kzw_calendar`
--

CREATE TABLE `kzw_calendar` (
  `id_event` smallint(5) UNSIGNED NOT NULL,
  `start_date` date NOT NULL DEFAULT '0001-01-01',
  `end_date` date NOT NULL DEFAULT '0001-01-01',
  `id_board` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `id_topic` mediumint(8) UNSIGNED NOT NULL DEFAULT 0,
  `title` varchar(255) NOT NULL DEFAULT '',
  `id_member` mediumint(8) UNSIGNED NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura da tabela `kzw_calendar_holidays`
--

CREATE TABLE `kzw_calendar_holidays` (
  `id_holiday` smallint(5) UNSIGNED NOT NULL,
  `event_date` date NOT NULL DEFAULT '0001-01-01',
  `title` varchar(255) NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `kzw_calendar_holidays`
--

INSERT INTO `kzw_calendar_holidays` (`id_holiday`, `event_date`, `title`) VALUES
(1, '0004-01-01', 'New Year\'s'),
(2, '0004-12-25', 'Christmas'),
(3, '0004-02-14', 'Valentine\'s Day'),
(4, '0004-03-17', 'St. Patrick\'s Day'),
(5, '0004-04-01', 'April Fools'),
(6, '0004-04-22', 'Earth Day'),
(7, '0004-10-24', 'United Nations Day'),
(8, '0004-10-31', 'Halloween'),
(9, '2010-05-09', 'Mother\'s Day'),
(10, '2011-05-08', 'Mother\'s Day'),
(11, '2012-05-13', 'Mother\'s Day'),
(12, '2013-05-12', 'Mother\'s Day'),
(13, '2014-05-11', 'Mother\'s Day'),
(14, '2015-05-10', 'Mother\'s Day'),
(15, '2016-05-08', 'Mother\'s Day'),
(16, '2017-05-14', 'Mother\'s Day'),
(17, '2018-05-13', 'Mother\'s Day'),
(18, '2019-05-12', 'Mother\'s Day'),
(19, '2020-05-10', 'Mother\'s Day'),
(20, '2008-06-15', 'Father\'s Day'),
(21, '2009-06-21', 'Father\'s Day'),
(22, '2010-06-20', 'Father\'s Day'),
(23, '2011-06-19', 'Father\'s Day'),
(24, '2012-06-17', 'Father\'s Day'),
(25, '2013-06-16', 'Father\'s Day'),
(26, '2014-06-15', 'Father\'s Day'),
(27, '2015-06-21', 'Father\'s Day'),
(28, '2016-06-19', 'Father\'s Day'),
(29, '2017-06-18', 'Father\'s Day'),
(30, '2018-06-17', 'Father\'s Day'),
(31, '2019-06-16', 'Father\'s Day'),
(32, '2020-06-21', 'Father\'s Day'),
(33, '2010-06-21', 'Summer Solstice'),
(34, '2011-06-21', 'Summer Solstice'),
(35, '2012-06-20', 'Summer Solstice'),
(36, '2013-06-21', 'Summer Solstice'),
(37, '2014-06-21', 'Summer Solstice'),
(38, '2015-06-21', 'Summer Solstice'),
(39, '2016-06-20', 'Summer Solstice'),
(40, '2017-06-20', 'Summer Solstice'),
(41, '2018-06-21', 'Summer Solstice'),
(42, '2019-06-21', 'Summer Solstice'),
(43, '2020-06-20', 'Summer Solstice'),
(44, '2010-03-20', 'Vernal Equinox'),
(45, '2011-03-20', 'Vernal Equinox'),
(46, '2012-03-20', 'Vernal Equinox'),
(47, '2013-03-20', 'Vernal Equinox'),
(48, '2014-03-20', 'Vernal Equinox'),
(49, '2015-03-20', 'Vernal Equinox'),
(50, '2016-03-19', 'Vernal Equinox'),
(51, '2017-03-20', 'Vernal Equinox'),
(52, '2018-03-20', 'Vernal Equinox'),
(53, '2019-03-20', 'Vernal Equinox'),
(54, '2020-03-19', 'Vernal Equinox'),
(55, '2010-12-21', 'Winter Solstice'),
(56, '2011-12-22', 'Winter Solstice'),
(57, '2012-12-21', 'Winter Solstice'),
(58, '2013-12-21', 'Winter Solstice'),
(59, '2014-12-21', 'Winter Solstice'),
(60, '2015-12-21', 'Winter Solstice'),
(61, '2016-12-21', 'Winter Solstice'),
(62, '2017-12-21', 'Winter Solstice'),
(63, '2018-12-21', 'Winter Solstice'),
(64, '2019-12-21', 'Winter Solstice'),
(65, '2020-12-21', 'Winter Solstice'),
(66, '2010-09-22', 'Autumnal Equinox'),
(67, '2011-09-23', 'Autumnal Equinox'),
(68, '2012-09-22', 'Autumnal Equinox'),
(69, '2013-09-22', 'Autumnal Equinox'),
(70, '2014-09-22', 'Autumnal Equinox'),
(71, '2015-09-23', 'Autumnal Equinox'),
(72, '2016-09-22', 'Autumnal Equinox'),
(73, '2017-09-22', 'Autumnal Equinox'),
(74, '2018-09-22', 'Autumnal Equinox'),
(75, '2019-09-23', 'Autumnal Equinox'),
(76, '2020-09-22', 'Autumnal Equinox'),
(77, '0004-07-04', 'Independence Day'),
(78, '0004-05-05', 'Cinco de Mayo'),
(79, '0004-06-14', 'Flag Day'),
(80, '0004-11-11', 'Veterans Day'),
(81, '0004-02-02', 'Groundhog Day'),
(82, '2010-11-25', 'Thanksgiving'),
(83, '2011-11-24', 'Thanksgiving'),
(84, '2012-11-22', 'Thanksgiving'),
(85, '2013-11-28', 'Thanksgiving'),
(86, '2014-11-27', 'Thanksgiving'),
(87, '2015-11-26', 'Thanksgiving'),
(88, '2016-11-24', 'Thanksgiving'),
(89, '2017-11-23', 'Thanksgiving'),
(90, '2018-11-22', 'Thanksgiving'),
(91, '2019-11-28', 'Thanksgiving'),
(92, '2020-11-26', 'Thanksgiving'),
(93, '2010-05-31', 'Memorial Day'),
(94, '2011-05-30', 'Memorial Day'),
(95, '2012-05-28', 'Memorial Day'),
(96, '2013-05-27', 'Memorial Day'),
(97, '2014-05-26', 'Memorial Day'),
(98, '2015-05-25', 'Memorial Day'),
(99, '2016-05-30', 'Memorial Day'),
(100, '2017-05-29', 'Memorial Day'),
(101, '2018-05-28', 'Memorial Day'),
(102, '2019-05-27', 'Memorial Day'),
(103, '2020-05-25', 'Memorial Day'),
(104, '2010-09-06', 'Labor Day'),
(105, '2011-09-05', 'Labor Day'),
(106, '2012-09-03', 'Labor Day'),
(107, '2013-09-02', 'Labor Day'),
(108, '2014-09-01', 'Labor Day'),
(109, '2015-09-07', 'Labor Day'),
(110, '2016-09-05', 'Labor Day'),
(111, '2017-09-04', 'Labor Day'),
(112, '2018-09-03', 'Labor Day'),
(113, '2019-09-02', 'Labor Day'),
(114, '2020-09-07', 'Labor Day'),
(115, '0004-06-06', 'D-Day');

-- --------------------------------------------------------

--
-- Estrutura da tabela `kzw_categories`
--

CREATE TABLE `kzw_categories` (
  `id_cat` tinyint(4) UNSIGNED NOT NULL,
  `cat_order` tinyint(4) NOT NULL DEFAULT 0,
  `name` varchar(255) NOT NULL DEFAULT '',
  `can_collapse` tinyint(1) NOT NULL DEFAULT 1
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `kzw_categories`
--

INSERT INTO `kzw_categories` (`id_cat`, `cat_order`, `name`, `can_collapse`) VALUES
(2, 0, 'Servidor e fórum', 1),
(3, 1, 'Ajuda e suporte', 1),
(4, 3, 'Solicitações e consultorias', 1),
(5, 4, 'Ajuda da comunidade', 1),
(6, 5, 'Roleplay e afíns', 1),
(7, 6, 'Administração', 1),
(8, 2, 'Reportes', 1);

-- --------------------------------------------------------

--
-- Estrutura da tabela `kzw_collapsed_categories`
--

CREATE TABLE `kzw_collapsed_categories` (
  `id_cat` tinyint(4) UNSIGNED NOT NULL DEFAULT 0,
  `id_member` mediumint(8) UNSIGNED NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura da tabela `kzw_custom_fields`
--

CREATE TABLE `kzw_custom_fields` (
  `id_field` smallint(5) NOT NULL,
  `col_name` varchar(12) NOT NULL DEFAULT '',
  `field_name` varchar(40) NOT NULL DEFAULT '',
  `field_desc` varchar(255) NOT NULL DEFAULT '',
  `field_type` varchar(8) NOT NULL DEFAULT 'text',
  `field_length` smallint(5) NOT NULL DEFAULT 255,
  `field_options` text NOT NULL,
  `mask` varchar(255) NOT NULL DEFAULT '',
  `show_reg` tinyint(3) NOT NULL DEFAULT 0,
  `show_display` tinyint(3) NOT NULL DEFAULT 0,
  `show_profile` varchar(20) NOT NULL DEFAULT 'forumprofile',
  `private` tinyint(3) NOT NULL DEFAULT 0,
  `active` tinyint(3) NOT NULL DEFAULT 1,
  `bbc` tinyint(3) NOT NULL DEFAULT 0,
  `can_search` tinyint(3) NOT NULL DEFAULT 0,
  `default_value` varchar(255) NOT NULL DEFAULT '',
  `enclose` text NOT NULL,
  `placement` tinyint(3) NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura da tabela `kzw_group_moderators`
--

CREATE TABLE `kzw_group_moderators` (
  `id_group` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `id_member` mediumint(8) UNSIGNED NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura da tabela `kzw_log_actions`
--

CREATE TABLE `kzw_log_actions` (
  `id_action` int(10) UNSIGNED NOT NULL,
  `id_log` tinyint(3) UNSIGNED NOT NULL DEFAULT 1,
  `log_time` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `id_member` mediumint(8) UNSIGNED NOT NULL DEFAULT 0,
  `ip` char(16) NOT NULL DEFAULT '',
  `action` varchar(30) NOT NULL DEFAULT '',
  `id_board` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `id_topic` mediumint(8) UNSIGNED NOT NULL DEFAULT 0,
  `id_msg` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `extra` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura da tabela `kzw_log_activity`
--

CREATE TABLE `kzw_log_activity` (
  `date` date NOT NULL DEFAULT '0001-01-01',
  `hits` mediumint(8) UNSIGNED NOT NULL DEFAULT 0,
  `topics` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `posts` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `registers` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `most_on` smallint(5) UNSIGNED NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `kzw_log_activity`
--

INSERT INTO `kzw_log_activity` (`date`, `hits`, `topics`, `posts`, `registers`, `most_on`) VALUES
('2021-03-07', 0, 1, 1, 1, 1),
('2021-03-08', 0, 0, 0, 1, 1),
('2021-03-09', 0, 4, 4, 0, 1);

-- --------------------------------------------------------

--
-- Estrutura da tabela `kzw_log_banned`
--

CREATE TABLE `kzw_log_banned` (
  `id_ban_log` mediumint(8) UNSIGNED NOT NULL,
  `id_member` mediumint(8) UNSIGNED NOT NULL DEFAULT 0,
  `ip` char(16) NOT NULL DEFAULT '',
  `email` varchar(255) NOT NULL DEFAULT '',
  `log_time` int(10) UNSIGNED NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura da tabela `kzw_log_boards`
--

CREATE TABLE `kzw_log_boards` (
  `id_member` mediumint(8) UNSIGNED NOT NULL DEFAULT 0,
  `id_board` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `id_msg` int(10) UNSIGNED NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `kzw_log_boards`
--

INSERT INTO `kzw_log_boards` (`id_member`, `id_board`, `id_msg`) VALUES
(7, 3, 4),
(7, 2, 2),
(8, 4, 5);

-- --------------------------------------------------------

--
-- Estrutura da tabela `kzw_log_comments`
--

CREATE TABLE `kzw_log_comments` (
  `id_comment` mediumint(8) UNSIGNED NOT NULL,
  `id_member` mediumint(8) UNSIGNED NOT NULL DEFAULT 0,
  `member_name` varchar(80) NOT NULL DEFAULT '',
  `comment_type` varchar(8) NOT NULL DEFAULT 'warning',
  `id_recipient` mediumint(8) UNSIGNED NOT NULL DEFAULT 0,
  `recipient_name` varchar(255) NOT NULL DEFAULT '',
  `log_time` int(10) NOT NULL DEFAULT 0,
  `id_notice` mediumint(8) UNSIGNED NOT NULL DEFAULT 0,
  `counter` tinyint(3) NOT NULL DEFAULT 0,
  `body` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura da tabela `kzw_log_digest`
--

CREATE TABLE `kzw_log_digest` (
  `id_topic` mediumint(8) UNSIGNED NOT NULL,
  `id_msg` int(10) UNSIGNED NOT NULL,
  `note_type` varchar(10) NOT NULL DEFAULT 'post',
  `daily` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `exclude` mediumint(8) UNSIGNED NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `kzw_log_digest`
--

INSERT INTO `kzw_log_digest` (`id_topic`, `id_msg`, `note_type`, `daily`, `exclude`) VALUES
(2, 2, 'topic', 0, 7),
(3, 3, 'topic', 0, 7),
(4, 4, 'topic', 0, 7),
(5, 5, 'topic', 0, 8);

-- --------------------------------------------------------

--
-- Estrutura da tabela `kzw_log_errors`
--

CREATE TABLE `kzw_log_errors` (
  `id_error` mediumint(8) UNSIGNED NOT NULL,
  `log_time` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `id_member` mediumint(8) UNSIGNED NOT NULL DEFAULT 0,
  `ip` char(16) NOT NULL DEFAULT '',
  `url` text NOT NULL,
  `message` text NOT NULL,
  `session` char(32) NOT NULL DEFAULT '',
  `error_type` char(15) NOT NULL DEFAULT 'general',
  `file` varchar(255) NOT NULL DEFAULT '',
  `line` mediumint(8) UNSIGNED NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `kzw_log_errors`
--

INSERT INTO `kzw_log_errors` (`id_error`, `log_time`, `id_member`, `ip`, `url`, `message`, `session`, `error_type`, `file`, `line`) VALUES
(1, 1615092183, 0, '', '?', '2: session_start(): Failed to decode session object. Session has been destroyed', '', 'general', 'C:/xamppp/htdocs/forum/Sources/Load.php', 2504),
(2, 1615243876, 2, '', '?action=register2', '2: mail(): Failed to connect to mailserver at &quot;localhost&quot; port 25, verify your &quot;SMTP&quot; and &quot;smtp_port&quot; setting in php.ini or use ini_set()', '0329a8d8b91e342eca4eb1ba4a9ab4dc', 'general', 'C:/xamppp/htdocs/forum/Sources/Subs-Post.php', 768),
(3, 1615243876, 2, '', '?action=register2', 'Unable to send mail to the email address \'rubyroleplaysa@gmail.com\'', '0329a8d8b91e342eca4eb1ba4a9ab4dc', 'general', '', 0),
(4, 1615251475, 7, '', '?action=admin;area=languages;sa=downloadlang;did=35130;fcfd909dd1=5cda6a43774d5047d42aa6fca778c409', 'The Simple Machines site is not responding. Please try again later.', '5cda6a43774d5047d42aa6fca778c409', 'general', '', 0),
(5, 1615251546, 7, '', '?action=admin;area=languages;sa=downloadlang;did=35130;fcfd909dd1=5cda6a43774d5047d42aa6fca778c409', 'The Simple Machines site is not responding. Please try again later.', '5cda6a43774d5047d42aa6fca778c409', 'general', '', 0),
(6, 1615260889, 7, '', '?action=admin;area=theme;fcfd909dd1=5cda6a43774d5047d42aa6fca778c409;sa=admin', '2: Undefined array key &quot;smf199&quot;', '5cda6a43774d5047d42aa6fca778c409', 'undefined_vars', 'C:/xamppp/htdocs/forum/Themes/default/Themes.template.php (main_above sub template - eval?)', 200),
(7, 1615260889, 7, '', '?action=admin;area=theme;fcfd909dd1=5cda6a43774d5047d42aa6fca778c409;sa=admin', '2: Undefined array key 103', '5cda6a43774d5047d42aa6fca778c409', 'undefined_vars', 'C:/xamppp/htdocs/forum/Themes/default/Themes.template.php (main_above sub template - eval?)', 383),
(8, 1615260889, 7, '', '?action=admin;area=theme;fcfd909dd1=5cda6a43774d5047d42aa6fca778c409;sa=admin', '2: Undefined array key 119', '5cda6a43774d5047d42aa6fca778c409', 'undefined_vars', 'C:/xamppp/htdocs/forum/Themes/default/Themes.template.php (main_above sub template - eval?)', 386),
(9, 1615260889, 7, '', '?action=admin;area=theme;fcfd909dd1=5cda6a43774d5047d42aa6fca778c409;sa=admin', '2: Undefined array key 182', '5cda6a43774d5047d42aa6fca778c409', 'undefined_vars', 'C:/xamppp/htdocs/forum/Themes/default/Themes.template.php (main_above sub template - eval?)', 390),
(10, 1615260889, 7, '', '?action=admin;area=theme;fcfd909dd1=5cda6a43774d5047d42aa6fca778c409;sa=admin', '2: Undefined array key 2', '5cda6a43774d5047d42aa6fca778c409', 'undefined_vars', 'C:/xamppp/htdocs/forum/Themes/default/Themes.template.php (main_above sub template - eval?)', 398),
(11, 1615260889, 7, '', '?action=admin;area=theme;fcfd909dd1=5cda6a43774d5047d42aa6fca778c409;sa=admin', '2: Undefined array key 79', '5cda6a43774d5047d42aa6fca778c409', 'undefined_vars', 'C:/xamppp/htdocs/forum/Themes/default/Themes.template.php (main_above sub template - eval?)', 402),
(12, 1615260889, 7, '', '?action=admin;area=theme;fcfd909dd1=5cda6a43774d5047d42aa6fca778c409;sa=admin', '2: Undefined array key 331', '5cda6a43774d5047d42aa6fca778c409', 'undefined_vars', 'C:/xamppp/htdocs/forum/Themes/default/Themes.template.php (main_above sub template - eval?)', 410),
(13, 1615260889, 7, '', '?action=admin;area=theme;fcfd909dd1=5cda6a43774d5047d42aa6fca778c409;sa=admin', '2: Undefined array key 108', '5cda6a43774d5047d42aa6fca778c409', 'undefined_vars', 'C:/xamppp/htdocs/forum/Themes/default/Themes.template.php (main_above sub template - eval?)', 422),
(14, 1615260895, 7, '', '?', '2: Undefined array key &quot;smf199&quot;', '5cda6a43774d5047d42aa6fca778c409', 'undefined_vars', 'C:/xamppp/htdocs/forum/Themes/Black_Berry_v2/BoardIndex.template.php (main_above sub template - eval?)', 200),
(15, 1615260895, 7, '', '?', '2: Undefined array key 103', '5cda6a43774d5047d42aa6fca778c409', 'undefined_vars', 'C:/xamppp/htdocs/forum/Themes/Black_Berry_v2/BoardIndex.template.php (main_above sub template - eval?)', 383),
(16, 1615260895, 7, '', '?', '2: Undefined array key 119', '5cda6a43774d5047d42aa6fca778c409', 'undefined_vars', 'C:/xamppp/htdocs/forum/Themes/Black_Berry_v2/BoardIndex.template.php (main_above sub template - eval?)', 386),
(17, 1615260895, 7, '', '?', '2: Undefined array key 182', '5cda6a43774d5047d42aa6fca778c409', 'undefined_vars', 'C:/xamppp/htdocs/forum/Themes/Black_Berry_v2/BoardIndex.template.php (main_above sub template - eval?)', 390),
(18, 1615260895, 7, '', '?', '2: Undefined array key 2', '5cda6a43774d5047d42aa6fca778c409', 'undefined_vars', 'C:/xamppp/htdocs/forum/Themes/Black_Berry_v2/BoardIndex.template.php (main_above sub template - eval?)', 398),
(19, 1615260895, 7, '', '?', '2: Undefined array key 79', '5cda6a43774d5047d42aa6fca778c409', 'undefined_vars', 'C:/xamppp/htdocs/forum/Themes/Black_Berry_v2/BoardIndex.template.php (main_above sub template - eval?)', 402),
(20, 1615260895, 7, '', '?', '2: Undefined array key 331', '5cda6a43774d5047d42aa6fca778c409', 'undefined_vars', 'C:/xamppp/htdocs/forum/Themes/Black_Berry_v2/BoardIndex.template.php (main_above sub template - eval?)', 410),
(21, 1615260895, 7, '', '?', '2: Undefined array key 108', '5cda6a43774d5047d42aa6fca778c409', 'undefined_vars', 'C:/xamppp/htdocs/forum/Themes/Black_Berry_v2/BoardIndex.template.php (main_above sub template - eval?)', 422),
(22, 1615260895, 7, '', '?', '2: Undefined array key &quot;show_sp1_info&quot;', '5cda6a43774d5047d42aa6fca778c409', 'undefined_vars', 'C:/xamppp/htdocs/forum/Themes/Black_Berry_v2/BoardIndex.template.php (main sub template - eval?)', 14),
(23, 1615260895, 7, '', '?', '2: Undefined array key 19', '5cda6a43774d5047d42aa6fca778c409', 'undefined_vars', 'C:/xamppp/htdocs/forum/Themes/Black_Berry_v2/BoardIndex.template.php (main sub template - eval?)', 16),
(24, 1615260896, 7, '', '?', '2: Undefined array key 95', '5cda6a43774d5047d42aa6fca778c409', 'undefined_vars', 'C:/xamppp/htdocs/forum/Themes/Black_Berry_v2/BoardIndex.template.php (main sub template - eval?)', 16),
(25, 1615260896, 7, '', '?', '2: Undefined array key 64', '5cda6a43774d5047d42aa6fca778c409', 'undefined_vars', 'C:/xamppp/htdocs/forum/Themes/Black_Berry_v2/BoardIndex.template.php (main sub template - eval?)', 16),
(26, 1615260896, 7, '', '?', '2: Undefined array key 201', '5cda6a43774d5047d42aa6fca778c409', 'undefined_vars', 'C:/xamppp/htdocs/forum/Themes/Black_Berry_v2/BoardIndex.template.php (main sub template - eval?)', 17),
(27, 1615260896, 7, '', '?', '2: Undefined array key 581', '5cda6a43774d5047d42aa6fca778c409', 'undefined_vars', 'C:/xamppp/htdocs/forum/Themes/Black_Berry_v2/BoardIndex.template.php (main sub template - eval?)', 17),
(28, 1615260896, 7, '', '?', '2: Undefined array key 333', '5cda6a43774d5047d42aa6fca778c409', 'undefined_vars', 'C:/xamppp/htdocs/forum/Themes/Black_Berry_v2/BoardIndex.template.php (main sub template - eval?)', 233),
(29, 1615260896, 7, '', '?', '2: Undefined array key 334', '5cda6a43774d5047d42aa6fca778c409', 'undefined_vars', 'C:/xamppp/htdocs/forum/Themes/Black_Berry_v2/BoardIndex.template.php (main sub template - eval?)', 234),
(30, 1615260896, 7, '', '?', '2: Undefined array key 452', '5cda6a43774d5047d42aa6fca778c409', 'undefined_vars', 'C:/xamppp/htdocs/forum/Themes/Black_Berry_v2/BoardIndex.template.php (main sub template - eval?)', 444),
(31, 1615260896, 7, '', '?', '2: Undefined array key 685', '5cda6a43774d5047d42aa6fca778c409', 'undefined_vars', 'C:/xamppp/htdocs/forum/Themes/Black_Berry_v2/BoardIndex.template.php (main sub template - eval?)', 260),
(32, 1615260896, 7, '', '?', '2: Undefined array key &quot;show_sp1_info&quot;', '5cda6a43774d5047d42aa6fca778c409', 'undefined_vars', 'C:/xamppp/htdocs/forum/Themes/Black_Berry_v2/BoardIndex.template.php (main sub template - eval?)', 374),
(33, 1615260896, 7, '', '?', '2: Undefined array key 158', '5cda6a43774d5047d42aa6fca778c409', 'undefined_vars', 'C:/xamppp/htdocs/forum/Themes/Black_Berry_v2/BoardIndex.template.php (main sub template - eval?)', 412),
(34, 1615260896, 7, '', '?', '2: Undefined array key 158', '5cda6a43774d5047d42aa6fca778c409', 'undefined_vars', 'C:/xamppp/htdocs/forum/Themes/Black_Berry_v2/BoardIndex.template.php (main sub template - eval?)', 415),
(35, 1615260896, 7, '', '?', '2: Undefined array key 140', '5cda6a43774d5047d42aa6fca778c409', 'undefined_vars', 'C:/xamppp/htdocs/forum/Themes/Black_Berry_v2/BoardIndex.template.php (main sub template - eval?)', 444),
(36, 1615260896, 7, '', '?', '2: Undefined array key &quot;show_sp1_info&quot;', '5cda6a43774d5047d42aa6fca778c409', 'undefined_vars', 'C:/xamppp/htdocs/forum/Themes/Black_Berry_v2/BoardIndex.template.php (main sub template - eval?)', 448),
(37, 1615260896, 7, '', '?', '2: Undefined array key &quot;smf223&quot;', '5cda6a43774d5047d42aa6fca778c409', 'undefined_vars', 'C:/xamppp/htdocs/forum/Themes/Black_Berry_v2/BoardIndex.template.php (main sub template - eval?)', 448),
(38, 1615260896, 7, '', '?', '2: Undefined array key &quot;show_sp1_info&quot;', '5cda6a43774d5047d42aa6fca778c409', 'undefined_vars', 'C:/xamppp/htdocs/forum/Themes/Black_Berry_v2/BoardIndex.template.php (main sub template - eval?)', 462),
(39, 1615260896, 7, '', '?', '2: Undefined array key 159', '5cda6a43774d5047d42aa6fca778c409', 'undefined_vars', 'C:/xamppp/htdocs/forum/Themes/Black_Berry_v2/BoardIndex.template.php (main sub template - eval?)', 466),
(40, 1615260896, 7, '', '?', '2: Undefined array key 159', '5cda6a43774d5047d42aa6fca778c409', 'undefined_vars', 'C:/xamppp/htdocs/forum/Themes/Black_Berry_v2/BoardIndex.template.php (main sub template - eval?)', 469),
(41, 1615260896, 7, '', '?', '2: Undefined array key 159', '5cda6a43774d5047d42aa6fca778c409', 'undefined_vars', 'C:/xamppp/htdocs/forum/Themes/Black_Berry_v2/BoardIndex.template.php (main sub template - eval?)', 472),
(42, 1615260896, 7, '', '?', '2: Undefined array key 660', '5cda6a43774d5047d42aa6fca778c409', 'undefined_vars', 'C:/xamppp/htdocs/forum/Themes/Black_Berry_v2/BoardIndex.template.php (main sub template - eval?)', 474),
(43, 1615260896, 7, '', '?', '2: Undefined array key 153', '5cda6a43774d5047d42aa6fca778c409', 'undefined_vars', 'C:/xamppp/htdocs/forum/Themes/Black_Berry_v2/BoardIndex.template.php (main sub template - eval?)', 474),
(44, 1615260896, 7, '', '?', '2: Undefined array key 661', '5cda6a43774d5047d42aa6fca778c409', 'undefined_vars', 'C:/xamppp/htdocs/forum/Themes/Black_Berry_v2/BoardIndex.template.php (main sub template - eval?)', 474),
(45, 1615260896, 7, '', '?', '2: Undefined array key 662', '5cda6a43774d5047d42aa6fca778c409', 'undefined_vars', 'C:/xamppp/htdocs/forum/Themes/Black_Berry_v2/BoardIndex.template.php (main sub template - eval?)', 474),
(46, 1615260896, 7, '', '?', '2: Undefined array key 663', '5cda6a43774d5047d42aa6fca778c409', 'undefined_vars', 'C:/xamppp/htdocs/forum/Themes/Black_Berry_v2/BoardIndex.template.php (main sub template - eval?)', 474),
(47, 1615260903, 7, '', '?', '2: Undefined array key &quot;smf199&quot;', '5cda6a43774d5047d42aa6fca778c409', 'undefined_vars', 'C:/xamppp/htdocs/forum/Themes/Black_Berry_v2/BoardIndex.template.php (main_above sub template - eval?)', 200),
(48, 1615260903, 7, '', '?', '2: Undefined array key 103', '5cda6a43774d5047d42aa6fca778c409', 'undefined_vars', 'C:/xamppp/htdocs/forum/Themes/Black_Berry_v2/BoardIndex.template.php (main_above sub template - eval?)', 383),
(49, 1615260903, 7, '', '?', '2: Undefined array key 119', '5cda6a43774d5047d42aa6fca778c409', 'undefined_vars', 'C:/xamppp/htdocs/forum/Themes/Black_Berry_v2/BoardIndex.template.php (main_above sub template - eval?)', 386),
(50, 1615260903, 7, '', '?', '2: Undefined array key 182', '5cda6a43774d5047d42aa6fca778c409', 'undefined_vars', 'C:/xamppp/htdocs/forum/Themes/Black_Berry_v2/BoardIndex.template.php (main_above sub template - eval?)', 390),
(51, 1615260903, 7, '', '?', '2: Undefined array key 2', '5cda6a43774d5047d42aa6fca778c409', 'undefined_vars', 'C:/xamppp/htdocs/forum/Themes/Black_Berry_v2/BoardIndex.template.php (main_above sub template - eval?)', 398),
(52, 1615260903, 7, '', '?', '2: Undefined array key 79', '5cda6a43774d5047d42aa6fca778c409', 'undefined_vars', 'C:/xamppp/htdocs/forum/Themes/Black_Berry_v2/BoardIndex.template.php (main_above sub template - eval?)', 402),
(53, 1615260903, 7, '', '?', '2: Undefined array key 331', '5cda6a43774d5047d42aa6fca778c409', 'undefined_vars', 'C:/xamppp/htdocs/forum/Themes/Black_Berry_v2/BoardIndex.template.php (main_above sub template - eval?)', 410),
(54, 1615260903, 7, '', '?', '2: Undefined array key 108', '5cda6a43774d5047d42aa6fca778c409', 'undefined_vars', 'C:/xamppp/htdocs/forum/Themes/Black_Berry_v2/BoardIndex.template.php (main_above sub template - eval?)', 422),
(55, 1615260903, 7, '', '?', '2: Undefined array key &quot;show_sp1_info&quot;', '5cda6a43774d5047d42aa6fca778c409', 'undefined_vars', 'C:/xamppp/htdocs/forum/Themes/Black_Berry_v2/BoardIndex.template.php (main sub template - eval?)', 14),
(56, 1615260903, 7, '', '?', '2: Undefined array key 19', '5cda6a43774d5047d42aa6fca778c409', 'undefined_vars', 'C:/xamppp/htdocs/forum/Themes/Black_Berry_v2/BoardIndex.template.php (main sub template - eval?)', 16),
(57, 1615260903, 7, '', '?', '2: Undefined array key 95', '5cda6a43774d5047d42aa6fca778c409', 'undefined_vars', 'C:/xamppp/htdocs/forum/Themes/Black_Berry_v2/BoardIndex.template.php (main sub template - eval?)', 16),
(58, 1615260903, 7, '', '?', '2: Undefined array key 64', '5cda6a43774d5047d42aa6fca778c409', 'undefined_vars', 'C:/xamppp/htdocs/forum/Themes/Black_Berry_v2/BoardIndex.template.php (main sub template - eval?)', 16),
(59, 1615260903, 7, '', '?', '2: Undefined array key 201', '5cda6a43774d5047d42aa6fca778c409', 'undefined_vars', 'C:/xamppp/htdocs/forum/Themes/Black_Berry_v2/BoardIndex.template.php (main sub template - eval?)', 17),
(60, 1615260903, 7, '', '?', '2: Undefined array key 581', '5cda6a43774d5047d42aa6fca778c409', 'undefined_vars', 'C:/xamppp/htdocs/forum/Themes/Black_Berry_v2/BoardIndex.template.php (main sub template - eval?)', 17),
(61, 1615260903, 7, '', '?', '2: Undefined array key 333', '5cda6a43774d5047d42aa6fca778c409', 'undefined_vars', 'C:/xamppp/htdocs/forum/Themes/Black_Berry_v2/BoardIndex.template.php (main sub template - eval?)', 233),
(62, 1615260903, 7, '', '?', '2: Undefined array key 334', '5cda6a43774d5047d42aa6fca778c409', 'undefined_vars', 'C:/xamppp/htdocs/forum/Themes/Black_Berry_v2/BoardIndex.template.php (main sub template - eval?)', 234),
(63, 1615260903, 7, '', '?', '2: Undefined array key 452', '5cda6a43774d5047d42aa6fca778c409', 'undefined_vars', 'C:/xamppp/htdocs/forum/Themes/Black_Berry_v2/BoardIndex.template.php (main sub template - eval?)', 444),
(64, 1615260903, 7, '', '?', '2: Undefined array key 685', '5cda6a43774d5047d42aa6fca778c409', 'undefined_vars', 'C:/xamppp/htdocs/forum/Themes/Black_Berry_v2/BoardIndex.template.php (main sub template - eval?)', 260),
(65, 1615260903, 7, '', '?', '2: Undefined array key &quot;show_sp1_info&quot;', '5cda6a43774d5047d42aa6fca778c409', 'undefined_vars', 'C:/xamppp/htdocs/forum/Themes/Black_Berry_v2/BoardIndex.template.php (main sub template - eval?)', 374),
(66, 1615260903, 7, '', '?', '2: Undefined array key 158', '5cda6a43774d5047d42aa6fca778c409', 'undefined_vars', 'C:/xamppp/htdocs/forum/Themes/Black_Berry_v2/BoardIndex.template.php (main sub template - eval?)', 412),
(67, 1615260903, 7, '', '?', '2: Undefined array key 158', '5cda6a43774d5047d42aa6fca778c409', 'undefined_vars', 'C:/xamppp/htdocs/forum/Themes/Black_Berry_v2/BoardIndex.template.php (main sub template - eval?)', 415),
(68, 1615260903, 7, '', '?', '2: Undefined array key 140', '5cda6a43774d5047d42aa6fca778c409', 'undefined_vars', 'C:/xamppp/htdocs/forum/Themes/Black_Berry_v2/BoardIndex.template.php (main sub template - eval?)', 444),
(69, 1615260903, 7, '', '?', '2: Undefined array key &quot;show_sp1_info&quot;', '5cda6a43774d5047d42aa6fca778c409', 'undefined_vars', 'C:/xamppp/htdocs/forum/Themes/Black_Berry_v2/BoardIndex.template.php (main sub template - eval?)', 448),
(70, 1615260903, 7, '', '?', '2: Undefined array key &quot;smf223&quot;', '5cda6a43774d5047d42aa6fca778c409', 'undefined_vars', 'C:/xamppp/htdocs/forum/Themes/Black_Berry_v2/BoardIndex.template.php (main sub template - eval?)', 448),
(71, 1615260903, 7, '', '?', '2: Undefined array key &quot;show_sp1_info&quot;', '5cda6a43774d5047d42aa6fca778c409', 'undefined_vars', 'C:/xamppp/htdocs/forum/Themes/Black_Berry_v2/BoardIndex.template.php (main sub template - eval?)', 462),
(72, 1615260903, 7, '', '?', '2: Undefined array key 159', '5cda6a43774d5047d42aa6fca778c409', 'undefined_vars', 'C:/xamppp/htdocs/forum/Themes/Black_Berry_v2/BoardIndex.template.php (main sub template - eval?)', 466),
(73, 1615260903, 7, '', '?', '2: Undefined array key 159', '5cda6a43774d5047d42aa6fca778c409', 'undefined_vars', 'C:/xamppp/htdocs/forum/Themes/Black_Berry_v2/BoardIndex.template.php (main sub template - eval?)', 469),
(74, 1615260903, 7, '', '?', '2: Undefined array key 159', '5cda6a43774d5047d42aa6fca778c409', 'undefined_vars', 'C:/xamppp/htdocs/forum/Themes/Black_Berry_v2/BoardIndex.template.php (main sub template - eval?)', 472),
(75, 1615260903, 7, '', '?', '2: Undefined array key 660', '5cda6a43774d5047d42aa6fca778c409', 'undefined_vars', 'C:/xamppp/htdocs/forum/Themes/Black_Berry_v2/BoardIndex.template.php (main sub template - eval?)', 474),
(76, 1615260903, 7, '', '?', '2: Undefined array key 153', '5cda6a43774d5047d42aa6fca778c409', 'undefined_vars', 'C:/xamppp/htdocs/forum/Themes/Black_Berry_v2/BoardIndex.template.php (main sub template - eval?)', 474),
(77, 1615260903, 7, '', '?', '2: Undefined array key 661', '5cda6a43774d5047d42aa6fca778c409', 'undefined_vars', 'C:/xamppp/htdocs/forum/Themes/Black_Berry_v2/BoardIndex.template.php (main sub template - eval?)', 474),
(78, 1615260903, 7, '', '?', '2: Undefined array key 662', '5cda6a43774d5047d42aa6fca778c409', 'undefined_vars', 'C:/xamppp/htdocs/forum/Themes/Black_Berry_v2/BoardIndex.template.php (main sub template - eval?)', 474),
(79, 1615260903, 7, '', '?', '2: Undefined array key 663', '5cda6a43774d5047d42aa6fca778c409', 'undefined_vars', 'C:/xamppp/htdocs/forum/Themes/Black_Berry_v2/BoardIndex.template.php (main sub template - eval?)', 474),
(80, 1615260912, 7, '', '?action=search', '2: Undefined array key &quot;smf199&quot;', '5cda6a43774d5047d42aa6fca778c409', 'undefined_vars', 'C:/xamppp/htdocs/forum/Themes/default/Search.template.php (main_above sub template - eval?)', 200),
(81, 1615260912, 7, '', '?action=search', '2: Undefined array key 103', '5cda6a43774d5047d42aa6fca778c409', 'undefined_vars', 'C:/xamppp/htdocs/forum/Themes/default/Search.template.php (main_above sub template - eval?)', 383),
(82, 1615260912, 7, '', '?action=search', '2: Undefined array key 119', '5cda6a43774d5047d42aa6fca778c409', 'undefined_vars', 'C:/xamppp/htdocs/forum/Themes/default/Search.template.php (main_above sub template - eval?)', 386),
(83, 1615260912, 7, '', '?action=search', '2: Undefined array key 182', '5cda6a43774d5047d42aa6fca778c409', 'undefined_vars', 'C:/xamppp/htdocs/forum/Themes/default/Search.template.php (main_above sub template - eval?)', 390),
(84, 1615260912, 7, '', '?action=search', '2: Undefined array key 2', '5cda6a43774d5047d42aa6fca778c409', 'undefined_vars', 'C:/xamppp/htdocs/forum/Themes/default/Search.template.php (main_above sub template - eval?)', 398),
(85, 1615260912, 7, '', '?action=search', '2: Undefined array key 79', '5cda6a43774d5047d42aa6fca778c409', 'undefined_vars', 'C:/xamppp/htdocs/forum/Themes/default/Search.template.php (main_above sub template - eval?)', 402),
(86, 1615260912, 7, '', '?action=search', '2: Undefined array key 331', '5cda6a43774d5047d42aa6fca778c409', 'undefined_vars', 'C:/xamppp/htdocs/forum/Themes/default/Search.template.php (main_above sub template - eval?)', 410),
(87, 1615260912, 7, '', '?action=search', '2: Undefined array key 108', '5cda6a43774d5047d42aa6fca778c409', 'undefined_vars', 'C:/xamppp/htdocs/forum/Themes/default/Search.template.php (main_above sub template - eval?)', 422),
(88, 1615260915, 7, '', '?action=admin', '2: Undefined array key &quot;smf199&quot;', '5cda6a43774d5047d42aa6fca778c409', 'undefined_vars', 'C:/xamppp/htdocs/forum/Themes/default/languages/Admin.portuguese_brazilian-utf8.php (main_above sub template - eval?)', 200),
(89, 1615260915, 7, '', '?action=admin', '2: Undefined array key 103', '5cda6a43774d5047d42aa6fca778c409', 'undefined_vars', 'C:/xamppp/htdocs/forum/Themes/default/languages/Admin.portuguese_brazilian-utf8.php (main_above sub template - eval?)', 383),
(90, 1615260915, 7, '', '?action=admin', '2: Undefined array key 119', '5cda6a43774d5047d42aa6fca778c409', 'undefined_vars', 'C:/xamppp/htdocs/forum/Themes/default/languages/Admin.portuguese_brazilian-utf8.php (main_above sub template - eval?)', 386),
(91, 1615260915, 7, '', '?action=admin', '2: Undefined array key 182', '5cda6a43774d5047d42aa6fca778c409', 'undefined_vars', 'C:/xamppp/htdocs/forum/Themes/default/languages/Admin.portuguese_brazilian-utf8.php (main_above sub template - eval?)', 390),
(92, 1615260915, 7, '', '?action=admin', '2: Undefined array key 2', '5cda6a43774d5047d42aa6fca778c409', 'undefined_vars', 'C:/xamppp/htdocs/forum/Themes/default/languages/Admin.portuguese_brazilian-utf8.php (main_above sub template - eval?)', 398),
(93, 1615260915, 7, '', '?action=admin', '2: Undefined array key 79', '5cda6a43774d5047d42aa6fca778c409', 'undefined_vars', 'C:/xamppp/htdocs/forum/Themes/default/languages/Admin.portuguese_brazilian-utf8.php (main_above sub template - eval?)', 402),
(94, 1615260915, 7, '', '?action=admin', '2: Undefined array key 331', '5cda6a43774d5047d42aa6fca778c409', 'undefined_vars', 'C:/xamppp/htdocs/forum/Themes/default/languages/Admin.portuguese_brazilian-utf8.php (main_above sub template - eval?)', 410),
(95, 1615260915, 7, '', '?action=admin', '2: Undefined array key 108', '5cda6a43774d5047d42aa6fca778c409', 'undefined_vars', 'C:/xamppp/htdocs/forum/Themes/default/languages/Admin.portuguese_brazilian-utf8.php (main_above sub template - eval?)', 422),
(96, 1615260925, 7, '', '?action=admin;area=theme;sa=settings;th=3;fcfd909dd1=5cda6a43774d5047d42aa6fca778c409', '2: Undefined array key &quot;smf199&quot;', '5cda6a43774d5047d42aa6fca778c409', 'undefined_vars', 'C:/xamppp/htdocs/forum/Themes/default/Themes.template.php (main_above sub template - eval?)', 200),
(97, 1615260925, 7, '', '?action=admin;area=theme;sa=settings;th=3;fcfd909dd1=5cda6a43774d5047d42aa6fca778c409', '2: Undefined array key 103', '5cda6a43774d5047d42aa6fca778c409', 'undefined_vars', 'C:/xamppp/htdocs/forum/Themes/default/Themes.template.php (main_above sub template - eval?)', 383),
(98, 1615260925, 7, '', '?action=admin;area=theme;sa=settings;th=3;fcfd909dd1=5cda6a43774d5047d42aa6fca778c409', '2: Undefined array key 119', '5cda6a43774d5047d42aa6fca778c409', 'undefined_vars', 'C:/xamppp/htdocs/forum/Themes/default/Themes.template.php (main_above sub template - eval?)', 386),
(99, 1615260925, 7, '', '?action=admin;area=theme;sa=settings;th=3;fcfd909dd1=5cda6a43774d5047d42aa6fca778c409', '2: Undefined array key 182', '5cda6a43774d5047d42aa6fca778c409', 'undefined_vars', 'C:/xamppp/htdocs/forum/Themes/default/Themes.template.php (main_above sub template - eval?)', 390),
(100, 1615260925, 7, '', '?action=admin;area=theme;sa=settings;th=3;fcfd909dd1=5cda6a43774d5047d42aa6fca778c409', '2: Undefined array key 2', '5cda6a43774d5047d42aa6fca778c409', 'undefined_vars', 'C:/xamppp/htdocs/forum/Themes/default/Themes.template.php (main_above sub template - eval?)', 398),
(101, 1615260925, 7, '', '?action=admin;area=theme;sa=settings;th=3;fcfd909dd1=5cda6a43774d5047d42aa6fca778c409', '2: Undefined array key 79', '5cda6a43774d5047d42aa6fca778c409', 'undefined_vars', 'C:/xamppp/htdocs/forum/Themes/default/Themes.template.php (main_above sub template - eval?)', 402),
(102, 1615260925, 7, '', '?action=admin;area=theme;sa=settings;th=3;fcfd909dd1=5cda6a43774d5047d42aa6fca778c409', '2: Undefined array key 331', '5cda6a43774d5047d42aa6fca778c409', 'undefined_vars', 'C:/xamppp/htdocs/forum/Themes/default/Themes.template.php (main_above sub template - eval?)', 410),
(103, 1615260925, 7, '', '?action=admin;area=theme;sa=settings;th=3;fcfd909dd1=5cda6a43774d5047d42aa6fca778c409', '2: Undefined array key 108', '5cda6a43774d5047d42aa6fca778c409', 'undefined_vars', 'C:/xamppp/htdocs/forum/Themes/default/Themes.template.php (main_above sub template - eval?)', 422),
(104, 1615260934, 7, '', '?action=admin;area=theme;sa=admin;fcfd909dd1=5cda6a43774d5047d42aa6fca778c409', '2: Undefined array key &quot;smf199&quot;', '5cda6a43774d5047d42aa6fca778c409', 'undefined_vars', 'C:/xamppp/htdocs/forum/Themes/default/Themes.template.php (main_above sub template - eval?)', 200),
(105, 1615260934, 7, '', '?action=admin;area=theme;sa=admin;fcfd909dd1=5cda6a43774d5047d42aa6fca778c409', '2: Undefined array key 103', '5cda6a43774d5047d42aa6fca778c409', 'undefined_vars', 'C:/xamppp/htdocs/forum/Themes/default/Themes.template.php (main_above sub template - eval?)', 383),
(106, 1615260934, 7, '', '?action=admin;area=theme;sa=admin;fcfd909dd1=5cda6a43774d5047d42aa6fca778c409', '2: Undefined array key 119', '5cda6a43774d5047d42aa6fca778c409', 'undefined_vars', 'C:/xamppp/htdocs/forum/Themes/default/Themes.template.php (main_above sub template - eval?)', 386),
(107, 1615260934, 7, '', '?action=admin;area=theme;sa=admin;fcfd909dd1=5cda6a43774d5047d42aa6fca778c409', '2: Undefined array key 182', '5cda6a43774d5047d42aa6fca778c409', 'undefined_vars', 'C:/xamppp/htdocs/forum/Themes/default/Themes.template.php (main_above sub template - eval?)', 390),
(108, 1615260934, 7, '', '?action=admin;area=theme;sa=admin;fcfd909dd1=5cda6a43774d5047d42aa6fca778c409', '2: Undefined array key 2', '5cda6a43774d5047d42aa6fca778c409', 'undefined_vars', 'C:/xamppp/htdocs/forum/Themes/default/Themes.template.php (main_above sub template - eval?)', 398),
(109, 1615260934, 7, '', '?action=admin;area=theme;sa=admin;fcfd909dd1=5cda6a43774d5047d42aa6fca778c409', '2: Undefined array key 79', '5cda6a43774d5047d42aa6fca778c409', 'undefined_vars', 'C:/xamppp/htdocs/forum/Themes/default/Themes.template.php (main_above sub template - eval?)', 402),
(110, 1615260934, 7, '', '?action=admin;area=theme;sa=admin;fcfd909dd1=5cda6a43774d5047d42aa6fca778c409', '2: Undefined array key 331', '5cda6a43774d5047d42aa6fca778c409', 'undefined_vars', 'C:/xamppp/htdocs/forum/Themes/default/Themes.template.php (main_above sub template - eval?)', 410),
(111, 1615260934, 7, '', '?action=admin;area=theme;sa=admin;fcfd909dd1=5cda6a43774d5047d42aa6fca778c409', '2: Undefined array key 108', '5cda6a43774d5047d42aa6fca778c409', 'undefined_vars', 'C:/xamppp/htdocs/forum/Themes/default/Themes.template.php (main_above sub template - eval?)', 422),
(112, 1615260940, 7, '', '?action=admin;area=theme;fcfd909dd1=5cda6a43774d5047d42aa6fca778c409;sa=admin', '2: Undefined array key &quot;smf199&quot;', '5cda6a43774d5047d42aa6fca778c409', 'undefined_vars', 'C:/xamppp/htdocs/forum/Themes/default/Themes.template.php (main_above sub template - eval?)', 200),
(113, 1615260940, 7, '', '?action=admin;area=theme;fcfd909dd1=5cda6a43774d5047d42aa6fca778c409;sa=admin', '2: Undefined array key 103', '5cda6a43774d5047d42aa6fca778c409', 'undefined_vars', 'C:/xamppp/htdocs/forum/Themes/default/Themes.template.php (main_above sub template - eval?)', 383),
(114, 1615260940, 7, '', '?action=admin;area=theme;fcfd909dd1=5cda6a43774d5047d42aa6fca778c409;sa=admin', '2: Undefined array key 119', '5cda6a43774d5047d42aa6fca778c409', 'undefined_vars', 'C:/xamppp/htdocs/forum/Themes/default/Themes.template.php (main_above sub template - eval?)', 386),
(115, 1615260940, 7, '', '?action=admin;area=theme;fcfd909dd1=5cda6a43774d5047d42aa6fca778c409;sa=admin', '2: Undefined array key 182', '5cda6a43774d5047d42aa6fca778c409', 'undefined_vars', 'C:/xamppp/htdocs/forum/Themes/default/Themes.template.php (main_above sub template - eval?)', 390),
(116, 1615260940, 7, '', '?action=admin;area=theme;fcfd909dd1=5cda6a43774d5047d42aa6fca778c409;sa=admin', '2: Undefined array key 2', '5cda6a43774d5047d42aa6fca778c409', 'undefined_vars', 'C:/xamppp/htdocs/forum/Themes/default/Themes.template.php (main_above sub template - eval?)', 398),
(117, 1615260940, 7, '', '?action=admin;area=theme;fcfd909dd1=5cda6a43774d5047d42aa6fca778c409;sa=admin', '2: Undefined array key 79', '5cda6a43774d5047d42aa6fca778c409', 'undefined_vars', 'C:/xamppp/htdocs/forum/Themes/default/Themes.template.php (main_above sub template - eval?)', 402),
(118, 1615260940, 7, '', '?action=admin;area=theme;fcfd909dd1=5cda6a43774d5047d42aa6fca778c409;sa=admin', '2: Undefined array key 331', '5cda6a43774d5047d42aa6fca778c409', 'undefined_vars', 'C:/xamppp/htdocs/forum/Themes/default/Themes.template.php (main_above sub template - eval?)', 410),
(119, 1615260940, 7, '', '?action=admin;area=theme;fcfd909dd1=5cda6a43774d5047d42aa6fca778c409;sa=admin', '2: Undefined array key 108', '5cda6a43774d5047d42aa6fca778c409', 'undefined_vars', 'C:/xamppp/htdocs/forum/Themes/default/Themes.template.php (main_above sub template - eval?)', 422),
(120, 1615261513, 7, '', '?action=deletemsg;topic=1.0;msg=1;fcfd909dd1=5cda6a43774d5047d42aa6fca778c409', '8192: Required parameter $from_topic follows optional parameter $msgs', '5cda6a43774d5047d42aa6fca778c409', 'general', 'C:/xamppp/htdocs/forum/Sources/RemoveTopic.php', 1209),
(121, 1615261513, 7, '', '?action=deletemsg;topic=1.0;msg=1;fcfd909dd1=5cda6a43774d5047d42aa6fca778c409', '8192: Required parameter $target_topic follows optional parameter $msgs', '5cda6a43774d5047d42aa6fca778c409', 'general', 'C:/xamppp/htdocs/forum/Sources/RemoveTopic.php', 1209),
(122, 1615261552, 7, '', '?action=admin;area=manageboards;sa=cat2', '8192: Required parameter $from_topic follows optional parameter $msgs', '5cda6a43774d5047d42aa6fca778c409', 'general', 'C:/xamppp/htdocs/forum/Sources/RemoveTopic.php', 1209),
(123, 1615261552, 7, '', '?action=admin;area=manageboards;sa=cat2', '8192: Required parameter $target_topic follows optional parameter $msgs', '5cda6a43774d5047d42aa6fca778c409', 'general', 'C:/xamppp/htdocs/forum/Sources/RemoveTopic.php', 1209),
(124, 1615298518, 7, '', '?action=admin;area=theme;ff552a26f4c8=8214d61849ee08fdc25e8f6614764644;sa=admin', '2: Undefined array key &quot;active_button&quot;', '8214d61849ee08fdc25e8f6614764644', 'undefined_vars', 'C:/xamppp/htdocs/forum/Themes/default/Themes.template.php (body_above sub template - eval?)', 227),
(125, 1615298518, 7, '', '?action=admin;area=theme;ff552a26f4c8=8214d61849ee08fdc25e8f6614764644;sa=admin', '2: Undefined array key &quot;active_button&quot;', '8214d61849ee08fdc25e8f6614764644', 'undefined_vars', 'C:/xamppp/htdocs/forum/Themes/default/Themes.template.php (body_above sub template - eval?)', 228),
(126, 1615298518, 7, '', '?action=admin;area=theme;ff552a26f4c8=8214d61849ee08fdc25e8f6614764644;sa=admin', '2: Undefined array key &quot;active_button&quot;', '8214d61849ee08fdc25e8f6614764644', 'undefined_vars', 'C:/xamppp/htdocs/forum/Themes/default/Themes.template.php (body_above sub template - eval?)', 227),
(127, 1615298518, 7, '', '?action=admin;area=theme;ff552a26f4c8=8214d61849ee08fdc25e8f6614764644;sa=admin', '2: Undefined array key &quot;active_button&quot;', '8214d61849ee08fdc25e8f6614764644', 'undefined_vars', 'C:/xamppp/htdocs/forum/Themes/default/Themes.template.php (body_above sub template - eval?)', 228),
(128, 1615298518, 7, '', '?action=admin;area=theme;ff552a26f4c8=8214d61849ee08fdc25e8f6614764644;sa=admin', '2: Undefined array key &quot;active_button&quot;', '8214d61849ee08fdc25e8f6614764644', 'undefined_vars', 'C:/xamppp/htdocs/forum/Themes/default/Themes.template.php (body_above sub template - eval?)', 227),
(129, 1615298518, 7, '', '?action=admin;area=theme;ff552a26f4c8=8214d61849ee08fdc25e8f6614764644;sa=admin', '2: Undefined array key &quot;active_button&quot;', '8214d61849ee08fdc25e8f6614764644', 'undefined_vars', 'C:/xamppp/htdocs/forum/Themes/default/Themes.template.php (body_above sub template - eval?)', 228),
(130, 1615298518, 7, '', '?action=admin;area=theme;ff552a26f4c8=8214d61849ee08fdc25e8f6614764644;sa=admin', '2: Undefined array key &quot;active_button&quot;', '8214d61849ee08fdc25e8f6614764644', 'undefined_vars', 'C:/xamppp/htdocs/forum/Themes/default/Themes.template.php (body_above sub template - eval?)', 227),
(131, 1615298518, 7, '', '?action=admin;area=theme;ff552a26f4c8=8214d61849ee08fdc25e8f6614764644;sa=admin', '2: Undefined array key &quot;active_button&quot;', '8214d61849ee08fdc25e8f6614764644', 'undefined_vars', 'C:/xamppp/htdocs/forum/Themes/default/Themes.template.php (body_above sub template - eval?)', 228),
(132, 1615298518, 7, '', '?action=admin;area=theme;ff552a26f4c8=8214d61849ee08fdc25e8f6614764644;sa=admin', '2: Undefined array key &quot;active_button&quot;', '8214d61849ee08fdc25e8f6614764644', 'undefined_vars', 'C:/xamppp/htdocs/forum/Themes/default/Themes.template.php (body_above sub template - eval?)', 227),
(133, 1615298518, 7, '', '?action=admin;area=theme;ff552a26f4c8=8214d61849ee08fdc25e8f6614764644;sa=admin', '2: Undefined array key &quot;active_button&quot;', '8214d61849ee08fdc25e8f6614764644', 'undefined_vars', 'C:/xamppp/htdocs/forum/Themes/default/Themes.template.php (body_above sub template - eval?)', 228),
(134, 1615298518, 7, '', '?action=admin;area=theme;ff552a26f4c8=8214d61849ee08fdc25e8f6614764644;sa=admin', '2: Undefined array key &quot;active_button&quot;', '8214d61849ee08fdc25e8f6614764644', 'undefined_vars', 'C:/xamppp/htdocs/forum/Themes/default/Themes.template.php (body_above sub template - eval?)', 227),
(135, 1615298518, 7, '', '?action=admin;area=theme;ff552a26f4c8=8214d61849ee08fdc25e8f6614764644;sa=admin', '2: Undefined array key &quot;active_button&quot;', '8214d61849ee08fdc25e8f6614764644', 'undefined_vars', 'C:/xamppp/htdocs/forum/Themes/default/Themes.template.php (body_above sub template - eval?)', 228),
(136, 1615298518, 7, '', '?action=admin;area=theme;ff552a26f4c8=8214d61849ee08fdc25e8f6614764644;sa=admin', '2: Undefined array key &quot;active_button&quot;', '8214d61849ee08fdc25e8f6614764644', 'undefined_vars', 'C:/xamppp/htdocs/forum/Themes/default/Themes.template.php (body_above sub template - eval?)', 227),
(137, 1615298518, 7, '', '?action=admin;area=theme;ff552a26f4c8=8214d61849ee08fdc25e8f6614764644;sa=admin', '2: Undefined array key &quot;active_button&quot;', '8214d61849ee08fdc25e8f6614764644', 'undefined_vars', 'C:/xamppp/htdocs/forum/Themes/default/Themes.template.php (body_above sub template - eval?)', 228),
(138, 1615298518, 7, '', '?action=admin;area=theme;ff552a26f4c8=8214d61849ee08fdc25e8f6614764644;sa=admin', '2: Undefined array key &quot;active_button&quot;', '8214d61849ee08fdc25e8f6614764644', 'undefined_vars', 'C:/xamppp/htdocs/forum/Themes/default/Themes.template.php (body_above sub template - eval?)', 227),
(139, 1615298518, 7, '', '?action=admin;area=theme;ff552a26f4c8=8214d61849ee08fdc25e8f6614764644;sa=admin', '2: Undefined array key &quot;active_button&quot;', '8214d61849ee08fdc25e8f6614764644', 'undefined_vars', 'C:/xamppp/htdocs/forum/Themes/default/Themes.template.php (body_above sub template - eval?)', 228),
(140, 1615298518, 7, '', '?action=admin;area=theme;ff552a26f4c8=8214d61849ee08fdc25e8f6614764644;sa=admin', '2: Undefined array key &quot;active_button&quot;', '8214d61849ee08fdc25e8f6614764644', 'undefined_vars', 'C:/xamppp/htdocs/forum/Themes/default/Themes.template.php (body_above sub template - eval?)', 227),
(141, 1615298518, 7, '', '?action=admin;area=theme;ff552a26f4c8=8214d61849ee08fdc25e8f6614764644;sa=admin', '2: Undefined array key &quot;active_button&quot;', '8214d61849ee08fdc25e8f6614764644', 'undefined_vars', 'C:/xamppp/htdocs/forum/Themes/default/Themes.template.php (body_above sub template - eval?)', 228),
(142, 1615298518, 7, '', '?action=admin;area=theme;ff552a26f4c8=8214d61849ee08fdc25e8f6614764644;sa=admin', '2: Undefined array key &quot;active_button&quot;', '8214d61849ee08fdc25e8f6614764644', 'undefined_vars', 'C:/xamppp/htdocs/forum/Themes/default/Themes.template.php (body_above sub template - eval?)', 227),
(143, 1615298518, 7, '', '?action=admin;area=theme;ff552a26f4c8=8214d61849ee08fdc25e8f6614764644;sa=admin', '2: Undefined array key &quot;active_button&quot;', '8214d61849ee08fdc25e8f6614764644', 'undefined_vars', 'C:/xamppp/htdocs/forum/Themes/default/Themes.template.php (body_above sub template - eval?)', 228),
(144, 1615298518, 7, '', '?action=admin;area=theme;ff552a26f4c8=8214d61849ee08fdc25e8f6614764644;sa=admin', '2: Undefined array key &quot;active_button&quot;', '8214d61849ee08fdc25e8f6614764644', 'undefined_vars', 'C:/xamppp/htdocs/forum/Themes/default/Themes.template.php (body_above sub template - eval?)', 227),
(145, 1615298518, 7, '', '?action=admin;area=theme;ff552a26f4c8=8214d61849ee08fdc25e8f6614764644;sa=admin', '2: Undefined array key &quot;active_button&quot;', '8214d61849ee08fdc25e8f6614764644', 'undefined_vars', 'C:/xamppp/htdocs/forum/Themes/default/Themes.template.php (body_above sub template - eval?)', 228),
(146, 1615298518, 7, '', '?action=admin;area=theme;ff552a26f4c8=8214d61849ee08fdc25e8f6614764644;sa=admin', '2: Undefined array key &quot;active_button&quot;', '8214d61849ee08fdc25e8f6614764644', 'undefined_vars', 'C:/xamppp/htdocs/forum/Themes/default/Themes.template.php (body_above sub template - eval?)', 227),
(147, 1615298518, 7, '', '?action=admin;area=theme;ff552a26f4c8=8214d61849ee08fdc25e8f6614764644;sa=admin', '2: Undefined array key &quot;active_button&quot;', '8214d61849ee08fdc25e8f6614764644', 'undefined_vars', 'C:/xamppp/htdocs/forum/Themes/default/Themes.template.php (body_above sub template - eval?)', 228),
(148, 1615298990, 7, '', '?', '2: Undefined array key &quot;active_button&quot;', '8214d61849ee08fdc25e8f6614764644', 'undefined_vars', 'C:/xamppp/htdocs/forum/Themes/alphacentauri20rev5/BoardIndex.template.php (body_above sub template - eval?)', 227),
(149, 1615298990, 7, '', '?', '2: Undefined array key &quot;active_button&quot;', '8214d61849ee08fdc25e8f6614764644', 'undefined_vars', 'C:/xamppp/htdocs/forum/Themes/alphacentauri20rev5/BoardIndex.template.php (body_above sub template - eval?)', 228),
(150, 1615298990, 7, '', '?', '2: Undefined array key &quot;active_button&quot;', '8214d61849ee08fdc25e8f6614764644', 'undefined_vars', 'C:/xamppp/htdocs/forum/Themes/alphacentauri20rev5/BoardIndex.template.php (body_above sub template - eval?)', 227),
(151, 1615298990, 7, '', '?', '2: Undefined array key &quot;active_button&quot;', '8214d61849ee08fdc25e8f6614764644', 'undefined_vars', 'C:/xamppp/htdocs/forum/Themes/alphacentauri20rev5/BoardIndex.template.php (body_above sub template - eval?)', 228),
(152, 1615298990, 7, '', '?', '2: Undefined array key &quot;active_button&quot;', '8214d61849ee08fdc25e8f6614764644', 'undefined_vars', 'C:/xamppp/htdocs/forum/Themes/alphacentauri20rev5/BoardIndex.template.php (body_above sub template - eval?)', 227),
(153, 1615298990, 7, '', '?', '2: Undefined array key &quot;active_button&quot;', '8214d61849ee08fdc25e8f6614764644', 'undefined_vars', 'C:/xamppp/htdocs/forum/Themes/alphacentauri20rev5/BoardIndex.template.php (body_above sub template - eval?)', 228),
(154, 1615298990, 7, '', '?', '2: Undefined array key &quot;active_button&quot;', '8214d61849ee08fdc25e8f6614764644', 'undefined_vars', 'C:/xamppp/htdocs/forum/Themes/alphacentauri20rev5/BoardIndex.template.php (body_above sub template - eval?)', 227),
(155, 1615298990, 7, '', '?', '2: Undefined array key &quot;active_button&quot;', '8214d61849ee08fdc25e8f6614764644', 'undefined_vars', 'C:/xamppp/htdocs/forum/Themes/alphacentauri20rev5/BoardIndex.template.php (body_above sub template - eval?)', 228),
(156, 1615298990, 7, '', '?', '2: Undefined array key &quot;active_button&quot;', '8214d61849ee08fdc25e8f6614764644', 'undefined_vars', 'C:/xamppp/htdocs/forum/Themes/alphacentauri20rev5/BoardIndex.template.php (body_above sub template - eval?)', 227),
(157, 1615298990, 7, '', '?', '2: Undefined array key &quot;active_button&quot;', '8214d61849ee08fdc25e8f6614764644', 'undefined_vars', 'C:/xamppp/htdocs/forum/Themes/alphacentauri20rev5/BoardIndex.template.php (body_above sub template - eval?)', 228),
(158, 1615298990, 7, '', '?', '2: Undefined array key &quot;active_button&quot;', '8214d61849ee08fdc25e8f6614764644', 'undefined_vars', 'C:/xamppp/htdocs/forum/Themes/alphacentauri20rev5/BoardIndex.template.php (body_above sub template - eval?)', 227),
(159, 1615298990, 7, '', '?', '2: Undefined array key &quot;active_button&quot;', '8214d61849ee08fdc25e8f6614764644', 'undefined_vars', 'C:/xamppp/htdocs/forum/Themes/alphacentauri20rev5/BoardIndex.template.php (body_above sub template - eval?)', 228),
(160, 1615298990, 7, '', '?', '2: Undefined array key &quot;active_button&quot;', '8214d61849ee08fdc25e8f6614764644', 'undefined_vars', 'C:/xamppp/htdocs/forum/Themes/alphacentauri20rev5/BoardIndex.template.php (body_above sub template - eval?)', 227),
(161, 1615298990, 7, '', '?', '2: Undefined array key &quot;active_button&quot;', '8214d61849ee08fdc25e8f6614764644', 'undefined_vars', 'C:/xamppp/htdocs/forum/Themes/alphacentauri20rev5/BoardIndex.template.php (body_above sub template - eval?)', 228),
(162, 1615298990, 7, '', '?', '2: Undefined array key &quot;active_button&quot;', '8214d61849ee08fdc25e8f6614764644', 'undefined_vars', 'C:/xamppp/htdocs/forum/Themes/alphacentauri20rev5/BoardIndex.template.php (body_above sub template - eval?)', 227),
(163, 1615298990, 7, '', '?', '2: Undefined array key &quot;active_button&quot;', '8214d61849ee08fdc25e8f6614764644', 'undefined_vars', 'C:/xamppp/htdocs/forum/Themes/alphacentauri20rev5/BoardIndex.template.php (body_above sub template - eval?)', 228),
(164, 1615298990, 7, '', '?', '2: Undefined array key &quot;active_button&quot;', '8214d61849ee08fdc25e8f6614764644', 'undefined_vars', 'C:/xamppp/htdocs/forum/Themes/alphacentauri20rev5/BoardIndex.template.php (body_above sub template - eval?)', 227),
(165, 1615298990, 7, '', '?', '2: Undefined array key &quot;active_button&quot;', '8214d61849ee08fdc25e8f6614764644', 'undefined_vars', 'C:/xamppp/htdocs/forum/Themes/alphacentauri20rev5/BoardIndex.template.php (body_above sub template - eval?)', 228),
(166, 1615298990, 7, '', '?', '2: Undefined array key &quot;active_button&quot;', '8214d61849ee08fdc25e8f6614764644', 'undefined_vars', 'C:/xamppp/htdocs/forum/Themes/alphacentauri20rev5/BoardIndex.template.php (body_above sub template - eval?)', 227),
(167, 1615298990, 7, '', '?', '2: Undefined array key &quot;active_button&quot;', '8214d61849ee08fdc25e8f6614764644', 'undefined_vars', 'C:/xamppp/htdocs/forum/Themes/alphacentauri20rev5/BoardIndex.template.php (body_above sub template - eval?)', 228),
(168, 1615298990, 7, '', '?', '2: Undefined array key &quot;active_button&quot;', '8214d61849ee08fdc25e8f6614764644', 'undefined_vars', 'C:/xamppp/htdocs/forum/Themes/alphacentauri20rev5/BoardIndex.template.php (body_above sub template - eval?)', 227),
(169, 1615298990, 7, '', '?', '2: Undefined array key &quot;active_button&quot;', '8214d61849ee08fdc25e8f6614764644', 'undefined_vars', 'C:/xamppp/htdocs/forum/Themes/alphacentauri20rev5/BoardIndex.template.php (body_above sub template - eval?)', 228),
(170, 1615298990, 7, '', '?', '2: Undefined array key &quot;active_button&quot;', '8214d61849ee08fdc25e8f6614764644', 'undefined_vars', 'C:/xamppp/htdocs/forum/Themes/alphacentauri20rev5/BoardIndex.template.php (body_above sub template - eval?)', 227),
(171, 1615298990, 7, '', '?', '2: Undefined array key &quot;active_button&quot;', '8214d61849ee08fdc25e8f6614764644', 'undefined_vars', 'C:/xamppp/htdocs/forum/Themes/alphacentauri20rev5/BoardIndex.template.php (body_above sub template - eval?)', 228),
(172, 1615299012, 7, '', '?', '2: Undefined array key &quot;active_button&quot;', 'c8117fd6e40c64d8b3d2f7111d39539f', 'undefined_vars', 'C:/xamppp/htdocs/forum/Themes/alphacentauri20rev5/BoardIndex.template.php (body_above sub template - eval?)', 227),
(173, 1615299012, 7, '', '?', '2: Undefined array key &quot;active_button&quot;', 'c8117fd6e40c64d8b3d2f7111d39539f', 'undefined_vars', 'C:/xamppp/htdocs/forum/Themes/alphacentauri20rev5/BoardIndex.template.php (body_above sub template - eval?)', 228),
(174, 1615299012, 7, '', '?', '2: Undefined array key &quot;active_button&quot;', 'c8117fd6e40c64d8b3d2f7111d39539f', 'undefined_vars', 'C:/xamppp/htdocs/forum/Themes/alphacentauri20rev5/BoardIndex.template.php (body_above sub template - eval?)', 227),
(175, 1615299012, 7, '', '?', '2: Undefined array key &quot;active_button&quot;', 'c8117fd6e40c64d8b3d2f7111d39539f', 'undefined_vars', 'C:/xamppp/htdocs/forum/Themes/alphacentauri20rev5/BoardIndex.template.php (body_above sub template - eval?)', 228),
(176, 1615299012, 7, '', '?', '2: Undefined array key &quot;active_button&quot;', 'c8117fd6e40c64d8b3d2f7111d39539f', 'undefined_vars', 'C:/xamppp/htdocs/forum/Themes/alphacentauri20rev5/BoardIndex.template.php (body_above sub template - eval?)', 227),
(177, 1615299012, 7, '', '?', '2: Undefined array key &quot;active_button&quot;', 'c8117fd6e40c64d8b3d2f7111d39539f', 'undefined_vars', 'C:/xamppp/htdocs/forum/Themes/alphacentauri20rev5/BoardIndex.template.php (body_above sub template - eval?)', 228),
(178, 1615299012, 7, '', '?', '2: Undefined array key &quot;active_button&quot;', 'c8117fd6e40c64d8b3d2f7111d39539f', 'undefined_vars', 'C:/xamppp/htdocs/forum/Themes/alphacentauri20rev5/BoardIndex.template.php (body_above sub template - eval?)', 227),
(179, 1615299012, 7, '', '?', '2: Undefined array key &quot;active_button&quot;', 'c8117fd6e40c64d8b3d2f7111d39539f', 'undefined_vars', 'C:/xamppp/htdocs/forum/Themes/alphacentauri20rev5/BoardIndex.template.php (body_above sub template - eval?)', 228),
(180, 1615299012, 7, '', '?', '2: Undefined array key &quot;active_button&quot;', 'c8117fd6e40c64d8b3d2f7111d39539f', 'undefined_vars', 'C:/xamppp/htdocs/forum/Themes/alphacentauri20rev5/BoardIndex.template.php (body_above sub template - eval?)', 227),
(181, 1615299012, 7, '', '?', '2: Undefined array key &quot;active_button&quot;', 'c8117fd6e40c64d8b3d2f7111d39539f', 'undefined_vars', 'C:/xamppp/htdocs/forum/Themes/alphacentauri20rev5/BoardIndex.template.php (body_above sub template - eval?)', 228),
(182, 1615299012, 7, '', '?', '2: Undefined array key &quot;active_button&quot;', 'c8117fd6e40c64d8b3d2f7111d39539f', 'undefined_vars', 'C:/xamppp/htdocs/forum/Themes/alphacentauri20rev5/BoardIndex.template.php (body_above sub template - eval?)', 227),
(183, 1615299012, 7, '', '?', '2: Undefined array key &quot;active_button&quot;', 'c8117fd6e40c64d8b3d2f7111d39539f', 'undefined_vars', 'C:/xamppp/htdocs/forum/Themes/alphacentauri20rev5/BoardIndex.template.php (body_above sub template - eval?)', 228),
(184, 1615299012, 7, '', '?', '2: Undefined array key &quot;active_button&quot;', 'c8117fd6e40c64d8b3d2f7111d39539f', 'undefined_vars', 'C:/xamppp/htdocs/forum/Themes/alphacentauri20rev5/BoardIndex.template.php (body_above sub template - eval?)', 227),
(185, 1615299012, 7, '', '?', '2: Undefined array key &quot;active_button&quot;', 'c8117fd6e40c64d8b3d2f7111d39539f', 'undefined_vars', 'C:/xamppp/htdocs/forum/Themes/alphacentauri20rev5/BoardIndex.template.php (body_above sub template - eval?)', 228),
(186, 1615299012, 7, '', '?', '2: Undefined array key &quot;active_button&quot;', 'c8117fd6e40c64d8b3d2f7111d39539f', 'undefined_vars', 'C:/xamppp/htdocs/forum/Themes/alphacentauri20rev5/BoardIndex.template.php (body_above sub template - eval?)', 227),
(187, 1615299012, 7, '', '?', '2: Undefined array key &quot;active_button&quot;', 'c8117fd6e40c64d8b3d2f7111d39539f', 'undefined_vars', 'C:/xamppp/htdocs/forum/Themes/alphacentauri20rev5/BoardIndex.template.php (body_above sub template - eval?)', 228),
(188, 1615299012, 7, '', '?', '2: Undefined array key &quot;active_button&quot;', 'c8117fd6e40c64d8b3d2f7111d39539f', 'undefined_vars', 'C:/xamppp/htdocs/forum/Themes/alphacentauri20rev5/BoardIndex.template.php (body_above sub template - eval?)', 227),
(189, 1615299012, 7, '', '?', '2: Undefined array key &quot;active_button&quot;', 'c8117fd6e40c64d8b3d2f7111d39539f', 'undefined_vars', 'C:/xamppp/htdocs/forum/Themes/alphacentauri20rev5/BoardIndex.template.php (body_above sub template - eval?)', 228),
(190, 1615299012, 7, '', '?', '2: Undefined array key &quot;active_button&quot;', 'c8117fd6e40c64d8b3d2f7111d39539f', 'undefined_vars', 'C:/xamppp/htdocs/forum/Themes/alphacentauri20rev5/BoardIndex.template.php (body_above sub template - eval?)', 227),
(191, 1615299012, 7, '', '?', '2: Undefined array key &quot;active_button&quot;', 'c8117fd6e40c64d8b3d2f7111d39539f', 'undefined_vars', 'C:/xamppp/htdocs/forum/Themes/alphacentauri20rev5/BoardIndex.template.php (body_above sub template - eval?)', 228),
(192, 1615299012, 7, '', '?', '2: Undefined array key &quot;active_button&quot;', 'c8117fd6e40c64d8b3d2f7111d39539f', 'undefined_vars', 'C:/xamppp/htdocs/forum/Themes/alphacentauri20rev5/BoardIndex.template.php (body_above sub template - eval?)', 227),
(193, 1615299012, 7, '', '?', '2: Undefined array key &quot;active_button&quot;', 'c8117fd6e40c64d8b3d2f7111d39539f', 'undefined_vars', 'C:/xamppp/htdocs/forum/Themes/alphacentauri20rev5/BoardIndex.template.php (body_above sub template - eval?)', 228),
(194, 1615299012, 7, '', '?', '2: Undefined array key &quot;active_button&quot;', 'c8117fd6e40c64d8b3d2f7111d39539f', 'undefined_vars', 'C:/xamppp/htdocs/forum/Themes/alphacentauri20rev5/BoardIndex.template.php (body_above sub template - eval?)', 227),
(195, 1615299012, 7, '', '?', '2: Undefined array key &quot;active_button&quot;', 'c8117fd6e40c64d8b3d2f7111d39539f', 'undefined_vars', 'C:/xamppp/htdocs/forum/Themes/alphacentauri20rev5/BoardIndex.template.php (body_above sub template - eval?)', 228);
INSERT INTO `kzw_log_errors` (`id_error`, `log_time`, `id_member`, `ip`, `url`, `message`, `session`, `error_type`, `file`, `line`) VALUES
(196, 1615299028, 7, '', '?action=collapse;c=3;sa=collapse;b00e726615=c8117fd6e40c64d8b3d2f7111d39539f', '2: Undefined array key &quot;active_button&quot;', 'c8117fd6e40c64d8b3d2f7111d39539f', 'undefined_vars', 'C:/xamppp/htdocs/forum/Themes/alphacentauri20rev5/BoardIndex.template.php (body_above sub template - eval?)', 227),
(197, 1615299028, 7, '', '?action=collapse;c=3;sa=collapse;b00e726615=c8117fd6e40c64d8b3d2f7111d39539f', '2: Undefined array key &quot;active_button&quot;', 'c8117fd6e40c64d8b3d2f7111d39539f', 'undefined_vars', 'C:/xamppp/htdocs/forum/Themes/alphacentauri20rev5/BoardIndex.template.php (body_above sub template - eval?)', 228),
(198, 1615299028, 7, '', '?action=collapse;c=3;sa=collapse;b00e726615=c8117fd6e40c64d8b3d2f7111d39539f', '2: Undefined array key &quot;active_button&quot;', 'c8117fd6e40c64d8b3d2f7111d39539f', 'undefined_vars', 'C:/xamppp/htdocs/forum/Themes/alphacentauri20rev5/BoardIndex.template.php (body_above sub template - eval?)', 227),
(199, 1615299028, 7, '', '?action=collapse;c=3;sa=collapse;b00e726615=c8117fd6e40c64d8b3d2f7111d39539f', '2: Undefined array key &quot;active_button&quot;', 'c8117fd6e40c64d8b3d2f7111d39539f', 'undefined_vars', 'C:/xamppp/htdocs/forum/Themes/alphacentauri20rev5/BoardIndex.template.php (body_above sub template - eval?)', 228),
(200, 1615299028, 7, '', '?action=collapse;c=3;sa=collapse;b00e726615=c8117fd6e40c64d8b3d2f7111d39539f', '2: Undefined array key &quot;active_button&quot;', 'c8117fd6e40c64d8b3d2f7111d39539f', 'undefined_vars', 'C:/xamppp/htdocs/forum/Themes/alphacentauri20rev5/BoardIndex.template.php (body_above sub template - eval?)', 227),
(201, 1615299028, 7, '', '?action=collapse;c=3;sa=collapse;b00e726615=c8117fd6e40c64d8b3d2f7111d39539f', '2: Undefined array key &quot;active_button&quot;', 'c8117fd6e40c64d8b3d2f7111d39539f', 'undefined_vars', 'C:/xamppp/htdocs/forum/Themes/alphacentauri20rev5/BoardIndex.template.php (body_above sub template - eval?)', 228),
(202, 1615299028, 7, '', '?action=collapse;c=3;sa=collapse;b00e726615=c8117fd6e40c64d8b3d2f7111d39539f', '2: Undefined array key &quot;active_button&quot;', 'c8117fd6e40c64d8b3d2f7111d39539f', 'undefined_vars', 'C:/xamppp/htdocs/forum/Themes/alphacentauri20rev5/BoardIndex.template.php (body_above sub template - eval?)', 227),
(203, 1615299028, 7, '', '?action=collapse;c=3;sa=collapse;b00e726615=c8117fd6e40c64d8b3d2f7111d39539f', '2: Undefined array key &quot;active_button&quot;', 'c8117fd6e40c64d8b3d2f7111d39539f', 'undefined_vars', 'C:/xamppp/htdocs/forum/Themes/alphacentauri20rev5/BoardIndex.template.php (body_above sub template - eval?)', 228),
(204, 1615299028, 7, '', '?action=collapse;c=3;sa=collapse;b00e726615=c8117fd6e40c64d8b3d2f7111d39539f', '2: Undefined array key &quot;active_button&quot;', 'c8117fd6e40c64d8b3d2f7111d39539f', 'undefined_vars', 'C:/xamppp/htdocs/forum/Themes/alphacentauri20rev5/BoardIndex.template.php (body_above sub template - eval?)', 227),
(205, 1615299028, 7, '', '?action=collapse;c=3;sa=collapse;b00e726615=c8117fd6e40c64d8b3d2f7111d39539f', '2: Undefined array key &quot;active_button&quot;', 'c8117fd6e40c64d8b3d2f7111d39539f', 'undefined_vars', 'C:/xamppp/htdocs/forum/Themes/alphacentauri20rev5/BoardIndex.template.php (body_above sub template - eval?)', 228),
(206, 1615299028, 7, '', '?action=collapse;c=3;sa=collapse;b00e726615=c8117fd6e40c64d8b3d2f7111d39539f', '2: Undefined array key &quot;active_button&quot;', 'c8117fd6e40c64d8b3d2f7111d39539f', 'undefined_vars', 'C:/xamppp/htdocs/forum/Themes/alphacentauri20rev5/BoardIndex.template.php (body_above sub template - eval?)', 227),
(207, 1615299028, 7, '', '?action=collapse;c=3;sa=collapse;b00e726615=c8117fd6e40c64d8b3d2f7111d39539f', '2: Undefined array key &quot;active_button&quot;', 'c8117fd6e40c64d8b3d2f7111d39539f', 'undefined_vars', 'C:/xamppp/htdocs/forum/Themes/alphacentauri20rev5/BoardIndex.template.php (body_above sub template - eval?)', 228),
(208, 1615299028, 7, '', '?action=collapse;c=3;sa=collapse;b00e726615=c8117fd6e40c64d8b3d2f7111d39539f', '2: Undefined array key &quot;active_button&quot;', 'c8117fd6e40c64d8b3d2f7111d39539f', 'undefined_vars', 'C:/xamppp/htdocs/forum/Themes/alphacentauri20rev5/BoardIndex.template.php (body_above sub template - eval?)', 227),
(209, 1615299028, 7, '', '?action=collapse;c=3;sa=collapse;b00e726615=c8117fd6e40c64d8b3d2f7111d39539f', '2: Undefined array key &quot;active_button&quot;', 'c8117fd6e40c64d8b3d2f7111d39539f', 'undefined_vars', 'C:/xamppp/htdocs/forum/Themes/alphacentauri20rev5/BoardIndex.template.php (body_above sub template - eval?)', 228),
(210, 1615299028, 7, '', '?action=collapse;c=3;sa=collapse;b00e726615=c8117fd6e40c64d8b3d2f7111d39539f', '2: Undefined array key &quot;active_button&quot;', 'c8117fd6e40c64d8b3d2f7111d39539f', 'undefined_vars', 'C:/xamppp/htdocs/forum/Themes/alphacentauri20rev5/BoardIndex.template.php (body_above sub template - eval?)', 227),
(211, 1615299028, 7, '', '?action=collapse;c=3;sa=collapse;b00e726615=c8117fd6e40c64d8b3d2f7111d39539f', '2: Undefined array key &quot;active_button&quot;', 'c8117fd6e40c64d8b3d2f7111d39539f', 'undefined_vars', 'C:/xamppp/htdocs/forum/Themes/alphacentauri20rev5/BoardIndex.template.php (body_above sub template - eval?)', 228),
(212, 1615299028, 7, '', '?action=collapse;c=3;sa=collapse;b00e726615=c8117fd6e40c64d8b3d2f7111d39539f', '2: Undefined array key &quot;active_button&quot;', 'c8117fd6e40c64d8b3d2f7111d39539f', 'undefined_vars', 'C:/xamppp/htdocs/forum/Themes/alphacentauri20rev5/BoardIndex.template.php (body_above sub template - eval?)', 227),
(213, 1615299028, 7, '', '?action=collapse;c=3;sa=collapse;b00e726615=c8117fd6e40c64d8b3d2f7111d39539f', '2: Undefined array key &quot;active_button&quot;', 'c8117fd6e40c64d8b3d2f7111d39539f', 'undefined_vars', 'C:/xamppp/htdocs/forum/Themes/alphacentauri20rev5/BoardIndex.template.php (body_above sub template - eval?)', 228),
(214, 1615299028, 7, '', '?action=collapse;c=3;sa=collapse;b00e726615=c8117fd6e40c64d8b3d2f7111d39539f', '2: Undefined array key &quot;active_button&quot;', 'c8117fd6e40c64d8b3d2f7111d39539f', 'undefined_vars', 'C:/xamppp/htdocs/forum/Themes/alphacentauri20rev5/BoardIndex.template.php (body_above sub template - eval?)', 227),
(215, 1615299028, 7, '', '?action=collapse;c=3;sa=collapse;b00e726615=c8117fd6e40c64d8b3d2f7111d39539f', '2: Undefined array key &quot;active_button&quot;', 'c8117fd6e40c64d8b3d2f7111d39539f', 'undefined_vars', 'C:/xamppp/htdocs/forum/Themes/alphacentauri20rev5/BoardIndex.template.php (body_above sub template - eval?)', 228),
(216, 1615299028, 7, '', '?action=collapse;c=3;sa=collapse;b00e726615=c8117fd6e40c64d8b3d2f7111d39539f', '2: Undefined array key &quot;active_button&quot;', 'c8117fd6e40c64d8b3d2f7111d39539f', 'undefined_vars', 'C:/xamppp/htdocs/forum/Themes/alphacentauri20rev5/BoardIndex.template.php (body_above sub template - eval?)', 227),
(217, 1615299028, 7, '', '?action=collapse;c=3;sa=collapse;b00e726615=c8117fd6e40c64d8b3d2f7111d39539f', '2: Undefined array key &quot;active_button&quot;', 'c8117fd6e40c64d8b3d2f7111d39539f', 'undefined_vars', 'C:/xamppp/htdocs/forum/Themes/alphacentauri20rev5/BoardIndex.template.php (body_above sub template - eval?)', 228),
(218, 1615299028, 7, '', '?action=collapse;c=3;sa=collapse;b00e726615=c8117fd6e40c64d8b3d2f7111d39539f', '2: Undefined array key &quot;active_button&quot;', 'c8117fd6e40c64d8b3d2f7111d39539f', 'undefined_vars', 'C:/xamppp/htdocs/forum/Themes/alphacentauri20rev5/BoardIndex.template.php (body_above sub template - eval?)', 227),
(219, 1615299028, 7, '', '?action=collapse;c=3;sa=collapse;b00e726615=c8117fd6e40c64d8b3d2f7111d39539f', '2: Undefined array key &quot;active_button&quot;', 'c8117fd6e40c64d8b3d2f7111d39539f', 'undefined_vars', 'C:/xamppp/htdocs/forum/Themes/alphacentauri20rev5/BoardIndex.template.php (body_above sub template - eval?)', 228),
(220, 1615299031, 7, '', '?action=collapse;c=3;sa=expand;b00e726615=c8117fd6e40c64d8b3d2f7111d39539f', '2: Undefined array key &quot;active_button&quot;', 'c8117fd6e40c64d8b3d2f7111d39539f', 'undefined_vars', 'C:/xamppp/htdocs/forum/Themes/alphacentauri20rev5/BoardIndex.template.php (body_above sub template - eval?)', 227),
(221, 1615299031, 7, '', '?action=collapse;c=3;sa=expand;b00e726615=c8117fd6e40c64d8b3d2f7111d39539f', '2: Undefined array key &quot;active_button&quot;', 'c8117fd6e40c64d8b3d2f7111d39539f', 'undefined_vars', 'C:/xamppp/htdocs/forum/Themes/alphacentauri20rev5/BoardIndex.template.php (body_above sub template - eval?)', 228),
(222, 1615299031, 7, '', '?action=collapse;c=3;sa=expand;b00e726615=c8117fd6e40c64d8b3d2f7111d39539f', '2: Undefined array key &quot;active_button&quot;', 'c8117fd6e40c64d8b3d2f7111d39539f', 'undefined_vars', 'C:/xamppp/htdocs/forum/Themes/alphacentauri20rev5/BoardIndex.template.php (body_above sub template - eval?)', 227),
(223, 1615299031, 7, '', '?action=collapse;c=3;sa=expand;b00e726615=c8117fd6e40c64d8b3d2f7111d39539f', '2: Undefined array key &quot;active_button&quot;', 'c8117fd6e40c64d8b3d2f7111d39539f', 'undefined_vars', 'C:/xamppp/htdocs/forum/Themes/alphacentauri20rev5/BoardIndex.template.php (body_above sub template - eval?)', 228),
(224, 1615299031, 7, '', '?action=collapse;c=3;sa=expand;b00e726615=c8117fd6e40c64d8b3d2f7111d39539f', '2: Undefined array key &quot;active_button&quot;', 'c8117fd6e40c64d8b3d2f7111d39539f', 'undefined_vars', 'C:/xamppp/htdocs/forum/Themes/alphacentauri20rev5/BoardIndex.template.php (body_above sub template - eval?)', 227),
(225, 1615299031, 7, '', '?action=collapse;c=3;sa=expand;b00e726615=c8117fd6e40c64d8b3d2f7111d39539f', '2: Undefined array key &quot;active_button&quot;', 'c8117fd6e40c64d8b3d2f7111d39539f', 'undefined_vars', 'C:/xamppp/htdocs/forum/Themes/alphacentauri20rev5/BoardIndex.template.php (body_above sub template - eval?)', 228),
(226, 1615299031, 7, '', '?action=collapse;c=3;sa=expand;b00e726615=c8117fd6e40c64d8b3d2f7111d39539f', '2: Undefined array key &quot;active_button&quot;', 'c8117fd6e40c64d8b3d2f7111d39539f', 'undefined_vars', 'C:/xamppp/htdocs/forum/Themes/alphacentauri20rev5/BoardIndex.template.php (body_above sub template - eval?)', 227),
(227, 1615299031, 7, '', '?action=collapse;c=3;sa=expand;b00e726615=c8117fd6e40c64d8b3d2f7111d39539f', '2: Undefined array key &quot;active_button&quot;', 'c8117fd6e40c64d8b3d2f7111d39539f', 'undefined_vars', 'C:/xamppp/htdocs/forum/Themes/alphacentauri20rev5/BoardIndex.template.php (body_above sub template - eval?)', 228),
(228, 1615299031, 7, '', '?action=collapse;c=3;sa=expand;b00e726615=c8117fd6e40c64d8b3d2f7111d39539f', '2: Undefined array key &quot;active_button&quot;', 'c8117fd6e40c64d8b3d2f7111d39539f', 'undefined_vars', 'C:/xamppp/htdocs/forum/Themes/alphacentauri20rev5/BoardIndex.template.php (body_above sub template - eval?)', 227),
(229, 1615299031, 7, '', '?action=collapse;c=3;sa=expand;b00e726615=c8117fd6e40c64d8b3d2f7111d39539f', '2: Undefined array key &quot;active_button&quot;', 'c8117fd6e40c64d8b3d2f7111d39539f', 'undefined_vars', 'C:/xamppp/htdocs/forum/Themes/alphacentauri20rev5/BoardIndex.template.php (body_above sub template - eval?)', 228),
(230, 1615299031, 7, '', '?action=collapse;c=3;sa=expand;b00e726615=c8117fd6e40c64d8b3d2f7111d39539f', '2: Undefined array key &quot;active_button&quot;', 'c8117fd6e40c64d8b3d2f7111d39539f', 'undefined_vars', 'C:/xamppp/htdocs/forum/Themes/alphacentauri20rev5/BoardIndex.template.php (body_above sub template - eval?)', 227),
(231, 1615299031, 7, '', '?action=collapse;c=3;sa=expand;b00e726615=c8117fd6e40c64d8b3d2f7111d39539f', '2: Undefined array key &quot;active_button&quot;', 'c8117fd6e40c64d8b3d2f7111d39539f', 'undefined_vars', 'C:/xamppp/htdocs/forum/Themes/alphacentauri20rev5/BoardIndex.template.php (body_above sub template - eval?)', 228),
(232, 1615299031, 7, '', '?action=collapse;c=3;sa=expand;b00e726615=c8117fd6e40c64d8b3d2f7111d39539f', '2: Undefined array key &quot;active_button&quot;', 'c8117fd6e40c64d8b3d2f7111d39539f', 'undefined_vars', 'C:/xamppp/htdocs/forum/Themes/alphacentauri20rev5/BoardIndex.template.php (body_above sub template - eval?)', 227),
(233, 1615299031, 7, '', '?action=collapse;c=3;sa=expand;b00e726615=c8117fd6e40c64d8b3d2f7111d39539f', '2: Undefined array key &quot;active_button&quot;', 'c8117fd6e40c64d8b3d2f7111d39539f', 'undefined_vars', 'C:/xamppp/htdocs/forum/Themes/alphacentauri20rev5/BoardIndex.template.php (body_above sub template - eval?)', 228),
(234, 1615299031, 7, '', '?action=collapse;c=3;sa=expand;b00e726615=c8117fd6e40c64d8b3d2f7111d39539f', '2: Undefined array key &quot;active_button&quot;', 'c8117fd6e40c64d8b3d2f7111d39539f', 'undefined_vars', 'C:/xamppp/htdocs/forum/Themes/alphacentauri20rev5/BoardIndex.template.php (body_above sub template - eval?)', 227),
(235, 1615299031, 7, '', '?action=collapse;c=3;sa=expand;b00e726615=c8117fd6e40c64d8b3d2f7111d39539f', '2: Undefined array key &quot;active_button&quot;', 'c8117fd6e40c64d8b3d2f7111d39539f', 'undefined_vars', 'C:/xamppp/htdocs/forum/Themes/alphacentauri20rev5/BoardIndex.template.php (body_above sub template - eval?)', 228),
(236, 1615299031, 7, '', '?action=collapse;c=3;sa=expand;b00e726615=c8117fd6e40c64d8b3d2f7111d39539f', '2: Undefined array key &quot;active_button&quot;', 'c8117fd6e40c64d8b3d2f7111d39539f', 'undefined_vars', 'C:/xamppp/htdocs/forum/Themes/alphacentauri20rev5/BoardIndex.template.php (body_above sub template - eval?)', 227),
(237, 1615299031, 7, '', '?action=collapse;c=3;sa=expand;b00e726615=c8117fd6e40c64d8b3d2f7111d39539f', '2: Undefined array key &quot;active_button&quot;', 'c8117fd6e40c64d8b3d2f7111d39539f', 'undefined_vars', 'C:/xamppp/htdocs/forum/Themes/alphacentauri20rev5/BoardIndex.template.php (body_above sub template - eval?)', 228),
(238, 1615299031, 7, '', '?action=collapse;c=3;sa=expand;b00e726615=c8117fd6e40c64d8b3d2f7111d39539f', '2: Undefined array key &quot;active_button&quot;', 'c8117fd6e40c64d8b3d2f7111d39539f', 'undefined_vars', 'C:/xamppp/htdocs/forum/Themes/alphacentauri20rev5/BoardIndex.template.php (body_above sub template - eval?)', 227),
(239, 1615299031, 7, '', '?action=collapse;c=3;sa=expand;b00e726615=c8117fd6e40c64d8b3d2f7111d39539f', '2: Undefined array key &quot;active_button&quot;', 'c8117fd6e40c64d8b3d2f7111d39539f', 'undefined_vars', 'C:/xamppp/htdocs/forum/Themes/alphacentauri20rev5/BoardIndex.template.php (body_above sub template - eval?)', 228),
(240, 1615299031, 7, '', '?action=collapse;c=3;sa=expand;b00e726615=c8117fd6e40c64d8b3d2f7111d39539f', '2: Undefined array key &quot;active_button&quot;', 'c8117fd6e40c64d8b3d2f7111d39539f', 'undefined_vars', 'C:/xamppp/htdocs/forum/Themes/alphacentauri20rev5/BoardIndex.template.php (body_above sub template - eval?)', 227),
(241, 1615299031, 7, '', '?action=collapse;c=3;sa=expand;b00e726615=c8117fd6e40c64d8b3d2f7111d39539f', '2: Undefined array key &quot;active_button&quot;', 'c8117fd6e40c64d8b3d2f7111d39539f', 'undefined_vars', 'C:/xamppp/htdocs/forum/Themes/alphacentauri20rev5/BoardIndex.template.php (body_above sub template - eval?)', 228),
(242, 1615299031, 7, '', '?action=collapse;c=3;sa=expand;b00e726615=c8117fd6e40c64d8b3d2f7111d39539f', '2: Undefined array key &quot;active_button&quot;', 'c8117fd6e40c64d8b3d2f7111d39539f', 'undefined_vars', 'C:/xamppp/htdocs/forum/Themes/alphacentauri20rev5/BoardIndex.template.php (body_above sub template - eval?)', 227),
(243, 1615299031, 7, '', '?action=collapse;c=3;sa=expand;b00e726615=c8117fd6e40c64d8b3d2f7111d39539f', '2: Undefined array key &quot;active_button&quot;', 'c8117fd6e40c64d8b3d2f7111d39539f', 'undefined_vars', 'C:/xamppp/htdocs/forum/Themes/alphacentauri20rev5/BoardIndex.template.php (body_above sub template - eval?)', 228),
(244, 1615299049, 7, '', '?action=mlist', '2: Undefined array key &quot;active_button&quot;', 'c8117fd6e40c64d8b3d2f7111d39539f', 'undefined_vars', 'C:/xamppp/htdocs/forum/Themes/default/Memberlist.template.php (body_above sub template - eval?)', 227),
(245, 1615299049, 7, '', '?action=mlist', '2: Undefined array key &quot;active_button&quot;', 'c8117fd6e40c64d8b3d2f7111d39539f', 'undefined_vars', 'C:/xamppp/htdocs/forum/Themes/default/Memberlist.template.php (body_above sub template - eval?)', 228),
(246, 1615299049, 7, '', '?action=mlist', '2: Undefined array key &quot;active_button&quot;', 'c8117fd6e40c64d8b3d2f7111d39539f', 'undefined_vars', 'C:/xamppp/htdocs/forum/Themes/default/Memberlist.template.php (body_above sub template - eval?)', 227),
(247, 1615299049, 7, '', '?action=mlist', '2: Undefined array key &quot;active_button&quot;', 'c8117fd6e40c64d8b3d2f7111d39539f', 'undefined_vars', 'C:/xamppp/htdocs/forum/Themes/default/Memberlist.template.php (body_above sub template - eval?)', 228),
(248, 1615299049, 7, '', '?action=mlist', '2: Undefined array key &quot;active_button&quot;', 'c8117fd6e40c64d8b3d2f7111d39539f', 'undefined_vars', 'C:/xamppp/htdocs/forum/Themes/default/Memberlist.template.php (body_above sub template - eval?)', 227),
(249, 1615299049, 7, '', '?action=mlist', '2: Undefined array key &quot;active_button&quot;', 'c8117fd6e40c64d8b3d2f7111d39539f', 'undefined_vars', 'C:/xamppp/htdocs/forum/Themes/default/Memberlist.template.php (body_above sub template - eval?)', 228),
(250, 1615299049, 7, '', '?action=mlist', '2: Undefined array key &quot;active_button&quot;', 'c8117fd6e40c64d8b3d2f7111d39539f', 'undefined_vars', 'C:/xamppp/htdocs/forum/Themes/default/Memberlist.template.php (body_above sub template - eval?)', 227),
(251, 1615299049, 7, '', '?action=mlist', '2: Undefined array key &quot;active_button&quot;', 'c8117fd6e40c64d8b3d2f7111d39539f', 'undefined_vars', 'C:/xamppp/htdocs/forum/Themes/default/Memberlist.template.php (body_above sub template - eval?)', 228),
(252, 1615299049, 7, '', '?action=mlist', '2: Undefined array key &quot;active_button&quot;', 'c8117fd6e40c64d8b3d2f7111d39539f', 'undefined_vars', 'C:/xamppp/htdocs/forum/Themes/default/Memberlist.template.php (body_above sub template - eval?)', 227),
(253, 1615299049, 7, '', '?action=mlist', '2: Undefined array key &quot;active_button&quot;', 'c8117fd6e40c64d8b3d2f7111d39539f', 'undefined_vars', 'C:/xamppp/htdocs/forum/Themes/default/Memberlist.template.php (body_above sub template - eval?)', 228),
(254, 1615299049, 7, '', '?action=mlist', '2: Undefined array key &quot;active_button&quot;', 'c8117fd6e40c64d8b3d2f7111d39539f', 'undefined_vars', 'C:/xamppp/htdocs/forum/Themes/default/Memberlist.template.php (body_above sub template - eval?)', 227),
(255, 1615299049, 7, '', '?action=mlist', '2: Undefined array key &quot;active_button&quot;', 'c8117fd6e40c64d8b3d2f7111d39539f', 'undefined_vars', 'C:/xamppp/htdocs/forum/Themes/default/Memberlist.template.php (body_above sub template - eval?)', 228),
(256, 1615299049, 7, '', '?action=mlist', '2: Undefined array key &quot;active_button&quot;', 'c8117fd6e40c64d8b3d2f7111d39539f', 'undefined_vars', 'C:/xamppp/htdocs/forum/Themes/default/Memberlist.template.php (body_above sub template - eval?)', 227),
(257, 1615299049, 7, '', '?action=mlist', '2: Undefined array key &quot;active_button&quot;', 'c8117fd6e40c64d8b3d2f7111d39539f', 'undefined_vars', 'C:/xamppp/htdocs/forum/Themes/default/Memberlist.template.php (body_above sub template - eval?)', 228),
(258, 1615299049, 7, '', '?action=mlist', '2: Undefined array key &quot;active_button&quot;', 'c8117fd6e40c64d8b3d2f7111d39539f', 'undefined_vars', 'C:/xamppp/htdocs/forum/Themes/default/Memberlist.template.php (body_above sub template - eval?)', 227),
(259, 1615299049, 7, '', '?action=mlist', '2: Undefined array key &quot;active_button&quot;', 'c8117fd6e40c64d8b3d2f7111d39539f', 'undefined_vars', 'C:/xamppp/htdocs/forum/Themes/default/Memberlist.template.php (body_above sub template - eval?)', 228),
(260, 1615299049, 7, '', '?action=mlist', '2: Undefined array key &quot;active_button&quot;', 'c8117fd6e40c64d8b3d2f7111d39539f', 'undefined_vars', 'C:/xamppp/htdocs/forum/Themes/default/Memberlist.template.php (body_above sub template - eval?)', 227),
(261, 1615299049, 7, '', '?action=mlist', '2: Undefined array key &quot;active_button&quot;', 'c8117fd6e40c64d8b3d2f7111d39539f', 'undefined_vars', 'C:/xamppp/htdocs/forum/Themes/default/Memberlist.template.php (body_above sub template - eval?)', 228),
(262, 1615299049, 7, '', '?action=mlist', '2: Undefined array key &quot;active_button&quot;', 'c8117fd6e40c64d8b3d2f7111d39539f', 'undefined_vars', 'C:/xamppp/htdocs/forum/Themes/default/Memberlist.template.php (body_above sub template - eval?)', 227),
(263, 1615299049, 7, '', '?action=mlist', '2: Undefined array key &quot;active_button&quot;', 'c8117fd6e40c64d8b3d2f7111d39539f', 'undefined_vars', 'C:/xamppp/htdocs/forum/Themes/default/Memberlist.template.php (body_above sub template - eval?)', 228),
(264, 1615299049, 7, '', '?action=mlist', '2: Undefined array key &quot;active_button&quot;', 'c8117fd6e40c64d8b3d2f7111d39539f', 'undefined_vars', 'C:/xamppp/htdocs/forum/Themes/default/Memberlist.template.php (body_above sub template - eval?)', 227),
(265, 1615299049, 7, '', '?action=mlist', '2: Undefined array key &quot;active_button&quot;', 'c8117fd6e40c64d8b3d2f7111d39539f', 'undefined_vars', 'C:/xamppp/htdocs/forum/Themes/default/Memberlist.template.php (body_above sub template - eval?)', 228),
(266, 1615299049, 7, '', '?action=mlist', '2: Undefined array key &quot;active_button&quot;', 'c8117fd6e40c64d8b3d2f7111d39539f', 'undefined_vars', 'C:/xamppp/htdocs/forum/Themes/default/Memberlist.template.php (body_above sub template - eval?)', 227),
(267, 1615299049, 7, '', '?action=mlist', '2: Undefined array key &quot;active_button&quot;', 'c8117fd6e40c64d8b3d2f7111d39539f', 'undefined_vars', 'C:/xamppp/htdocs/forum/Themes/default/Memberlist.template.php (body_above sub template - eval?)', 228),
(268, 1615299055, 7, '', '?action=profile;u=9', '2: Undefined array key &quot;active_button&quot;', 'c8117fd6e40c64d8b3d2f7111d39539f', 'undefined_vars', 'C:/xamppp/htdocs/forum/Themes/default/languages/Who.portuguese_brazilian-utf8.php (body_above sub template - eval?)', 227),
(269, 1615299055, 7, '', '?action=profile;u=9', '2: Undefined array key &quot;active_button&quot;', 'c8117fd6e40c64d8b3d2f7111d39539f', 'undefined_vars', 'C:/xamppp/htdocs/forum/Themes/default/languages/Who.portuguese_brazilian-utf8.php (body_above sub template - eval?)', 228),
(270, 1615299055, 7, '', '?action=profile;u=9', '2: Undefined array key &quot;active_button&quot;', 'c8117fd6e40c64d8b3d2f7111d39539f', 'undefined_vars', 'C:/xamppp/htdocs/forum/Themes/default/languages/Who.portuguese_brazilian-utf8.php (body_above sub template - eval?)', 227),
(271, 1615299055, 7, '', '?action=profile;u=9', '2: Undefined array key &quot;active_button&quot;', 'c8117fd6e40c64d8b3d2f7111d39539f', 'undefined_vars', 'C:/xamppp/htdocs/forum/Themes/default/languages/Who.portuguese_brazilian-utf8.php (body_above sub template - eval?)', 228),
(272, 1615299055, 7, '', '?action=profile;u=9', '2: Undefined array key &quot;active_button&quot;', 'c8117fd6e40c64d8b3d2f7111d39539f', 'undefined_vars', 'C:/xamppp/htdocs/forum/Themes/default/languages/Who.portuguese_brazilian-utf8.php (body_above sub template - eval?)', 227),
(273, 1615299055, 7, '', '?action=profile;u=9', '2: Undefined array key &quot;active_button&quot;', 'c8117fd6e40c64d8b3d2f7111d39539f', 'undefined_vars', 'C:/xamppp/htdocs/forum/Themes/default/languages/Who.portuguese_brazilian-utf8.php (body_above sub template - eval?)', 228),
(274, 1615299055, 7, '', '?action=profile;u=9', '2: Undefined array key &quot;active_button&quot;', 'c8117fd6e40c64d8b3d2f7111d39539f', 'undefined_vars', 'C:/xamppp/htdocs/forum/Themes/default/languages/Who.portuguese_brazilian-utf8.php (body_above sub template - eval?)', 227),
(275, 1615299055, 7, '', '?action=profile;u=9', '2: Undefined array key &quot;active_button&quot;', 'c8117fd6e40c64d8b3d2f7111d39539f', 'undefined_vars', 'C:/xamppp/htdocs/forum/Themes/default/languages/Who.portuguese_brazilian-utf8.php (body_above sub template - eval?)', 228),
(276, 1615299055, 7, '', '?action=profile;u=9', '2: Undefined array key &quot;active_button&quot;', 'c8117fd6e40c64d8b3d2f7111d39539f', 'undefined_vars', 'C:/xamppp/htdocs/forum/Themes/default/languages/Who.portuguese_brazilian-utf8.php (body_above sub template - eval?)', 227),
(277, 1615299055, 7, '', '?action=profile;u=9', '2: Undefined array key &quot;active_button&quot;', 'c8117fd6e40c64d8b3d2f7111d39539f', 'undefined_vars', 'C:/xamppp/htdocs/forum/Themes/default/languages/Who.portuguese_brazilian-utf8.php (body_above sub template - eval?)', 228),
(278, 1615299055, 7, '', '?action=profile;u=9', '2: Undefined array key &quot;active_button&quot;', 'c8117fd6e40c64d8b3d2f7111d39539f', 'undefined_vars', 'C:/xamppp/htdocs/forum/Themes/default/languages/Who.portuguese_brazilian-utf8.php (body_above sub template - eval?)', 227),
(279, 1615299055, 7, '', '?action=profile;u=9', '2: Undefined array key &quot;active_button&quot;', 'c8117fd6e40c64d8b3d2f7111d39539f', 'undefined_vars', 'C:/xamppp/htdocs/forum/Themes/default/languages/Who.portuguese_brazilian-utf8.php (body_above sub template - eval?)', 228),
(280, 1615299055, 7, '', '?action=profile;u=9', '2: Undefined array key &quot;active_button&quot;', 'c8117fd6e40c64d8b3d2f7111d39539f', 'undefined_vars', 'C:/xamppp/htdocs/forum/Themes/default/languages/Who.portuguese_brazilian-utf8.php (body_above sub template - eval?)', 227),
(281, 1615299055, 7, '', '?action=profile;u=9', '2: Undefined array key &quot;active_button&quot;', 'c8117fd6e40c64d8b3d2f7111d39539f', 'undefined_vars', 'C:/xamppp/htdocs/forum/Themes/default/languages/Who.portuguese_brazilian-utf8.php (body_above sub template - eval?)', 228),
(282, 1615299055, 7, '', '?action=profile;u=9', '2: Undefined array key &quot;active_button&quot;', 'c8117fd6e40c64d8b3d2f7111d39539f', 'undefined_vars', 'C:/xamppp/htdocs/forum/Themes/default/languages/Who.portuguese_brazilian-utf8.php (body_above sub template - eval?)', 227),
(283, 1615299055, 7, '', '?action=profile;u=9', '2: Undefined array key &quot;active_button&quot;', 'c8117fd6e40c64d8b3d2f7111d39539f', 'undefined_vars', 'C:/xamppp/htdocs/forum/Themes/default/languages/Who.portuguese_brazilian-utf8.php (body_above sub template - eval?)', 228),
(284, 1615299055, 7, '', '?action=profile;u=9', '2: Undefined array key &quot;active_button&quot;', 'c8117fd6e40c64d8b3d2f7111d39539f', 'undefined_vars', 'C:/xamppp/htdocs/forum/Themes/default/languages/Who.portuguese_brazilian-utf8.php (body_above sub template - eval?)', 227),
(285, 1615299055, 7, '', '?action=profile;u=9', '2: Undefined array key &quot;active_button&quot;', 'c8117fd6e40c64d8b3d2f7111d39539f', 'undefined_vars', 'C:/xamppp/htdocs/forum/Themes/default/languages/Who.portuguese_brazilian-utf8.php (body_above sub template - eval?)', 228),
(286, 1615299055, 7, '', '?action=profile;u=9', '2: Undefined array key &quot;active_button&quot;', 'c8117fd6e40c64d8b3d2f7111d39539f', 'undefined_vars', 'C:/xamppp/htdocs/forum/Themes/default/languages/Who.portuguese_brazilian-utf8.php (body_above sub template - eval?)', 227),
(287, 1615299055, 7, '', '?action=profile;u=9', '2: Undefined array key &quot;active_button&quot;', 'c8117fd6e40c64d8b3d2f7111d39539f', 'undefined_vars', 'C:/xamppp/htdocs/forum/Themes/default/languages/Who.portuguese_brazilian-utf8.php (body_above sub template - eval?)', 228),
(288, 1615299055, 7, '', '?action=profile;u=9', '2: Undefined array key &quot;active_button&quot;', 'c8117fd6e40c64d8b3d2f7111d39539f', 'undefined_vars', 'C:/xamppp/htdocs/forum/Themes/default/languages/Who.portuguese_brazilian-utf8.php (body_above sub template - eval?)', 227),
(289, 1615299055, 7, '', '?action=profile;u=9', '2: Undefined array key &quot;active_button&quot;', 'c8117fd6e40c64d8b3d2f7111d39539f', 'undefined_vars', 'C:/xamppp/htdocs/forum/Themes/default/languages/Who.portuguese_brazilian-utf8.php (body_above sub template - eval?)', 228),
(290, 1615299055, 7, '', '?action=profile;u=9', '2: Undefined array key &quot;active_button&quot;', 'c8117fd6e40c64d8b3d2f7111d39539f', 'undefined_vars', 'C:/xamppp/htdocs/forum/Themes/default/languages/Who.portuguese_brazilian-utf8.php (body_above sub template - eval?)', 227),
(291, 1615299055, 7, '', '?action=profile;u=9', '2: Undefined array key &quot;active_button&quot;', 'c8117fd6e40c64d8b3d2f7111d39539f', 'undefined_vars', 'C:/xamppp/htdocs/forum/Themes/default/languages/Who.portuguese_brazilian-utf8.php (body_above sub template - eval?)', 228),
(292, 1615299061, 7, '', '?action=profile;area=account;u=9', '2: Undefined array key &quot;active_button&quot;', 'c8117fd6e40c64d8b3d2f7111d39539f', 'undefined_vars', 'C:/xamppp/htdocs/forum/Themes/alphacentauri20rev5/GenericMenu.template.php (body_above sub template - eval?)', 227),
(293, 1615299061, 7, '', '?action=profile;area=account;u=9', '2: Undefined array key &quot;active_button&quot;', 'c8117fd6e40c64d8b3d2f7111d39539f', 'undefined_vars', 'C:/xamppp/htdocs/forum/Themes/alphacentauri20rev5/GenericMenu.template.php (body_above sub template - eval?)', 228),
(294, 1615299061, 7, '', '?action=profile;area=account;u=9', '2: Undefined array key &quot;active_button&quot;', 'c8117fd6e40c64d8b3d2f7111d39539f', 'undefined_vars', 'C:/xamppp/htdocs/forum/Themes/alphacentauri20rev5/GenericMenu.template.php (body_above sub template - eval?)', 227),
(295, 1615299061, 7, '', '?action=profile;area=account;u=9', '2: Undefined array key &quot;active_button&quot;', 'c8117fd6e40c64d8b3d2f7111d39539f', 'undefined_vars', 'C:/xamppp/htdocs/forum/Themes/alphacentauri20rev5/GenericMenu.template.php (body_above sub template - eval?)', 228),
(296, 1615299061, 7, '', '?action=profile;area=account;u=9', '2: Undefined array key &quot;active_button&quot;', 'c8117fd6e40c64d8b3d2f7111d39539f', 'undefined_vars', 'C:/xamppp/htdocs/forum/Themes/alphacentauri20rev5/GenericMenu.template.php (body_above sub template - eval?)', 227),
(297, 1615299061, 7, '', '?action=profile;area=account;u=9', '2: Undefined array key &quot;active_button&quot;', 'c8117fd6e40c64d8b3d2f7111d39539f', 'undefined_vars', 'C:/xamppp/htdocs/forum/Themes/alphacentauri20rev5/GenericMenu.template.php (body_above sub template - eval?)', 228),
(298, 1615299061, 7, '', '?action=profile;area=account;u=9', '2: Undefined array key &quot;active_button&quot;', 'c8117fd6e40c64d8b3d2f7111d39539f', 'undefined_vars', 'C:/xamppp/htdocs/forum/Themes/alphacentauri20rev5/GenericMenu.template.php (body_above sub template - eval?)', 227),
(299, 1615299061, 7, '', '?action=profile;area=account;u=9', '2: Undefined array key &quot;active_button&quot;', 'c8117fd6e40c64d8b3d2f7111d39539f', 'undefined_vars', 'C:/xamppp/htdocs/forum/Themes/alphacentauri20rev5/GenericMenu.template.php (body_above sub template - eval?)', 228),
(300, 1615299061, 7, '', '?action=profile;area=account;u=9', '2: Undefined array key &quot;active_button&quot;', 'c8117fd6e40c64d8b3d2f7111d39539f', 'undefined_vars', 'C:/xamppp/htdocs/forum/Themes/alphacentauri20rev5/GenericMenu.template.php (body_above sub template - eval?)', 227),
(301, 1615299061, 7, '', '?action=profile;area=account;u=9', '2: Undefined array key &quot;active_button&quot;', 'c8117fd6e40c64d8b3d2f7111d39539f', 'undefined_vars', 'C:/xamppp/htdocs/forum/Themes/alphacentauri20rev5/GenericMenu.template.php (body_above sub template - eval?)', 228),
(302, 1615299061, 7, '', '?action=profile;area=account;u=9', '2: Undefined array key &quot;active_button&quot;', 'c8117fd6e40c64d8b3d2f7111d39539f', 'undefined_vars', 'C:/xamppp/htdocs/forum/Themes/alphacentauri20rev5/GenericMenu.template.php (body_above sub template - eval?)', 227),
(303, 1615299061, 7, '', '?action=profile;area=account;u=9', '2: Undefined array key &quot;active_button&quot;', 'c8117fd6e40c64d8b3d2f7111d39539f', 'undefined_vars', 'C:/xamppp/htdocs/forum/Themes/alphacentauri20rev5/GenericMenu.template.php (body_above sub template - eval?)', 228),
(304, 1615299061, 7, '', '?action=profile;area=account;u=9', '2: Undefined array key &quot;active_button&quot;', 'c8117fd6e40c64d8b3d2f7111d39539f', 'undefined_vars', 'C:/xamppp/htdocs/forum/Themes/alphacentauri20rev5/GenericMenu.template.php (body_above sub template - eval?)', 227),
(305, 1615299061, 7, '', '?action=profile;area=account;u=9', '2: Undefined array key &quot;active_button&quot;', 'c8117fd6e40c64d8b3d2f7111d39539f', 'undefined_vars', 'C:/xamppp/htdocs/forum/Themes/alphacentauri20rev5/GenericMenu.template.php (body_above sub template - eval?)', 228),
(306, 1615299061, 7, '', '?action=profile;area=account;u=9', '2: Undefined array key &quot;active_button&quot;', 'c8117fd6e40c64d8b3d2f7111d39539f', 'undefined_vars', 'C:/xamppp/htdocs/forum/Themes/alphacentauri20rev5/GenericMenu.template.php (body_above sub template - eval?)', 227),
(307, 1615299061, 7, '', '?action=profile;area=account;u=9', '2: Undefined array key &quot;active_button&quot;', 'c8117fd6e40c64d8b3d2f7111d39539f', 'undefined_vars', 'C:/xamppp/htdocs/forum/Themes/alphacentauri20rev5/GenericMenu.template.php (body_above sub template - eval?)', 228),
(308, 1615299061, 7, '', '?action=profile;area=account;u=9', '2: Undefined array key &quot;active_button&quot;', 'c8117fd6e40c64d8b3d2f7111d39539f', 'undefined_vars', 'C:/xamppp/htdocs/forum/Themes/alphacentauri20rev5/GenericMenu.template.php (body_above sub template - eval?)', 227),
(309, 1615299061, 7, '', '?action=profile;area=account;u=9', '2: Undefined array key &quot;active_button&quot;', 'c8117fd6e40c64d8b3d2f7111d39539f', 'undefined_vars', 'C:/xamppp/htdocs/forum/Themes/alphacentauri20rev5/GenericMenu.template.php (body_above sub template - eval?)', 228),
(310, 1615299061, 7, '', '?action=profile;area=account;u=9', '2: Undefined array key &quot;active_button&quot;', 'c8117fd6e40c64d8b3d2f7111d39539f', 'undefined_vars', 'C:/xamppp/htdocs/forum/Themes/alphacentauri20rev5/GenericMenu.template.php (body_above sub template - eval?)', 227),
(311, 1615299061, 7, '', '?action=profile;area=account;u=9', '2: Undefined array key &quot;active_button&quot;', 'c8117fd6e40c64d8b3d2f7111d39539f', 'undefined_vars', 'C:/xamppp/htdocs/forum/Themes/alphacentauri20rev5/GenericMenu.template.php (body_above sub template - eval?)', 228),
(312, 1615299061, 7, '', '?action=profile;area=account;u=9', '2: Undefined array key &quot;active_button&quot;', 'c8117fd6e40c64d8b3d2f7111d39539f', 'undefined_vars', 'C:/xamppp/htdocs/forum/Themes/alphacentauri20rev5/GenericMenu.template.php (body_above sub template - eval?)', 227),
(313, 1615299061, 7, '', '?action=profile;area=account;u=9', '2: Undefined array key &quot;active_button&quot;', 'c8117fd6e40c64d8b3d2f7111d39539f', 'undefined_vars', 'C:/xamppp/htdocs/forum/Themes/alphacentauri20rev5/GenericMenu.template.php (body_above sub template - eval?)', 228),
(314, 1615299061, 7, '', '?action=profile;area=account;u=9', '2: Undefined array key &quot;active_button&quot;', 'c8117fd6e40c64d8b3d2f7111d39539f', 'undefined_vars', 'C:/xamppp/htdocs/forum/Themes/alphacentauri20rev5/GenericMenu.template.php (body_above sub template - eval?)', 227),
(315, 1615299061, 7, '', '?action=profile;area=account;u=9', '2: Undefined array key &quot;active_button&quot;', 'c8117fd6e40c64d8b3d2f7111d39539f', 'undefined_vars', 'C:/xamppp/htdocs/forum/Themes/alphacentauri20rev5/GenericMenu.template.php (body_above sub template - eval?)', 228),
(316, 1615299082, 7, '', '?action=mlist', '2: Undefined array key &quot;active_button&quot;', 'c8117fd6e40c64d8b3d2f7111d39539f', 'undefined_vars', 'C:/xamppp/htdocs/forum/Themes/default/Memberlist.template.php (body_above sub template - eval?)', 227),
(317, 1615299082, 7, '', '?action=mlist', '2: Undefined array key &quot;active_button&quot;', 'c8117fd6e40c64d8b3d2f7111d39539f', 'undefined_vars', 'C:/xamppp/htdocs/forum/Themes/default/Memberlist.template.php (body_above sub template - eval?)', 228),
(318, 1615299082, 7, '', '?action=mlist', '2: Undefined array key &quot;active_button&quot;', 'c8117fd6e40c64d8b3d2f7111d39539f', 'undefined_vars', 'C:/xamppp/htdocs/forum/Themes/default/Memberlist.template.php (body_above sub template - eval?)', 227),
(319, 1615299082, 7, '', '?action=mlist', '2: Undefined array key &quot;active_button&quot;', 'c8117fd6e40c64d8b3d2f7111d39539f', 'undefined_vars', 'C:/xamppp/htdocs/forum/Themes/default/Memberlist.template.php (body_above sub template - eval?)', 228),
(320, 1615299082, 7, '', '?action=mlist', '2: Undefined array key &quot;active_button&quot;', 'c8117fd6e40c64d8b3d2f7111d39539f', 'undefined_vars', 'C:/xamppp/htdocs/forum/Themes/default/Memberlist.template.php (body_above sub template - eval?)', 227),
(321, 1615299082, 7, '', '?action=mlist', '2: Undefined array key &quot;active_button&quot;', 'c8117fd6e40c64d8b3d2f7111d39539f', 'undefined_vars', 'C:/xamppp/htdocs/forum/Themes/default/Memberlist.template.php (body_above sub template - eval?)', 228),
(322, 1615299082, 7, '', '?action=mlist', '2: Undefined array key &quot;active_button&quot;', 'c8117fd6e40c64d8b3d2f7111d39539f', 'undefined_vars', 'C:/xamppp/htdocs/forum/Themes/default/Memberlist.template.php (body_above sub template - eval?)', 227),
(323, 1615299082, 7, '', '?action=mlist', '2: Undefined array key &quot;active_button&quot;', 'c8117fd6e40c64d8b3d2f7111d39539f', 'undefined_vars', 'C:/xamppp/htdocs/forum/Themes/default/Memberlist.template.php (body_above sub template - eval?)', 228),
(324, 1615299082, 7, '', '?action=mlist', '2: Undefined array key &quot;active_button&quot;', 'c8117fd6e40c64d8b3d2f7111d39539f', 'undefined_vars', 'C:/xamppp/htdocs/forum/Themes/default/Memberlist.template.php (body_above sub template - eval?)', 227),
(325, 1615299082, 7, '', '?action=mlist', '2: Undefined array key &quot;active_button&quot;', 'c8117fd6e40c64d8b3d2f7111d39539f', 'undefined_vars', 'C:/xamppp/htdocs/forum/Themes/default/Memberlist.template.php (body_above sub template - eval?)', 228),
(326, 1615299082, 7, '', '?action=mlist', '2: Undefined array key &quot;active_button&quot;', 'c8117fd6e40c64d8b3d2f7111d39539f', 'undefined_vars', 'C:/xamppp/htdocs/forum/Themes/default/Memberlist.template.php (body_above sub template - eval?)', 227),
(327, 1615299082, 7, '', '?action=mlist', '2: Undefined array key &quot;active_button&quot;', 'c8117fd6e40c64d8b3d2f7111d39539f', 'undefined_vars', 'C:/xamppp/htdocs/forum/Themes/default/Memberlist.template.php (body_above sub template - eval?)', 228),
(328, 1615299082, 7, '', '?action=mlist', '2: Undefined array key &quot;active_button&quot;', 'c8117fd6e40c64d8b3d2f7111d39539f', 'undefined_vars', 'C:/xamppp/htdocs/forum/Themes/default/Memberlist.template.php (body_above sub template - eval?)', 227),
(329, 1615299082, 7, '', '?action=mlist', '2: Undefined array key &quot;active_button&quot;', 'c8117fd6e40c64d8b3d2f7111d39539f', 'undefined_vars', 'C:/xamppp/htdocs/forum/Themes/default/Memberlist.template.php (body_above sub template - eval?)', 228),
(330, 1615299082, 7, '', '?action=mlist', '2: Undefined array key &quot;active_button&quot;', 'c8117fd6e40c64d8b3d2f7111d39539f', 'undefined_vars', 'C:/xamppp/htdocs/forum/Themes/default/Memberlist.template.php (body_above sub template - eval?)', 227),
(331, 1615299082, 7, '', '?action=mlist', '2: Undefined array key &quot;active_button&quot;', 'c8117fd6e40c64d8b3d2f7111d39539f', 'undefined_vars', 'C:/xamppp/htdocs/forum/Themes/default/Memberlist.template.php (body_above sub template - eval?)', 228),
(332, 1615299082, 7, '', '?action=mlist', '2: Undefined array key &quot;active_button&quot;', 'c8117fd6e40c64d8b3d2f7111d39539f', 'undefined_vars', 'C:/xamppp/htdocs/forum/Themes/default/Memberlist.template.php (body_above sub template - eval?)', 227),
(333, 1615299082, 7, '', '?action=mlist', '2: Undefined array key &quot;active_button&quot;', 'c8117fd6e40c64d8b3d2f7111d39539f', 'undefined_vars', 'C:/xamppp/htdocs/forum/Themes/default/Memberlist.template.php (body_above sub template - eval?)', 228),
(334, 1615299082, 7, '', '?action=mlist', '2: Undefined array key &quot;active_button&quot;', 'c8117fd6e40c64d8b3d2f7111d39539f', 'undefined_vars', 'C:/xamppp/htdocs/forum/Themes/default/Memberlist.template.php (body_above sub template - eval?)', 227),
(335, 1615299082, 7, '', '?action=mlist', '2: Undefined array key &quot;active_button&quot;', 'c8117fd6e40c64d8b3d2f7111d39539f', 'undefined_vars', 'C:/xamppp/htdocs/forum/Themes/default/Memberlist.template.php (body_above sub template - eval?)', 228),
(336, 1615299082, 7, '', '?action=mlist', '2: Undefined array key &quot;active_button&quot;', 'c8117fd6e40c64d8b3d2f7111d39539f', 'undefined_vars', 'C:/xamppp/htdocs/forum/Themes/default/Memberlist.template.php (body_above sub template - eval?)', 227),
(337, 1615299082, 7, '', '?action=mlist', '2: Undefined array key &quot;active_button&quot;', 'c8117fd6e40c64d8b3d2f7111d39539f', 'undefined_vars', 'C:/xamppp/htdocs/forum/Themes/default/Memberlist.template.php (body_above sub template - eval?)', 228),
(338, 1615299082, 7, '', '?action=mlist', '2: Undefined array key &quot;active_button&quot;', 'c8117fd6e40c64d8b3d2f7111d39539f', 'undefined_vars', 'C:/xamppp/htdocs/forum/Themes/default/Memberlist.template.php (body_above sub template - eval?)', 227),
(339, 1615299082, 7, '', '?action=mlist', '2: Undefined array key &quot;active_button&quot;', 'c8117fd6e40c64d8b3d2f7111d39539f', 'undefined_vars', 'C:/xamppp/htdocs/forum/Themes/default/Memberlist.template.php (body_above sub template - eval?)', 228),
(340, 1615299086, 7, '', '?action=profile;u=10', '2: Undefined array key &quot;active_button&quot;', 'c8117fd6e40c64d8b3d2f7111d39539f', 'undefined_vars', 'C:/xamppp/htdocs/forum/Themes/default/languages/Who.portuguese_brazilian-utf8.php (body_above sub template - eval?)', 227),
(341, 1615299086, 7, '', '?action=profile;u=10', '2: Undefined array key &quot;active_button&quot;', 'c8117fd6e40c64d8b3d2f7111d39539f', 'undefined_vars', 'C:/xamppp/htdocs/forum/Themes/default/languages/Who.portuguese_brazilian-utf8.php (body_above sub template - eval?)', 228),
(342, 1615299086, 7, '', '?action=profile;u=10', '2: Undefined array key &quot;active_button&quot;', 'c8117fd6e40c64d8b3d2f7111d39539f', 'undefined_vars', 'C:/xamppp/htdocs/forum/Themes/default/languages/Who.portuguese_brazilian-utf8.php (body_above sub template - eval?)', 227),
(343, 1615299086, 7, '', '?action=profile;u=10', '2: Undefined array key &quot;active_button&quot;', 'c8117fd6e40c64d8b3d2f7111d39539f', 'undefined_vars', 'C:/xamppp/htdocs/forum/Themes/default/languages/Who.portuguese_brazilian-utf8.php (body_above sub template - eval?)', 228),
(344, 1615299086, 7, '', '?action=profile;u=10', '2: Undefined array key &quot;active_button&quot;', 'c8117fd6e40c64d8b3d2f7111d39539f', 'undefined_vars', 'C:/xamppp/htdocs/forum/Themes/default/languages/Who.portuguese_brazilian-utf8.php (body_above sub template - eval?)', 227),
(345, 1615299086, 7, '', '?action=profile;u=10', '2: Undefined array key &quot;active_button&quot;', 'c8117fd6e40c64d8b3d2f7111d39539f', 'undefined_vars', 'C:/xamppp/htdocs/forum/Themes/default/languages/Who.portuguese_brazilian-utf8.php (body_above sub template - eval?)', 228),
(346, 1615299086, 7, '', '?action=profile;u=10', '2: Undefined array key &quot;active_button&quot;', 'c8117fd6e40c64d8b3d2f7111d39539f', 'undefined_vars', 'C:/xamppp/htdocs/forum/Themes/default/languages/Who.portuguese_brazilian-utf8.php (body_above sub template - eval?)', 227),
(347, 1615299086, 7, '', '?action=profile;u=10', '2: Undefined array key &quot;active_button&quot;', 'c8117fd6e40c64d8b3d2f7111d39539f', 'undefined_vars', 'C:/xamppp/htdocs/forum/Themes/default/languages/Who.portuguese_brazilian-utf8.php (body_above sub template - eval?)', 228),
(348, 1615299086, 7, '', '?action=profile;u=10', '2: Undefined array key &quot;active_button&quot;', 'c8117fd6e40c64d8b3d2f7111d39539f', 'undefined_vars', 'C:/xamppp/htdocs/forum/Themes/default/languages/Who.portuguese_brazilian-utf8.php (body_above sub template - eval?)', 227),
(349, 1615299086, 7, '', '?action=profile;u=10', '2: Undefined array key &quot;active_button&quot;', 'c8117fd6e40c64d8b3d2f7111d39539f', 'undefined_vars', 'C:/xamppp/htdocs/forum/Themes/default/languages/Who.portuguese_brazilian-utf8.php (body_above sub template - eval?)', 228),
(350, 1615299086, 7, '', '?action=profile;u=10', '2: Undefined array key &quot;active_button&quot;', 'c8117fd6e40c64d8b3d2f7111d39539f', 'undefined_vars', 'C:/xamppp/htdocs/forum/Themes/default/languages/Who.portuguese_brazilian-utf8.php (body_above sub template - eval?)', 227),
(351, 1615299086, 7, '', '?action=profile;u=10', '2: Undefined array key &quot;active_button&quot;', 'c8117fd6e40c64d8b3d2f7111d39539f', 'undefined_vars', 'C:/xamppp/htdocs/forum/Themes/default/languages/Who.portuguese_brazilian-utf8.php (body_above sub template - eval?)', 228),
(352, 1615299086, 7, '', '?action=profile;u=10', '2: Undefined array key &quot;active_button&quot;', 'c8117fd6e40c64d8b3d2f7111d39539f', 'undefined_vars', 'C:/xamppp/htdocs/forum/Themes/default/languages/Who.portuguese_brazilian-utf8.php (body_above sub template - eval?)', 227),
(353, 1615299086, 7, '', '?action=profile;u=10', '2: Undefined array key &quot;active_button&quot;', 'c8117fd6e40c64d8b3d2f7111d39539f', 'undefined_vars', 'C:/xamppp/htdocs/forum/Themes/default/languages/Who.portuguese_brazilian-utf8.php (body_above sub template - eval?)', 228),
(354, 1615299086, 7, '', '?action=profile;u=10', '2: Undefined array key &quot;active_button&quot;', 'c8117fd6e40c64d8b3d2f7111d39539f', 'undefined_vars', 'C:/xamppp/htdocs/forum/Themes/default/languages/Who.portuguese_brazilian-utf8.php (body_above sub template - eval?)', 227),
(355, 1615299086, 7, '', '?action=profile;u=10', '2: Undefined array key &quot;active_button&quot;', 'c8117fd6e40c64d8b3d2f7111d39539f', 'undefined_vars', 'C:/xamppp/htdocs/forum/Themes/default/languages/Who.portuguese_brazilian-utf8.php (body_above sub template - eval?)', 228),
(356, 1615299086, 7, '', '?action=profile;u=10', '2: Undefined array key &quot;active_button&quot;', 'c8117fd6e40c64d8b3d2f7111d39539f', 'undefined_vars', 'C:/xamppp/htdocs/forum/Themes/default/languages/Who.portuguese_brazilian-utf8.php (body_above sub template - eval?)', 227),
(357, 1615299086, 7, '', '?action=profile;u=10', '2: Undefined array key &quot;active_button&quot;', 'c8117fd6e40c64d8b3d2f7111d39539f', 'undefined_vars', 'C:/xamppp/htdocs/forum/Themes/default/languages/Who.portuguese_brazilian-utf8.php (body_above sub template - eval?)', 228),
(358, 1615299086, 7, '', '?action=profile;u=10', '2: Undefined array key &quot;active_button&quot;', 'c8117fd6e40c64d8b3d2f7111d39539f', 'undefined_vars', 'C:/xamppp/htdocs/forum/Themes/default/languages/Who.portuguese_brazilian-utf8.php (body_above sub template - eval?)', 227),
(359, 1615299086, 7, '', '?action=profile;u=10', '2: Undefined array key &quot;active_button&quot;', 'c8117fd6e40c64d8b3d2f7111d39539f', 'undefined_vars', 'C:/xamppp/htdocs/forum/Themes/default/languages/Who.portuguese_brazilian-utf8.php (body_above sub template - eval?)', 228),
(360, 1615299086, 7, '', '?action=profile;u=10', '2: Undefined array key &quot;active_button&quot;', 'c8117fd6e40c64d8b3d2f7111d39539f', 'undefined_vars', 'C:/xamppp/htdocs/forum/Themes/default/languages/Who.portuguese_brazilian-utf8.php (body_above sub template - eval?)', 227),
(361, 1615299086, 7, '', '?action=profile;u=10', '2: Undefined array key &quot;active_button&quot;', 'c8117fd6e40c64d8b3d2f7111d39539f', 'undefined_vars', 'C:/xamppp/htdocs/forum/Themes/default/languages/Who.portuguese_brazilian-utf8.php (body_above sub template - eval?)', 228),
(362, 1615299086, 7, '', '?action=profile;u=10', '2: Undefined array key &quot;active_button&quot;', 'c8117fd6e40c64d8b3d2f7111d39539f', 'undefined_vars', 'C:/xamppp/htdocs/forum/Themes/default/languages/Who.portuguese_brazilian-utf8.php (body_above sub template - eval?)', 227),
(363, 1615299086, 7, '', '?action=profile;u=10', '2: Undefined array key &quot;active_button&quot;', 'c8117fd6e40c64d8b3d2f7111d39539f', 'undefined_vars', 'C:/xamppp/htdocs/forum/Themes/default/languages/Who.portuguese_brazilian-utf8.php (body_above sub template - eval?)', 228),
(364, 1615299091, 7, '', '?action=profile;area=account;u=10', '2: Undefined array key &quot;active_button&quot;', 'c8117fd6e40c64d8b3d2f7111d39539f', 'undefined_vars', 'C:/xamppp/htdocs/forum/Themes/alphacentauri20rev5/GenericMenu.template.php (body_above sub template - eval?)', 227),
(365, 1615299091, 7, '', '?action=profile;area=account;u=10', '2: Undefined array key &quot;active_button&quot;', 'c8117fd6e40c64d8b3d2f7111d39539f', 'undefined_vars', 'C:/xamppp/htdocs/forum/Themes/alphacentauri20rev5/GenericMenu.template.php (body_above sub template - eval?)', 228),
(366, 1615299091, 7, '', '?action=profile;area=account;u=10', '2: Undefined array key &quot;active_button&quot;', 'c8117fd6e40c64d8b3d2f7111d39539f', 'undefined_vars', 'C:/xamppp/htdocs/forum/Themes/alphacentauri20rev5/GenericMenu.template.php (body_above sub template - eval?)', 227),
(367, 1615299091, 7, '', '?action=profile;area=account;u=10', '2: Undefined array key &quot;active_button&quot;', 'c8117fd6e40c64d8b3d2f7111d39539f', 'undefined_vars', 'C:/xamppp/htdocs/forum/Themes/alphacentauri20rev5/GenericMenu.template.php (body_above sub template - eval?)', 228),
(368, 1615299091, 7, '', '?action=profile;area=account;u=10', '2: Undefined array key &quot;active_button&quot;', 'c8117fd6e40c64d8b3d2f7111d39539f', 'undefined_vars', 'C:/xamppp/htdocs/forum/Themes/alphacentauri20rev5/GenericMenu.template.php (body_above sub template - eval?)', 227),
(369, 1615299091, 7, '', '?action=profile;area=account;u=10', '2: Undefined array key &quot;active_button&quot;', 'c8117fd6e40c64d8b3d2f7111d39539f', 'undefined_vars', 'C:/xamppp/htdocs/forum/Themes/alphacentauri20rev5/GenericMenu.template.php (body_above sub template - eval?)', 228),
(370, 1615299091, 7, '', '?action=profile;area=account;u=10', '2: Undefined array key &quot;active_button&quot;', 'c8117fd6e40c64d8b3d2f7111d39539f', 'undefined_vars', 'C:/xamppp/htdocs/forum/Themes/alphacentauri20rev5/GenericMenu.template.php (body_above sub template - eval?)', 227);
INSERT INTO `kzw_log_errors` (`id_error`, `log_time`, `id_member`, `ip`, `url`, `message`, `session`, `error_type`, `file`, `line`) VALUES
(371, 1615299091, 7, '', '?action=profile;area=account;u=10', '2: Undefined array key &quot;active_button&quot;', 'c8117fd6e40c64d8b3d2f7111d39539f', 'undefined_vars', 'C:/xamppp/htdocs/forum/Themes/alphacentauri20rev5/GenericMenu.template.php (body_above sub template - eval?)', 228),
(372, 1615299091, 7, '', '?action=profile;area=account;u=10', '2: Undefined array key &quot;active_button&quot;', 'c8117fd6e40c64d8b3d2f7111d39539f', 'undefined_vars', 'C:/xamppp/htdocs/forum/Themes/alphacentauri20rev5/GenericMenu.template.php (body_above sub template - eval?)', 227),
(373, 1615299091, 7, '', '?action=profile;area=account;u=10', '2: Undefined array key &quot;active_button&quot;', 'c8117fd6e40c64d8b3d2f7111d39539f', 'undefined_vars', 'C:/xamppp/htdocs/forum/Themes/alphacentauri20rev5/GenericMenu.template.php (body_above sub template - eval?)', 228),
(374, 1615299091, 7, '', '?action=profile;area=account;u=10', '2: Undefined array key &quot;active_button&quot;', 'c8117fd6e40c64d8b3d2f7111d39539f', 'undefined_vars', 'C:/xamppp/htdocs/forum/Themes/alphacentauri20rev5/GenericMenu.template.php (body_above sub template - eval?)', 227),
(375, 1615299091, 7, '', '?action=profile;area=account;u=10', '2: Undefined array key &quot;active_button&quot;', 'c8117fd6e40c64d8b3d2f7111d39539f', 'undefined_vars', 'C:/xamppp/htdocs/forum/Themes/alphacentauri20rev5/GenericMenu.template.php (body_above sub template - eval?)', 228),
(376, 1615299091, 7, '', '?action=profile;area=account;u=10', '2: Undefined array key &quot;active_button&quot;', 'c8117fd6e40c64d8b3d2f7111d39539f', 'undefined_vars', 'C:/xamppp/htdocs/forum/Themes/alphacentauri20rev5/GenericMenu.template.php (body_above sub template - eval?)', 227),
(377, 1615299091, 7, '', '?action=profile;area=account;u=10', '2: Undefined array key &quot;active_button&quot;', 'c8117fd6e40c64d8b3d2f7111d39539f', 'undefined_vars', 'C:/xamppp/htdocs/forum/Themes/alphacentauri20rev5/GenericMenu.template.php (body_above sub template - eval?)', 228),
(378, 1615299092, 7, '', '?action=profile;area=account;u=10', '2: Undefined array key &quot;active_button&quot;', 'c8117fd6e40c64d8b3d2f7111d39539f', 'undefined_vars', 'C:/xamppp/htdocs/forum/Themes/alphacentauri20rev5/GenericMenu.template.php (body_above sub template - eval?)', 227),
(379, 1615299092, 7, '', '?action=profile;area=account;u=10', '2: Undefined array key &quot;active_button&quot;', 'c8117fd6e40c64d8b3d2f7111d39539f', 'undefined_vars', 'C:/xamppp/htdocs/forum/Themes/alphacentauri20rev5/GenericMenu.template.php (body_above sub template - eval?)', 228),
(380, 1615299092, 7, '', '?action=profile;area=account;u=10', '2: Undefined array key &quot;active_button&quot;', 'c8117fd6e40c64d8b3d2f7111d39539f', 'undefined_vars', 'C:/xamppp/htdocs/forum/Themes/alphacentauri20rev5/GenericMenu.template.php (body_above sub template - eval?)', 227),
(381, 1615299092, 7, '', '?action=profile;area=account;u=10', '2: Undefined array key &quot;active_button&quot;', 'c8117fd6e40c64d8b3d2f7111d39539f', 'undefined_vars', 'C:/xamppp/htdocs/forum/Themes/alphacentauri20rev5/GenericMenu.template.php (body_above sub template - eval?)', 228),
(382, 1615299092, 7, '', '?action=profile;area=account;u=10', '2: Undefined array key &quot;active_button&quot;', 'c8117fd6e40c64d8b3d2f7111d39539f', 'undefined_vars', 'C:/xamppp/htdocs/forum/Themes/alphacentauri20rev5/GenericMenu.template.php (body_above sub template - eval?)', 227),
(383, 1615299092, 7, '', '?action=profile;area=account;u=10', '2: Undefined array key &quot;active_button&quot;', 'c8117fd6e40c64d8b3d2f7111d39539f', 'undefined_vars', 'C:/xamppp/htdocs/forum/Themes/alphacentauri20rev5/GenericMenu.template.php (body_above sub template - eval?)', 228),
(384, 1615299092, 7, '', '?action=profile;area=account;u=10', '2: Undefined array key &quot;active_button&quot;', 'c8117fd6e40c64d8b3d2f7111d39539f', 'undefined_vars', 'C:/xamppp/htdocs/forum/Themes/alphacentauri20rev5/GenericMenu.template.php (body_above sub template - eval?)', 227),
(385, 1615299092, 7, '', '?action=profile;area=account;u=10', '2: Undefined array key &quot;active_button&quot;', 'c8117fd6e40c64d8b3d2f7111d39539f', 'undefined_vars', 'C:/xamppp/htdocs/forum/Themes/alphacentauri20rev5/GenericMenu.template.php (body_above sub template - eval?)', 228),
(386, 1615299092, 7, '', '?action=profile;area=account;u=10', '2: Undefined array key &quot;active_button&quot;', 'c8117fd6e40c64d8b3d2f7111d39539f', 'undefined_vars', 'C:/xamppp/htdocs/forum/Themes/alphacentauri20rev5/GenericMenu.template.php (body_above sub template - eval?)', 227),
(387, 1615299092, 7, '', '?action=profile;area=account;u=10', '2: Undefined array key &quot;active_button&quot;', 'c8117fd6e40c64d8b3d2f7111d39539f', 'undefined_vars', 'C:/xamppp/htdocs/forum/Themes/alphacentauri20rev5/GenericMenu.template.php (body_above sub template - eval?)', 228),
(388, 1615299183, 7, '', '?action=manageboards', '2: Undefined array key &quot;active_button&quot;', 'c8117fd6e40c64d8b3d2f7111d39539f', 'undefined_vars', 'C:/xamppp/htdocs/forum/Themes/alphacentauri20rev5/BoardIndex.template.php (body_above sub template - eval?)', 227),
(389, 1615299183, 7, '', '?action=manageboards', '2: Undefined array key &quot;active_button&quot;', 'c8117fd6e40c64d8b3d2f7111d39539f', 'undefined_vars', 'C:/xamppp/htdocs/forum/Themes/alphacentauri20rev5/BoardIndex.template.php (body_above sub template - eval?)', 228),
(390, 1615299183, 7, '', '?action=manageboards', '2: Undefined array key &quot;active_button&quot;', 'c8117fd6e40c64d8b3d2f7111d39539f', 'undefined_vars', 'C:/xamppp/htdocs/forum/Themes/alphacentauri20rev5/BoardIndex.template.php (body_above sub template - eval?)', 227),
(391, 1615299183, 7, '', '?action=manageboards', '2: Undefined array key &quot;active_button&quot;', 'c8117fd6e40c64d8b3d2f7111d39539f', 'undefined_vars', 'C:/xamppp/htdocs/forum/Themes/alphacentauri20rev5/BoardIndex.template.php (body_above sub template - eval?)', 228),
(392, 1615299183, 7, '', '?action=manageboards', '2: Undefined array key &quot;active_button&quot;', 'c8117fd6e40c64d8b3d2f7111d39539f', 'undefined_vars', 'C:/xamppp/htdocs/forum/Themes/alphacentauri20rev5/BoardIndex.template.php (body_above sub template - eval?)', 227),
(393, 1615299183, 7, '', '?action=manageboards', '2: Undefined array key &quot;active_button&quot;', 'c8117fd6e40c64d8b3d2f7111d39539f', 'undefined_vars', 'C:/xamppp/htdocs/forum/Themes/alphacentauri20rev5/BoardIndex.template.php (body_above sub template - eval?)', 228),
(394, 1615299183, 7, '', '?action=manageboards', '2: Undefined array key &quot;active_button&quot;', 'c8117fd6e40c64d8b3d2f7111d39539f', 'undefined_vars', 'C:/xamppp/htdocs/forum/Themes/alphacentauri20rev5/BoardIndex.template.php (body_above sub template - eval?)', 227),
(395, 1615299183, 7, '', '?action=manageboards', '2: Undefined array key &quot;active_button&quot;', 'c8117fd6e40c64d8b3d2f7111d39539f', 'undefined_vars', 'C:/xamppp/htdocs/forum/Themes/alphacentauri20rev5/BoardIndex.template.php (body_above sub template - eval?)', 228),
(396, 1615299183, 7, '', '?action=manageboards', '2: Undefined array key &quot;active_button&quot;', 'c8117fd6e40c64d8b3d2f7111d39539f', 'undefined_vars', 'C:/xamppp/htdocs/forum/Themes/alphacentauri20rev5/BoardIndex.template.php (body_above sub template - eval?)', 227),
(397, 1615299183, 7, '', '?action=manageboards', '2: Undefined array key &quot;active_button&quot;', 'c8117fd6e40c64d8b3d2f7111d39539f', 'undefined_vars', 'C:/xamppp/htdocs/forum/Themes/alphacentauri20rev5/BoardIndex.template.php (body_above sub template - eval?)', 228),
(398, 1615299183, 7, '', '?action=manageboards', '2: Undefined array key &quot;active_button&quot;', 'c8117fd6e40c64d8b3d2f7111d39539f', 'undefined_vars', 'C:/xamppp/htdocs/forum/Themes/alphacentauri20rev5/BoardIndex.template.php (body_above sub template - eval?)', 227),
(399, 1615299183, 7, '', '?action=manageboards', '2: Undefined array key &quot;active_button&quot;', 'c8117fd6e40c64d8b3d2f7111d39539f', 'undefined_vars', 'C:/xamppp/htdocs/forum/Themes/alphacentauri20rev5/BoardIndex.template.php (body_above sub template - eval?)', 228),
(400, 1615299183, 7, '', '?action=manageboards', '2: Undefined array key &quot;active_button&quot;', 'c8117fd6e40c64d8b3d2f7111d39539f', 'undefined_vars', 'C:/xamppp/htdocs/forum/Themes/alphacentauri20rev5/BoardIndex.template.php (body_above sub template - eval?)', 227),
(401, 1615299183, 7, '', '?action=manageboards', '2: Undefined array key &quot;active_button&quot;', 'c8117fd6e40c64d8b3d2f7111d39539f', 'undefined_vars', 'C:/xamppp/htdocs/forum/Themes/alphacentauri20rev5/BoardIndex.template.php (body_above sub template - eval?)', 228),
(402, 1615299183, 7, '', '?action=manageboards', '2: Undefined array key &quot;active_button&quot;', 'c8117fd6e40c64d8b3d2f7111d39539f', 'undefined_vars', 'C:/xamppp/htdocs/forum/Themes/alphacentauri20rev5/BoardIndex.template.php (body_above sub template - eval?)', 227),
(403, 1615299183, 7, '', '?action=manageboards', '2: Undefined array key &quot;active_button&quot;', 'c8117fd6e40c64d8b3d2f7111d39539f', 'undefined_vars', 'C:/xamppp/htdocs/forum/Themes/alphacentauri20rev5/BoardIndex.template.php (body_above sub template - eval?)', 228),
(404, 1615299183, 7, '', '?action=manageboards', '2: Undefined array key &quot;active_button&quot;', 'c8117fd6e40c64d8b3d2f7111d39539f', 'undefined_vars', 'C:/xamppp/htdocs/forum/Themes/alphacentauri20rev5/BoardIndex.template.php (body_above sub template - eval?)', 227),
(405, 1615299183, 7, '', '?action=manageboards', '2: Undefined array key &quot;active_button&quot;', 'c8117fd6e40c64d8b3d2f7111d39539f', 'undefined_vars', 'C:/xamppp/htdocs/forum/Themes/alphacentauri20rev5/BoardIndex.template.php (body_above sub template - eval?)', 228),
(406, 1615299183, 7, '', '?action=manageboards', '2: Undefined array key &quot;active_button&quot;', 'c8117fd6e40c64d8b3d2f7111d39539f', 'undefined_vars', 'C:/xamppp/htdocs/forum/Themes/alphacentauri20rev5/BoardIndex.template.php (body_above sub template - eval?)', 227),
(407, 1615299183, 7, '', '?action=manageboards', '2: Undefined array key &quot;active_button&quot;', 'c8117fd6e40c64d8b3d2f7111d39539f', 'undefined_vars', 'C:/xamppp/htdocs/forum/Themes/alphacentauri20rev5/BoardIndex.template.php (body_above sub template - eval?)', 228),
(408, 1615299183, 7, '', '?action=manageboards', '2: Undefined array key &quot;active_button&quot;', 'c8117fd6e40c64d8b3d2f7111d39539f', 'undefined_vars', 'C:/xamppp/htdocs/forum/Themes/alphacentauri20rev5/BoardIndex.template.php (body_above sub template - eval?)', 227),
(409, 1615299183, 7, '', '?action=manageboards', '2: Undefined array key &quot;active_button&quot;', 'c8117fd6e40c64d8b3d2f7111d39539f', 'undefined_vars', 'C:/xamppp/htdocs/forum/Themes/alphacentauri20rev5/BoardIndex.template.php (body_above sub template - eval?)', 228),
(410, 1615299183, 7, '', '?action=manageboards', '2: Undefined array key &quot;active_button&quot;', 'c8117fd6e40c64d8b3d2f7111d39539f', 'undefined_vars', 'C:/xamppp/htdocs/forum/Themes/alphacentauri20rev5/BoardIndex.template.php (body_above sub template - eval?)', 227),
(411, 1615299183, 7, '', '?action=manageboards', '2: Undefined array key &quot;active_button&quot;', 'c8117fd6e40c64d8b3d2f7111d39539f', 'undefined_vars', 'C:/xamppp/htdocs/forum/Themes/alphacentauri20rev5/BoardIndex.template.php (body_above sub template - eval?)', 228),
(412, 1615299197, 7, '', '?action=admin;area=featuresettings', '2: Undefined array key &quot;active_button&quot;', 'c8117fd6e40c64d8b3d2f7111d39539f', 'undefined_vars', 'C:/xamppp/htdocs/forum/Themes/default/languages/Help.portuguese_brazilian-utf8.php (body_above sub template - eval?)', 227),
(413, 1615299197, 7, '', '?action=admin;area=featuresettings', '2: Undefined array key &quot;active_button&quot;', 'c8117fd6e40c64d8b3d2f7111d39539f', 'undefined_vars', 'C:/xamppp/htdocs/forum/Themes/default/languages/Help.portuguese_brazilian-utf8.php (body_above sub template - eval?)', 228),
(414, 1615299197, 7, '', '?action=admin;area=featuresettings', '2: Undefined array key &quot;active_button&quot;', 'c8117fd6e40c64d8b3d2f7111d39539f', 'undefined_vars', 'C:/xamppp/htdocs/forum/Themes/default/languages/Help.portuguese_brazilian-utf8.php (body_above sub template - eval?)', 227),
(415, 1615299197, 7, '', '?action=admin;area=featuresettings', '2: Undefined array key &quot;active_button&quot;', 'c8117fd6e40c64d8b3d2f7111d39539f', 'undefined_vars', 'C:/xamppp/htdocs/forum/Themes/default/languages/Help.portuguese_brazilian-utf8.php (body_above sub template - eval?)', 228),
(416, 1615299197, 7, '', '?action=admin;area=featuresettings', '2: Undefined array key &quot;active_button&quot;', 'c8117fd6e40c64d8b3d2f7111d39539f', 'undefined_vars', 'C:/xamppp/htdocs/forum/Themes/default/languages/Help.portuguese_brazilian-utf8.php (body_above sub template - eval?)', 227),
(417, 1615299197, 7, '', '?action=admin;area=featuresettings', '2: Undefined array key &quot;active_button&quot;', 'c8117fd6e40c64d8b3d2f7111d39539f', 'undefined_vars', 'C:/xamppp/htdocs/forum/Themes/default/languages/Help.portuguese_brazilian-utf8.php (body_above sub template - eval?)', 228),
(418, 1615299197, 7, '', '?action=admin;area=featuresettings', '2: Undefined array key &quot;active_button&quot;', 'c8117fd6e40c64d8b3d2f7111d39539f', 'undefined_vars', 'C:/xamppp/htdocs/forum/Themes/default/languages/Help.portuguese_brazilian-utf8.php (body_above sub template - eval?)', 227),
(419, 1615299197, 7, '', '?action=admin;area=featuresettings', '2: Undefined array key &quot;active_button&quot;', 'c8117fd6e40c64d8b3d2f7111d39539f', 'undefined_vars', 'C:/xamppp/htdocs/forum/Themes/default/languages/Help.portuguese_brazilian-utf8.php (body_above sub template - eval?)', 228),
(420, 1615299197, 7, '', '?action=admin;area=featuresettings', '2: Undefined array key &quot;active_button&quot;', 'c8117fd6e40c64d8b3d2f7111d39539f', 'undefined_vars', 'C:/xamppp/htdocs/forum/Themes/default/languages/Help.portuguese_brazilian-utf8.php (body_above sub template - eval?)', 227),
(421, 1615299197, 7, '', '?action=admin;area=featuresettings', '2: Undefined array key &quot;active_button&quot;', 'c8117fd6e40c64d8b3d2f7111d39539f', 'undefined_vars', 'C:/xamppp/htdocs/forum/Themes/default/languages/Help.portuguese_brazilian-utf8.php (body_above sub template - eval?)', 228),
(422, 1615299197, 7, '', '?action=admin;area=featuresettings', '2: Undefined array key &quot;active_button&quot;', 'c8117fd6e40c64d8b3d2f7111d39539f', 'undefined_vars', 'C:/xamppp/htdocs/forum/Themes/default/languages/Help.portuguese_brazilian-utf8.php (body_above sub template - eval?)', 227),
(423, 1615299197, 7, '', '?action=admin;area=featuresettings', '2: Undefined array key &quot;active_button&quot;', 'c8117fd6e40c64d8b3d2f7111d39539f', 'undefined_vars', 'C:/xamppp/htdocs/forum/Themes/default/languages/Help.portuguese_brazilian-utf8.php (body_above sub template - eval?)', 228),
(424, 1615299197, 7, '', '?action=admin;area=featuresettings', '2: Undefined array key &quot;active_button&quot;', 'c8117fd6e40c64d8b3d2f7111d39539f', 'undefined_vars', 'C:/xamppp/htdocs/forum/Themes/default/languages/Help.portuguese_brazilian-utf8.php (body_above sub template - eval?)', 227),
(425, 1615299197, 7, '', '?action=admin;area=featuresettings', '2: Undefined array key &quot;active_button&quot;', 'c8117fd6e40c64d8b3d2f7111d39539f', 'undefined_vars', 'C:/xamppp/htdocs/forum/Themes/default/languages/Help.portuguese_brazilian-utf8.php (body_above sub template - eval?)', 228),
(426, 1615299197, 7, '', '?action=admin;area=featuresettings', '2: Undefined array key &quot;active_button&quot;', 'c8117fd6e40c64d8b3d2f7111d39539f', 'undefined_vars', 'C:/xamppp/htdocs/forum/Themes/default/languages/Help.portuguese_brazilian-utf8.php (body_above sub template - eval?)', 227),
(427, 1615299197, 7, '', '?action=admin;area=featuresettings', '2: Undefined array key &quot;active_button&quot;', 'c8117fd6e40c64d8b3d2f7111d39539f', 'undefined_vars', 'C:/xamppp/htdocs/forum/Themes/default/languages/Help.portuguese_brazilian-utf8.php (body_above sub template - eval?)', 228),
(428, 1615299197, 7, '', '?action=admin;area=featuresettings', '2: Undefined array key &quot;active_button&quot;', 'c8117fd6e40c64d8b3d2f7111d39539f', 'undefined_vars', 'C:/xamppp/htdocs/forum/Themes/default/languages/Help.portuguese_brazilian-utf8.php (body_above sub template - eval?)', 227),
(429, 1615299197, 7, '', '?action=admin;area=featuresettings', '2: Undefined array key &quot;active_button&quot;', 'c8117fd6e40c64d8b3d2f7111d39539f', 'undefined_vars', 'C:/xamppp/htdocs/forum/Themes/default/languages/Help.portuguese_brazilian-utf8.php (body_above sub template - eval?)', 228),
(430, 1615299197, 7, '', '?action=admin;area=featuresettings', '2: Undefined array key &quot;active_button&quot;', 'c8117fd6e40c64d8b3d2f7111d39539f', 'undefined_vars', 'C:/xamppp/htdocs/forum/Themes/default/languages/Help.portuguese_brazilian-utf8.php (body_above sub template - eval?)', 227),
(431, 1615299197, 7, '', '?action=admin;area=featuresettings', '2: Undefined array key &quot;active_button&quot;', 'c8117fd6e40c64d8b3d2f7111d39539f', 'undefined_vars', 'C:/xamppp/htdocs/forum/Themes/default/languages/Help.portuguese_brazilian-utf8.php (body_above sub template - eval?)', 228),
(432, 1615299197, 7, '', '?action=admin;area=featuresettings', '2: Undefined array key &quot;active_button&quot;', 'c8117fd6e40c64d8b3d2f7111d39539f', 'undefined_vars', 'C:/xamppp/htdocs/forum/Themes/default/languages/Help.portuguese_brazilian-utf8.php (body_above sub template - eval?)', 227),
(433, 1615299197, 7, '', '?action=admin;area=featuresettings', '2: Undefined array key &quot;active_button&quot;', 'c8117fd6e40c64d8b3d2f7111d39539f', 'undefined_vars', 'C:/xamppp/htdocs/forum/Themes/default/languages/Help.portuguese_brazilian-utf8.php (body_above sub template - eval?)', 228),
(434, 1615299197, 7, '', '?action=admin;area=featuresettings', '2: Undefined array key &quot;active_button&quot;', 'c8117fd6e40c64d8b3d2f7111d39539f', 'undefined_vars', 'C:/xamppp/htdocs/forum/Themes/default/languages/Help.portuguese_brazilian-utf8.php (body_above sub template - eval?)', 227),
(435, 1615299197, 7, '', '?action=admin;area=featuresettings', '2: Undefined array key &quot;active_button&quot;', 'c8117fd6e40c64d8b3d2f7111d39539f', 'undefined_vars', 'C:/xamppp/htdocs/forum/Themes/default/languages/Help.portuguese_brazilian-utf8.php (body_above sub template - eval?)', 228),
(436, 1615299207, 7, '', '?action=admin;area=membergroups;b00e726615=c8117fd6e40c64d8b3d2f7111d39539f', '2: Undefined array key &quot;active_button&quot;', 'c8117fd6e40c64d8b3d2f7111d39539f', 'undefined_vars', 'C:/xamppp/htdocs/forum/Themes/alphacentauri20rev5/GenericList.template.php (body_above sub template - eval?)', 227),
(437, 1615299207, 7, '', '?action=admin;area=membergroups;b00e726615=c8117fd6e40c64d8b3d2f7111d39539f', '2: Undefined array key &quot;active_button&quot;', 'c8117fd6e40c64d8b3d2f7111d39539f', 'undefined_vars', 'C:/xamppp/htdocs/forum/Themes/alphacentauri20rev5/GenericList.template.php (body_above sub template - eval?)', 228),
(438, 1615299207, 7, '', '?action=admin;area=membergroups;b00e726615=c8117fd6e40c64d8b3d2f7111d39539f', '2: Undefined array key &quot;active_button&quot;', 'c8117fd6e40c64d8b3d2f7111d39539f', 'undefined_vars', 'C:/xamppp/htdocs/forum/Themes/alphacentauri20rev5/GenericList.template.php (body_above sub template - eval?)', 227),
(439, 1615299207, 7, '', '?action=admin;area=membergroups;b00e726615=c8117fd6e40c64d8b3d2f7111d39539f', '2: Undefined array key &quot;active_button&quot;', 'c8117fd6e40c64d8b3d2f7111d39539f', 'undefined_vars', 'C:/xamppp/htdocs/forum/Themes/alphacentauri20rev5/GenericList.template.php (body_above sub template - eval?)', 228),
(440, 1615299207, 7, '', '?action=admin;area=membergroups;b00e726615=c8117fd6e40c64d8b3d2f7111d39539f', '2: Undefined array key &quot;active_button&quot;', 'c8117fd6e40c64d8b3d2f7111d39539f', 'undefined_vars', 'C:/xamppp/htdocs/forum/Themes/alphacentauri20rev5/GenericList.template.php (body_above sub template - eval?)', 227),
(441, 1615299207, 7, '', '?action=admin;area=membergroups;b00e726615=c8117fd6e40c64d8b3d2f7111d39539f', '2: Undefined array key &quot;active_button&quot;', 'c8117fd6e40c64d8b3d2f7111d39539f', 'undefined_vars', 'C:/xamppp/htdocs/forum/Themes/alphacentauri20rev5/GenericList.template.php (body_above sub template - eval?)', 228),
(442, 1615299207, 7, '', '?action=admin;area=membergroups;b00e726615=c8117fd6e40c64d8b3d2f7111d39539f', '2: Undefined array key &quot;active_button&quot;', 'c8117fd6e40c64d8b3d2f7111d39539f', 'undefined_vars', 'C:/xamppp/htdocs/forum/Themes/alphacentauri20rev5/GenericList.template.php (body_above sub template - eval?)', 227),
(443, 1615299207, 7, '', '?action=admin;area=membergroups;b00e726615=c8117fd6e40c64d8b3d2f7111d39539f', '2: Undefined array key &quot;active_button&quot;', 'c8117fd6e40c64d8b3d2f7111d39539f', 'undefined_vars', 'C:/xamppp/htdocs/forum/Themes/alphacentauri20rev5/GenericList.template.php (body_above sub template - eval?)', 228),
(444, 1615299207, 7, '', '?action=admin;area=membergroups;b00e726615=c8117fd6e40c64d8b3d2f7111d39539f', '2: Undefined array key &quot;active_button&quot;', 'c8117fd6e40c64d8b3d2f7111d39539f', 'undefined_vars', 'C:/xamppp/htdocs/forum/Themes/alphacentauri20rev5/GenericList.template.php (body_above sub template - eval?)', 227),
(445, 1615299207, 7, '', '?action=admin;area=membergroups;b00e726615=c8117fd6e40c64d8b3d2f7111d39539f', '2: Undefined array key &quot;active_button&quot;', 'c8117fd6e40c64d8b3d2f7111d39539f', 'undefined_vars', 'C:/xamppp/htdocs/forum/Themes/alphacentauri20rev5/GenericList.template.php (body_above sub template - eval?)', 228),
(446, 1615299207, 7, '', '?action=admin;area=membergroups;b00e726615=c8117fd6e40c64d8b3d2f7111d39539f', '2: Undefined array key &quot;active_button&quot;', 'c8117fd6e40c64d8b3d2f7111d39539f', 'undefined_vars', 'C:/xamppp/htdocs/forum/Themes/alphacentauri20rev5/GenericList.template.php (body_above sub template - eval?)', 227),
(447, 1615299207, 7, '', '?action=admin;area=membergroups;b00e726615=c8117fd6e40c64d8b3d2f7111d39539f', '2: Undefined array key &quot;active_button&quot;', 'c8117fd6e40c64d8b3d2f7111d39539f', 'undefined_vars', 'C:/xamppp/htdocs/forum/Themes/alphacentauri20rev5/GenericList.template.php (body_above sub template - eval?)', 228),
(448, 1615299207, 7, '', '?action=admin;area=membergroups;b00e726615=c8117fd6e40c64d8b3d2f7111d39539f', '2: Undefined array key &quot;active_button&quot;', 'c8117fd6e40c64d8b3d2f7111d39539f', 'undefined_vars', 'C:/xamppp/htdocs/forum/Themes/alphacentauri20rev5/GenericList.template.php (body_above sub template - eval?)', 227),
(449, 1615299207, 7, '', '?action=admin;area=membergroups;b00e726615=c8117fd6e40c64d8b3d2f7111d39539f', '2: Undefined array key &quot;active_button&quot;', 'c8117fd6e40c64d8b3d2f7111d39539f', 'undefined_vars', 'C:/xamppp/htdocs/forum/Themes/alphacentauri20rev5/GenericList.template.php (body_above sub template - eval?)', 228),
(450, 1615299207, 7, '', '?action=admin;area=membergroups;b00e726615=c8117fd6e40c64d8b3d2f7111d39539f', '2: Undefined array key &quot;active_button&quot;', 'c8117fd6e40c64d8b3d2f7111d39539f', 'undefined_vars', 'C:/xamppp/htdocs/forum/Themes/alphacentauri20rev5/GenericList.template.php (body_above sub template - eval?)', 227),
(451, 1615299207, 7, '', '?action=admin;area=membergroups;b00e726615=c8117fd6e40c64d8b3d2f7111d39539f', '2: Undefined array key &quot;active_button&quot;', 'c8117fd6e40c64d8b3d2f7111d39539f', 'undefined_vars', 'C:/xamppp/htdocs/forum/Themes/alphacentauri20rev5/GenericList.template.php (body_above sub template - eval?)', 228),
(452, 1615299207, 7, '', '?action=admin;area=membergroups;b00e726615=c8117fd6e40c64d8b3d2f7111d39539f', '2: Undefined array key &quot;active_button&quot;', 'c8117fd6e40c64d8b3d2f7111d39539f', 'undefined_vars', 'C:/xamppp/htdocs/forum/Themes/alphacentauri20rev5/GenericList.template.php (body_above sub template - eval?)', 227),
(453, 1615299207, 7, '', '?action=admin;area=membergroups;b00e726615=c8117fd6e40c64d8b3d2f7111d39539f', '2: Undefined array key &quot;active_button&quot;', 'c8117fd6e40c64d8b3d2f7111d39539f', 'undefined_vars', 'C:/xamppp/htdocs/forum/Themes/alphacentauri20rev5/GenericList.template.php (body_above sub template - eval?)', 228),
(454, 1615299207, 7, '', '?action=admin;area=membergroups;b00e726615=c8117fd6e40c64d8b3d2f7111d39539f', '2: Undefined array key &quot;active_button&quot;', 'c8117fd6e40c64d8b3d2f7111d39539f', 'undefined_vars', 'C:/xamppp/htdocs/forum/Themes/alphacentauri20rev5/GenericList.template.php (body_above sub template - eval?)', 227),
(455, 1615299207, 7, '', '?action=admin;area=membergroups;b00e726615=c8117fd6e40c64d8b3d2f7111d39539f', '2: Undefined array key &quot;active_button&quot;', 'c8117fd6e40c64d8b3d2f7111d39539f', 'undefined_vars', 'C:/xamppp/htdocs/forum/Themes/alphacentauri20rev5/GenericList.template.php (body_above sub template - eval?)', 228),
(456, 1615299207, 7, '', '?action=admin;area=membergroups;b00e726615=c8117fd6e40c64d8b3d2f7111d39539f', '2: Undefined array key &quot;active_button&quot;', 'c8117fd6e40c64d8b3d2f7111d39539f', 'undefined_vars', 'C:/xamppp/htdocs/forum/Themes/alphacentauri20rev5/GenericList.template.php (body_above sub template - eval?)', 227),
(457, 1615299207, 7, '', '?action=admin;area=membergroups;b00e726615=c8117fd6e40c64d8b3d2f7111d39539f', '2: Undefined array key &quot;active_button&quot;', 'c8117fd6e40c64d8b3d2f7111d39539f', 'undefined_vars', 'C:/xamppp/htdocs/forum/Themes/alphacentauri20rev5/GenericList.template.php (body_above sub template - eval?)', 228),
(458, 1615299207, 7, '', '?action=admin;area=membergroups;b00e726615=c8117fd6e40c64d8b3d2f7111d39539f', '2: Undefined array key &quot;active_button&quot;', 'c8117fd6e40c64d8b3d2f7111d39539f', 'undefined_vars', 'C:/xamppp/htdocs/forum/Themes/alphacentauri20rev5/GenericList.template.php (body_above sub template - eval?)', 227),
(459, 1615299207, 7, '', '?action=admin;area=membergroups;b00e726615=c8117fd6e40c64d8b3d2f7111d39539f', '2: Undefined array key &quot;active_button&quot;', 'c8117fd6e40c64d8b3d2f7111d39539f', 'undefined_vars', 'C:/xamppp/htdocs/forum/Themes/alphacentauri20rev5/GenericList.template.php (body_above sub template - eval?)', 228),
(460, 1615313409, 0, '', '?scheduled=task;ts=1615312260', 'Não foi possível recuperar o arquivo: https://www.simplemachines.org/smf/current-version.js?version=SMF+2.0.18.', '', 'general', '', 0),
(461, 1615313433, 0, '', '?action=login2', 'A senha está incorreta - &lt;span class=&quot;remove&quot;&gt;Tste_Ser&lt;/span&gt;', 'c6ded73fbb35aac42665210c1c5b9cb8', 'user', '', 0),
(462, 1615316793, 7, '', '?', '2: Undefined array key &quot;active_button&quot;', 'e3db1fc1ed0ea4f4b63f910d752ccb2e', 'undefined_vars', 'C:/xamppp/htdocs/forum/Themes/alphacentauri20rev5/BoardIndex.template.php (body_above sub template - eval?)', 227),
(463, 1615316793, 7, '', '?', '2: Undefined array key &quot;active_button&quot;', 'e3db1fc1ed0ea4f4b63f910d752ccb2e', 'undefined_vars', 'C:/xamppp/htdocs/forum/Themes/alphacentauri20rev5/BoardIndex.template.php (body_above sub template - eval?)', 228),
(464, 1615316793, 7, '', '?', '2: Undefined array key &quot;active_button&quot;', 'e3db1fc1ed0ea4f4b63f910d752ccb2e', 'undefined_vars', 'C:/xamppp/htdocs/forum/Themes/alphacentauri20rev5/BoardIndex.template.php (body_above sub template - eval?)', 227),
(465, 1615316793, 7, '', '?', '2: Undefined array key &quot;active_button&quot;', 'e3db1fc1ed0ea4f4b63f910d752ccb2e', 'undefined_vars', 'C:/xamppp/htdocs/forum/Themes/alphacentauri20rev5/BoardIndex.template.php (body_above sub template - eval?)', 228),
(466, 1615316793, 7, '', '?', '2: Undefined array key &quot;active_button&quot;', 'e3db1fc1ed0ea4f4b63f910d752ccb2e', 'undefined_vars', 'C:/xamppp/htdocs/forum/Themes/alphacentauri20rev5/BoardIndex.template.php (body_above sub template - eval?)', 227),
(467, 1615316793, 7, '', '?', '2: Undefined array key &quot;active_button&quot;', 'e3db1fc1ed0ea4f4b63f910d752ccb2e', 'undefined_vars', 'C:/xamppp/htdocs/forum/Themes/alphacentauri20rev5/BoardIndex.template.php (body_above sub template - eval?)', 228),
(468, 1615316793, 7, '', '?', '2: Undefined array key &quot;active_button&quot;', 'e3db1fc1ed0ea4f4b63f910d752ccb2e', 'undefined_vars', 'C:/xamppp/htdocs/forum/Themes/alphacentauri20rev5/BoardIndex.template.php (body_above sub template - eval?)', 227),
(469, 1615316793, 7, '', '?', '2: Undefined array key &quot;active_button&quot;', 'e3db1fc1ed0ea4f4b63f910d752ccb2e', 'undefined_vars', 'C:/xamppp/htdocs/forum/Themes/alphacentauri20rev5/BoardIndex.template.php (body_above sub template - eval?)', 228),
(470, 1615316793, 7, '', '?', '2: Undefined array key &quot;active_button&quot;', 'e3db1fc1ed0ea4f4b63f910d752ccb2e', 'undefined_vars', 'C:/xamppp/htdocs/forum/Themes/alphacentauri20rev5/BoardIndex.template.php (body_above sub template - eval?)', 227),
(471, 1615316793, 7, '', '?', '2: Undefined array key &quot;active_button&quot;', 'e3db1fc1ed0ea4f4b63f910d752ccb2e', 'undefined_vars', 'C:/xamppp/htdocs/forum/Themes/alphacentauri20rev5/BoardIndex.template.php (body_above sub template - eval?)', 228),
(472, 1615316793, 7, '', '?', '2: Undefined array key &quot;active_button&quot;', 'e3db1fc1ed0ea4f4b63f910d752ccb2e', 'undefined_vars', 'C:/xamppp/htdocs/forum/Themes/alphacentauri20rev5/BoardIndex.template.php (body_above sub template - eval?)', 227),
(473, 1615316793, 7, '', '?', '2: Undefined array key &quot;active_button&quot;', 'e3db1fc1ed0ea4f4b63f910d752ccb2e', 'undefined_vars', 'C:/xamppp/htdocs/forum/Themes/alphacentauri20rev5/BoardIndex.template.php (body_above sub template - eval?)', 228),
(474, 1615316793, 7, '', '?', '2: Undefined array key &quot;active_button&quot;', 'e3db1fc1ed0ea4f4b63f910d752ccb2e', 'undefined_vars', 'C:/xamppp/htdocs/forum/Themes/alphacentauri20rev5/BoardIndex.template.php (body_above sub template - eval?)', 227),
(475, 1615316793, 7, '', '?', '2: Undefined array key &quot;active_button&quot;', 'e3db1fc1ed0ea4f4b63f910d752ccb2e', 'undefined_vars', 'C:/xamppp/htdocs/forum/Themes/alphacentauri20rev5/BoardIndex.template.php (body_above sub template - eval?)', 228),
(476, 1615316793, 7, '', '?', '2: Undefined array key &quot;active_button&quot;', 'e3db1fc1ed0ea4f4b63f910d752ccb2e', 'undefined_vars', 'C:/xamppp/htdocs/forum/Themes/alphacentauri20rev5/BoardIndex.template.php (body_above sub template - eval?)', 227),
(477, 1615316793, 7, '', '?', '2: Undefined array key &quot;active_button&quot;', 'e3db1fc1ed0ea4f4b63f910d752ccb2e', 'undefined_vars', 'C:/xamppp/htdocs/forum/Themes/alphacentauri20rev5/BoardIndex.template.php (body_above sub template - eval?)', 228),
(478, 1615316793, 7, '', '?', '2: Undefined array key &quot;active_button&quot;', 'e3db1fc1ed0ea4f4b63f910d752ccb2e', 'undefined_vars', 'C:/xamppp/htdocs/forum/Themes/alphacentauri20rev5/BoardIndex.template.php (body_above sub template - eval?)', 227),
(479, 1615316793, 7, '', '?', '2: Undefined array key &quot;active_button&quot;', 'e3db1fc1ed0ea4f4b63f910d752ccb2e', 'undefined_vars', 'C:/xamppp/htdocs/forum/Themes/alphacentauri20rev5/BoardIndex.template.php (body_above sub template - eval?)', 228),
(480, 1615316793, 7, '', '?', '2: Undefined array key &quot;active_button&quot;', 'e3db1fc1ed0ea4f4b63f910d752ccb2e', 'undefined_vars', 'C:/xamppp/htdocs/forum/Themes/alphacentauri20rev5/BoardIndex.template.php (body_above sub template - eval?)', 227),
(481, 1615316793, 7, '', '?', '2: Undefined array key &quot;active_button&quot;', 'e3db1fc1ed0ea4f4b63f910d752ccb2e', 'undefined_vars', 'C:/xamppp/htdocs/forum/Themes/alphacentauri20rev5/BoardIndex.template.php (body_above sub template - eval?)', 228),
(482, 1615316793, 7, '', '?', '2: Undefined array key &quot;active_button&quot;', 'e3db1fc1ed0ea4f4b63f910d752ccb2e', 'undefined_vars', 'C:/xamppp/htdocs/forum/Themes/alphacentauri20rev5/BoardIndex.template.php (body_above sub template - eval?)', 227),
(483, 1615316793, 7, '', '?', '2: Undefined array key &quot;active_button&quot;', 'e3db1fc1ed0ea4f4b63f910d752ccb2e', 'undefined_vars', 'C:/xamppp/htdocs/forum/Themes/alphacentauri20rev5/BoardIndex.template.php (body_above sub template - eval?)', 228),
(484, 1615316793, 7, '', '?', '2: Undefined array key &quot;active_button&quot;', 'e3db1fc1ed0ea4f4b63f910d752ccb2e', 'undefined_vars', 'C:/xamppp/htdocs/forum/Themes/alphacentauri20rev5/BoardIndex.template.php (body_above sub template - eval?)', 227),
(485, 1615316793, 7, '', '?', '2: Undefined array key &quot;active_button&quot;', 'e3db1fc1ed0ea4f4b63f910d752ccb2e', 'undefined_vars', 'C:/xamppp/htdocs/forum/Themes/alphacentauri20rev5/BoardIndex.template.php (body_above sub template - eval?)', 228),
(486, 1615316802, 7, '', '?action=mlist', '2: Undefined array key &quot;active_button&quot;', 'e3db1fc1ed0ea4f4b63f910d752ccb2e', 'undefined_vars', 'C:/xamppp/htdocs/forum/Themes/default/Memberlist.template.php (body_above sub template - eval?)', 227),
(487, 1615316802, 7, '', '?action=mlist', '2: Undefined array key &quot;active_button&quot;', 'e3db1fc1ed0ea4f4b63f910d752ccb2e', 'undefined_vars', 'C:/xamppp/htdocs/forum/Themes/default/Memberlist.template.php (body_above sub template - eval?)', 228),
(488, 1615316802, 7, '', '?action=mlist', '2: Undefined array key &quot;active_button&quot;', 'e3db1fc1ed0ea4f4b63f910d752ccb2e', 'undefined_vars', 'C:/xamppp/htdocs/forum/Themes/default/Memberlist.template.php (body_above sub template - eval?)', 227),
(489, 1615316802, 7, '', '?action=mlist', '2: Undefined array key &quot;active_button&quot;', 'e3db1fc1ed0ea4f4b63f910d752ccb2e', 'undefined_vars', 'C:/xamppp/htdocs/forum/Themes/default/Memberlist.template.php (body_above sub template - eval?)', 228),
(490, 1615316802, 7, '', '?action=mlist', '2: Undefined array key &quot;active_button&quot;', 'e3db1fc1ed0ea4f4b63f910d752ccb2e', 'undefined_vars', 'C:/xamppp/htdocs/forum/Themes/default/Memberlist.template.php (body_above sub template - eval?)', 227),
(491, 1615316802, 7, '', '?action=mlist', '2: Undefined array key &quot;active_button&quot;', 'e3db1fc1ed0ea4f4b63f910d752ccb2e', 'undefined_vars', 'C:/xamppp/htdocs/forum/Themes/default/Memberlist.template.php (body_above sub template - eval?)', 228),
(492, 1615316802, 7, '', '?action=mlist', '2: Undefined array key &quot;active_button&quot;', 'e3db1fc1ed0ea4f4b63f910d752ccb2e', 'undefined_vars', 'C:/xamppp/htdocs/forum/Themes/default/Memberlist.template.php (body_above sub template - eval?)', 227),
(493, 1615316802, 7, '', '?action=mlist', '2: Undefined array key &quot;active_button&quot;', 'e3db1fc1ed0ea4f4b63f910d752ccb2e', 'undefined_vars', 'C:/xamppp/htdocs/forum/Themes/default/Memberlist.template.php (body_above sub template - eval?)', 228),
(494, 1615316802, 7, '', '?action=mlist', '2: Undefined array key &quot;active_button&quot;', 'e3db1fc1ed0ea4f4b63f910d752ccb2e', 'undefined_vars', 'C:/xamppp/htdocs/forum/Themes/default/Memberlist.template.php (body_above sub template - eval?)', 227),
(495, 1615316802, 7, '', '?action=mlist', '2: Undefined array key &quot;active_button&quot;', 'e3db1fc1ed0ea4f4b63f910d752ccb2e', 'undefined_vars', 'C:/xamppp/htdocs/forum/Themes/default/Memberlist.template.php (body_above sub template - eval?)', 228),
(496, 1615316802, 7, '', '?action=mlist', '2: Undefined array key &quot;active_button&quot;', 'e3db1fc1ed0ea4f4b63f910d752ccb2e', 'undefined_vars', 'C:/xamppp/htdocs/forum/Themes/default/Memberlist.template.php (body_above sub template - eval?)', 227),
(497, 1615316802, 7, '', '?action=mlist', '2: Undefined array key &quot;active_button&quot;', 'e3db1fc1ed0ea4f4b63f910d752ccb2e', 'undefined_vars', 'C:/xamppp/htdocs/forum/Themes/default/Memberlist.template.php (body_above sub template - eval?)', 228),
(498, 1615316802, 7, '', '?action=mlist', '2: Undefined array key &quot;active_button&quot;', 'e3db1fc1ed0ea4f4b63f910d752ccb2e', 'undefined_vars', 'C:/xamppp/htdocs/forum/Themes/default/Memberlist.template.php (body_above sub template - eval?)', 227),
(499, 1615316802, 7, '', '?action=mlist', '2: Undefined array key &quot;active_button&quot;', 'e3db1fc1ed0ea4f4b63f910d752ccb2e', 'undefined_vars', 'C:/xamppp/htdocs/forum/Themes/default/Memberlist.template.php (body_above sub template - eval?)', 228),
(500, 1615316802, 7, '', '?action=mlist', '2: Undefined array key &quot;active_button&quot;', 'e3db1fc1ed0ea4f4b63f910d752ccb2e', 'undefined_vars', 'C:/xamppp/htdocs/forum/Themes/default/Memberlist.template.php (body_above sub template - eval?)', 227),
(501, 1615316802, 7, '', '?action=mlist', '2: Undefined array key &quot;active_button&quot;', 'e3db1fc1ed0ea4f4b63f910d752ccb2e', 'undefined_vars', 'C:/xamppp/htdocs/forum/Themes/default/Memberlist.template.php (body_above sub template - eval?)', 228),
(502, 1615316802, 7, '', '?action=mlist', '2: Undefined array key &quot;active_button&quot;', 'e3db1fc1ed0ea4f4b63f910d752ccb2e', 'undefined_vars', 'C:/xamppp/htdocs/forum/Themes/default/Memberlist.template.php (body_above sub template - eval?)', 227),
(503, 1615316802, 7, '', '?action=mlist', '2: Undefined array key &quot;active_button&quot;', 'e3db1fc1ed0ea4f4b63f910d752ccb2e', 'undefined_vars', 'C:/xamppp/htdocs/forum/Themes/default/Memberlist.template.php (body_above sub template - eval?)', 228),
(504, 1615316802, 7, '', '?action=mlist', '2: Undefined array key &quot;active_button&quot;', 'e3db1fc1ed0ea4f4b63f910d752ccb2e', 'undefined_vars', 'C:/xamppp/htdocs/forum/Themes/default/Memberlist.template.php (body_above sub template - eval?)', 227),
(505, 1615316802, 7, '', '?action=mlist', '2: Undefined array key &quot;active_button&quot;', 'e3db1fc1ed0ea4f4b63f910d752ccb2e', 'undefined_vars', 'C:/xamppp/htdocs/forum/Themes/default/Memberlist.template.php (body_above sub template - eval?)', 228),
(506, 1615316802, 7, '', '?action=mlist', '2: Undefined array key &quot;active_button&quot;', 'e3db1fc1ed0ea4f4b63f910d752ccb2e', 'undefined_vars', 'C:/xamppp/htdocs/forum/Themes/default/Memberlist.template.php (body_above sub template - eval?)', 227),
(507, 1615316802, 7, '', '?action=mlist', '2: Undefined array key &quot;active_button&quot;', 'e3db1fc1ed0ea4f4b63f910d752ccb2e', 'undefined_vars', 'C:/xamppp/htdocs/forum/Themes/default/Memberlist.template.php (body_above sub template - eval?)', 228),
(508, 1615316802, 7, '', '?action=mlist', '2: Undefined array key &quot;active_button&quot;', 'e3db1fc1ed0ea4f4b63f910d752ccb2e', 'undefined_vars', 'C:/xamppp/htdocs/forum/Themes/default/Memberlist.template.php (body_above sub template - eval?)', 227),
(509, 1615316802, 7, '', '?action=mlist', '2: Undefined array key &quot;active_button&quot;', 'e3db1fc1ed0ea4f4b63f910d752ccb2e', 'undefined_vars', 'C:/xamppp/htdocs/forum/Themes/default/Memberlist.template.php (body_above sub template - eval?)', 228),
(510, 1615316824, 7, '', '?action=profile;u=17', '2: Undefined array key &quot;active_button&quot;', 'e3db1fc1ed0ea4f4b63f910d752ccb2e', 'undefined_vars', 'C:/xamppp/htdocs/forum/Themes/default/languages/Who.portuguese_brazilian-utf8.php (body_above sub template - eval?)', 227),
(511, 1615316824, 7, '', '?action=profile;u=17', '2: Undefined array key &quot;active_button&quot;', 'e3db1fc1ed0ea4f4b63f910d752ccb2e', 'undefined_vars', 'C:/xamppp/htdocs/forum/Themes/default/languages/Who.portuguese_brazilian-utf8.php (body_above sub template - eval?)', 228),
(512, 1615316824, 7, '', '?action=profile;u=17', '2: Undefined array key &quot;active_button&quot;', 'e3db1fc1ed0ea4f4b63f910d752ccb2e', 'undefined_vars', 'C:/xamppp/htdocs/forum/Themes/default/languages/Who.portuguese_brazilian-utf8.php (body_above sub template - eval?)', 227),
(513, 1615316824, 7, '', '?action=profile;u=17', '2: Undefined array key &quot;active_button&quot;', 'e3db1fc1ed0ea4f4b63f910d752ccb2e', 'undefined_vars', 'C:/xamppp/htdocs/forum/Themes/default/languages/Who.portuguese_brazilian-utf8.php (body_above sub template - eval?)', 228),
(514, 1615316824, 7, '', '?action=profile;u=17', '2: Undefined array key &quot;active_button&quot;', 'e3db1fc1ed0ea4f4b63f910d752ccb2e', 'undefined_vars', 'C:/xamppp/htdocs/forum/Themes/default/languages/Who.portuguese_brazilian-utf8.php (body_above sub template - eval?)', 227),
(515, 1615316824, 7, '', '?action=profile;u=17', '2: Undefined array key &quot;active_button&quot;', 'e3db1fc1ed0ea4f4b63f910d752ccb2e', 'undefined_vars', 'C:/xamppp/htdocs/forum/Themes/default/languages/Who.portuguese_brazilian-utf8.php (body_above sub template - eval?)', 228),
(516, 1615316824, 7, '', '?action=profile;u=17', '2: Undefined array key &quot;active_button&quot;', 'e3db1fc1ed0ea4f4b63f910d752ccb2e', 'undefined_vars', 'C:/xamppp/htdocs/forum/Themes/default/languages/Who.portuguese_brazilian-utf8.php (body_above sub template - eval?)', 227),
(517, 1615316824, 7, '', '?action=profile;u=17', '2: Undefined array key &quot;active_button&quot;', 'e3db1fc1ed0ea4f4b63f910d752ccb2e', 'undefined_vars', 'C:/xamppp/htdocs/forum/Themes/default/languages/Who.portuguese_brazilian-utf8.php (body_above sub template - eval?)', 228),
(518, 1615316824, 7, '', '?action=profile;u=17', '2: Undefined array key &quot;active_button&quot;', 'e3db1fc1ed0ea4f4b63f910d752ccb2e', 'undefined_vars', 'C:/xamppp/htdocs/forum/Themes/default/languages/Who.portuguese_brazilian-utf8.php (body_above sub template - eval?)', 227),
(519, 1615316824, 7, '', '?action=profile;u=17', '2: Undefined array key &quot;active_button&quot;', 'e3db1fc1ed0ea4f4b63f910d752ccb2e', 'undefined_vars', 'C:/xamppp/htdocs/forum/Themes/default/languages/Who.portuguese_brazilian-utf8.php (body_above sub template - eval?)', 228),
(520, 1615316824, 7, '', '?action=profile;u=17', '2: Undefined array key &quot;active_button&quot;', 'e3db1fc1ed0ea4f4b63f910d752ccb2e', 'undefined_vars', 'C:/xamppp/htdocs/forum/Themes/default/languages/Who.portuguese_brazilian-utf8.php (body_above sub template - eval?)', 227),
(521, 1615316824, 7, '', '?action=profile;u=17', '2: Undefined array key &quot;active_button&quot;', 'e3db1fc1ed0ea4f4b63f910d752ccb2e', 'undefined_vars', 'C:/xamppp/htdocs/forum/Themes/default/languages/Who.portuguese_brazilian-utf8.php (body_above sub template - eval?)', 228),
(522, 1615316824, 7, '', '?action=profile;u=17', '2: Undefined array key &quot;active_button&quot;', 'e3db1fc1ed0ea4f4b63f910d752ccb2e', 'undefined_vars', 'C:/xamppp/htdocs/forum/Themes/default/languages/Who.portuguese_brazilian-utf8.php (body_above sub template - eval?)', 227),
(523, 1615316824, 7, '', '?action=profile;u=17', '2: Undefined array key &quot;active_button&quot;', 'e3db1fc1ed0ea4f4b63f910d752ccb2e', 'undefined_vars', 'C:/xamppp/htdocs/forum/Themes/default/languages/Who.portuguese_brazilian-utf8.php (body_above sub template - eval?)', 228),
(524, 1615316824, 7, '', '?action=profile;u=17', '2: Undefined array key &quot;active_button&quot;', 'e3db1fc1ed0ea4f4b63f910d752ccb2e', 'undefined_vars', 'C:/xamppp/htdocs/forum/Themes/default/languages/Who.portuguese_brazilian-utf8.php (body_above sub template - eval?)', 227),
(525, 1615316824, 7, '', '?action=profile;u=17', '2: Undefined array key &quot;active_button&quot;', 'e3db1fc1ed0ea4f4b63f910d752ccb2e', 'undefined_vars', 'C:/xamppp/htdocs/forum/Themes/default/languages/Who.portuguese_brazilian-utf8.php (body_above sub template - eval?)', 228),
(526, 1615316824, 7, '', '?action=profile;u=17', '2: Undefined array key &quot;active_button&quot;', 'e3db1fc1ed0ea4f4b63f910d752ccb2e', 'undefined_vars', 'C:/xamppp/htdocs/forum/Themes/default/languages/Who.portuguese_brazilian-utf8.php (body_above sub template - eval?)', 227),
(527, 1615316824, 7, '', '?action=profile;u=17', '2: Undefined array key &quot;active_button&quot;', 'e3db1fc1ed0ea4f4b63f910d752ccb2e', 'undefined_vars', 'C:/xamppp/htdocs/forum/Themes/default/languages/Who.portuguese_brazilian-utf8.php (body_above sub template - eval?)', 228),
(528, 1615316824, 7, '', '?action=profile;u=17', '2: Undefined array key &quot;active_button&quot;', 'e3db1fc1ed0ea4f4b63f910d752ccb2e', 'undefined_vars', 'C:/xamppp/htdocs/forum/Themes/default/languages/Who.portuguese_brazilian-utf8.php (body_above sub template - eval?)', 227),
(529, 1615316824, 7, '', '?action=profile;u=17', '2: Undefined array key &quot;active_button&quot;', 'e3db1fc1ed0ea4f4b63f910d752ccb2e', 'undefined_vars', 'C:/xamppp/htdocs/forum/Themes/default/languages/Who.portuguese_brazilian-utf8.php (body_above sub template - eval?)', 228),
(530, 1615316824, 7, '', '?action=profile;u=17', '2: Undefined array key &quot;active_button&quot;', 'e3db1fc1ed0ea4f4b63f910d752ccb2e', 'undefined_vars', 'C:/xamppp/htdocs/forum/Themes/default/languages/Who.portuguese_brazilian-utf8.php (body_above sub template - eval?)', 227),
(531, 1615316824, 7, '', '?action=profile;u=17', '2: Undefined array key &quot;active_button&quot;', 'e3db1fc1ed0ea4f4b63f910d752ccb2e', 'undefined_vars', 'C:/xamppp/htdocs/forum/Themes/default/languages/Who.portuguese_brazilian-utf8.php (body_above sub template - eval?)', 228),
(532, 1615316824, 7, '', '?action=profile;u=17', '2: Undefined array key &quot;active_button&quot;', 'e3db1fc1ed0ea4f4b63f910d752ccb2e', 'undefined_vars', 'C:/xamppp/htdocs/forum/Themes/default/languages/Who.portuguese_brazilian-utf8.php (body_above sub template - eval?)', 227),
(533, 1615316824, 7, '', '?action=profile;u=17', '2: Undefined array key &quot;active_button&quot;', 'e3db1fc1ed0ea4f4b63f910d752ccb2e', 'undefined_vars', 'C:/xamppp/htdocs/forum/Themes/default/languages/Who.portuguese_brazilian-utf8.php (body_above sub template - eval?)', 228),
(534, 1615316827, 7, '', '?action=profile;area=account;u=17', '2: Undefined array key &quot;active_button&quot;', 'e3db1fc1ed0ea4f4b63f910d752ccb2e', 'undefined_vars', 'C:/xamppp/htdocs/forum/Themes/alphacentauri20rev5/GenericMenu.template.php (body_above sub template - eval?)', 227),
(535, 1615316827, 7, '', '?action=profile;area=account;u=17', '2: Undefined array key &quot;active_button&quot;', 'e3db1fc1ed0ea4f4b63f910d752ccb2e', 'undefined_vars', 'C:/xamppp/htdocs/forum/Themes/alphacentauri20rev5/GenericMenu.template.php (body_above sub template - eval?)', 228),
(536, 1615316827, 7, '', '?action=profile;area=account;u=17', '2: Undefined array key &quot;active_button&quot;', 'e3db1fc1ed0ea4f4b63f910d752ccb2e', 'undefined_vars', 'C:/xamppp/htdocs/forum/Themes/alphacentauri20rev5/GenericMenu.template.php (body_above sub template - eval?)', 227),
(537, 1615316827, 7, '', '?action=profile;area=account;u=17', '2: Undefined array key &quot;active_button&quot;', 'e3db1fc1ed0ea4f4b63f910d752ccb2e', 'undefined_vars', 'C:/xamppp/htdocs/forum/Themes/alphacentauri20rev5/GenericMenu.template.php (body_above sub template - eval?)', 228),
(538, 1615316827, 7, '', '?action=profile;area=account;u=17', '2: Undefined array key &quot;active_button&quot;', 'e3db1fc1ed0ea4f4b63f910d752ccb2e', 'undefined_vars', 'C:/xamppp/htdocs/forum/Themes/alphacentauri20rev5/GenericMenu.template.php (body_above sub template - eval?)', 227),
(539, 1615316827, 7, '', '?action=profile;area=account;u=17', '2: Undefined array key &quot;active_button&quot;', 'e3db1fc1ed0ea4f4b63f910d752ccb2e', 'undefined_vars', 'C:/xamppp/htdocs/forum/Themes/alphacentauri20rev5/GenericMenu.template.php (body_above sub template - eval?)', 228),
(540, 1615316827, 7, '', '?action=profile;area=account;u=17', '2: Undefined array key &quot;active_button&quot;', 'e3db1fc1ed0ea4f4b63f910d752ccb2e', 'undefined_vars', 'C:/xamppp/htdocs/forum/Themes/alphacentauri20rev5/GenericMenu.template.php (body_above sub template - eval?)', 227),
(541, 1615316827, 7, '', '?action=profile;area=account;u=17', '2: Undefined array key &quot;active_button&quot;', 'e3db1fc1ed0ea4f4b63f910d752ccb2e', 'undefined_vars', 'C:/xamppp/htdocs/forum/Themes/alphacentauri20rev5/GenericMenu.template.php (body_above sub template - eval?)', 228),
(542, 1615316827, 7, '', '?action=profile;area=account;u=17', '2: Undefined array key &quot;active_button&quot;', 'e3db1fc1ed0ea4f4b63f910d752ccb2e', 'undefined_vars', 'C:/xamppp/htdocs/forum/Themes/alphacentauri20rev5/GenericMenu.template.php (body_above sub template - eval?)', 227),
(543, 1615316827, 7, '', '?action=profile;area=account;u=17', '2: Undefined array key &quot;active_button&quot;', 'e3db1fc1ed0ea4f4b63f910d752ccb2e', 'undefined_vars', 'C:/xamppp/htdocs/forum/Themes/alphacentauri20rev5/GenericMenu.template.php (body_above sub template - eval?)', 228),
(544, 1615316827, 7, '', '?action=profile;area=account;u=17', '2: Undefined array key &quot;active_button&quot;', 'e3db1fc1ed0ea4f4b63f910d752ccb2e', 'undefined_vars', 'C:/xamppp/htdocs/forum/Themes/alphacentauri20rev5/GenericMenu.template.php (body_above sub template - eval?)', 227),
(545, 1615316827, 7, '', '?action=profile;area=account;u=17', '2: Undefined array key &quot;active_button&quot;', 'e3db1fc1ed0ea4f4b63f910d752ccb2e', 'undefined_vars', 'C:/xamppp/htdocs/forum/Themes/alphacentauri20rev5/GenericMenu.template.php (body_above sub template - eval?)', 228),
(546, 1615316827, 7, '', '?action=profile;area=account;u=17', '2: Undefined array key &quot;active_button&quot;', 'e3db1fc1ed0ea4f4b63f910d752ccb2e', 'undefined_vars', 'C:/xamppp/htdocs/forum/Themes/alphacentauri20rev5/GenericMenu.template.php (body_above sub template - eval?)', 227),
(547, 1615316827, 7, '', '?action=profile;area=account;u=17', '2: Undefined array key &quot;active_button&quot;', 'e3db1fc1ed0ea4f4b63f910d752ccb2e', 'undefined_vars', 'C:/xamppp/htdocs/forum/Themes/alphacentauri20rev5/GenericMenu.template.php (body_above sub template - eval?)', 228),
(548, 1615316827, 7, '', '?action=profile;area=account;u=17', '2: Undefined array key &quot;active_button&quot;', 'e3db1fc1ed0ea4f4b63f910d752ccb2e', 'undefined_vars', 'C:/xamppp/htdocs/forum/Themes/alphacentauri20rev5/GenericMenu.template.php (body_above sub template - eval?)', 227),
(549, 1615316827, 7, '', '?action=profile;area=account;u=17', '2: Undefined array key &quot;active_button&quot;', 'e3db1fc1ed0ea4f4b63f910d752ccb2e', 'undefined_vars', 'C:/xamppp/htdocs/forum/Themes/alphacentauri20rev5/GenericMenu.template.php (body_above sub template - eval?)', 228);
INSERT INTO `kzw_log_errors` (`id_error`, `log_time`, `id_member`, `ip`, `url`, `message`, `session`, `error_type`, `file`, `line`) VALUES
(550, 1615316827, 7, '', '?action=profile;area=account;u=17', '2: Undefined array key &quot;active_button&quot;', 'e3db1fc1ed0ea4f4b63f910d752ccb2e', 'undefined_vars', 'C:/xamppp/htdocs/forum/Themes/alphacentauri20rev5/GenericMenu.template.php (body_above sub template - eval?)', 227),
(551, 1615316827, 7, '', '?action=profile;area=account;u=17', '2: Undefined array key &quot;active_button&quot;', 'e3db1fc1ed0ea4f4b63f910d752ccb2e', 'undefined_vars', 'C:/xamppp/htdocs/forum/Themes/alphacentauri20rev5/GenericMenu.template.php (body_above sub template - eval?)', 228),
(552, 1615316827, 7, '', '?action=profile;area=account;u=17', '2: Undefined array key &quot;active_button&quot;', 'e3db1fc1ed0ea4f4b63f910d752ccb2e', 'undefined_vars', 'C:/xamppp/htdocs/forum/Themes/alphacentauri20rev5/GenericMenu.template.php (body_above sub template - eval?)', 227),
(553, 1615316827, 7, '', '?action=profile;area=account;u=17', '2: Undefined array key &quot;active_button&quot;', 'e3db1fc1ed0ea4f4b63f910d752ccb2e', 'undefined_vars', 'C:/xamppp/htdocs/forum/Themes/alphacentauri20rev5/GenericMenu.template.php (body_above sub template - eval?)', 228),
(554, 1615316827, 7, '', '?action=profile;area=account;u=17', '2: Undefined array key &quot;active_button&quot;', 'e3db1fc1ed0ea4f4b63f910d752ccb2e', 'undefined_vars', 'C:/xamppp/htdocs/forum/Themes/alphacentauri20rev5/GenericMenu.template.php (body_above sub template - eval?)', 227),
(555, 1615316827, 7, '', '?action=profile;area=account;u=17', '2: Undefined array key &quot;active_button&quot;', 'e3db1fc1ed0ea4f4b63f910d752ccb2e', 'undefined_vars', 'C:/xamppp/htdocs/forum/Themes/alphacentauri20rev5/GenericMenu.template.php (body_above sub template - eval?)', 228),
(556, 1615316827, 7, '', '?action=profile;area=account;u=17', '2: Undefined array key &quot;active_button&quot;', 'e3db1fc1ed0ea4f4b63f910d752ccb2e', 'undefined_vars', 'C:/xamppp/htdocs/forum/Themes/alphacentauri20rev5/GenericMenu.template.php (body_above sub template - eval?)', 227),
(557, 1615316827, 7, '', '?action=profile;area=account;u=17', '2: Undefined array key &quot;active_button&quot;', 'e3db1fc1ed0ea4f4b63f910d752ccb2e', 'undefined_vars', 'C:/xamppp/htdocs/forum/Themes/alphacentauri20rev5/GenericMenu.template.php (body_above sub template - eval?)', 228),
(558, 1615316836, 7, '', '?action=profile;area=account;u=17;save', '2: Undefined array key &quot;active_button&quot;', 'e3db1fc1ed0ea4f4b63f910d752ccb2e', 'undefined_vars', 'C:/xamppp/htdocs/forum/Themes/default/languages/Errors.portuguese_brazilian-utf8.php (body_above sub template - eval?)', 227),
(559, 1615316836, 7, '', '?action=profile;area=account;u=17;save', '2: Undefined array key &quot;active_button&quot;', 'e3db1fc1ed0ea4f4b63f910d752ccb2e', 'undefined_vars', 'C:/xamppp/htdocs/forum/Themes/default/languages/Errors.portuguese_brazilian-utf8.php (body_above sub template - eval?)', 228),
(560, 1615316836, 7, '', '?action=profile;area=account;u=17;save', '2: Undefined array key &quot;active_button&quot;', 'e3db1fc1ed0ea4f4b63f910d752ccb2e', 'undefined_vars', 'C:/xamppp/htdocs/forum/Themes/default/languages/Errors.portuguese_brazilian-utf8.php (body_above sub template - eval?)', 227),
(561, 1615316836, 7, '', '?action=profile;area=account;u=17;save', '2: Undefined array key &quot;active_button&quot;', 'e3db1fc1ed0ea4f4b63f910d752ccb2e', 'undefined_vars', 'C:/xamppp/htdocs/forum/Themes/default/languages/Errors.portuguese_brazilian-utf8.php (body_above sub template - eval?)', 228),
(562, 1615316836, 7, '', '?action=profile;area=account;u=17;save', '2: Undefined array key &quot;active_button&quot;', 'e3db1fc1ed0ea4f4b63f910d752ccb2e', 'undefined_vars', 'C:/xamppp/htdocs/forum/Themes/default/languages/Errors.portuguese_brazilian-utf8.php (body_above sub template - eval?)', 227),
(563, 1615316836, 7, '', '?action=profile;area=account;u=17;save', '2: Undefined array key &quot;active_button&quot;', 'e3db1fc1ed0ea4f4b63f910d752ccb2e', 'undefined_vars', 'C:/xamppp/htdocs/forum/Themes/default/languages/Errors.portuguese_brazilian-utf8.php (body_above sub template - eval?)', 228),
(564, 1615316836, 7, '', '?action=profile;area=account;u=17;save', '2: Undefined array key &quot;active_button&quot;', 'e3db1fc1ed0ea4f4b63f910d752ccb2e', 'undefined_vars', 'C:/xamppp/htdocs/forum/Themes/default/languages/Errors.portuguese_brazilian-utf8.php (body_above sub template - eval?)', 227),
(565, 1615316836, 7, '', '?action=profile;area=account;u=17;save', '2: Undefined array key &quot;active_button&quot;', 'e3db1fc1ed0ea4f4b63f910d752ccb2e', 'undefined_vars', 'C:/xamppp/htdocs/forum/Themes/default/languages/Errors.portuguese_brazilian-utf8.php (body_above sub template - eval?)', 228),
(566, 1615316836, 7, '', '?action=profile;area=account;u=17;save', '2: Undefined array key &quot;active_button&quot;', 'e3db1fc1ed0ea4f4b63f910d752ccb2e', 'undefined_vars', 'C:/xamppp/htdocs/forum/Themes/default/languages/Errors.portuguese_brazilian-utf8.php (body_above sub template - eval?)', 227),
(567, 1615316836, 7, '', '?action=profile;area=account;u=17;save', '2: Undefined array key &quot;active_button&quot;', 'e3db1fc1ed0ea4f4b63f910d752ccb2e', 'undefined_vars', 'C:/xamppp/htdocs/forum/Themes/default/languages/Errors.portuguese_brazilian-utf8.php (body_above sub template - eval?)', 228),
(568, 1615316836, 7, '', '?action=profile;area=account;u=17;save', '2: Undefined array key &quot;active_button&quot;', 'e3db1fc1ed0ea4f4b63f910d752ccb2e', 'undefined_vars', 'C:/xamppp/htdocs/forum/Themes/default/languages/Errors.portuguese_brazilian-utf8.php (body_above sub template - eval?)', 227),
(569, 1615316836, 7, '', '?action=profile;area=account;u=17;save', '2: Undefined array key &quot;active_button&quot;', 'e3db1fc1ed0ea4f4b63f910d752ccb2e', 'undefined_vars', 'C:/xamppp/htdocs/forum/Themes/default/languages/Errors.portuguese_brazilian-utf8.php (body_above sub template - eval?)', 228),
(570, 1615316836, 7, '', '?action=profile;area=account;u=17;save', '2: Undefined array key &quot;active_button&quot;', 'e3db1fc1ed0ea4f4b63f910d752ccb2e', 'undefined_vars', 'C:/xamppp/htdocs/forum/Themes/default/languages/Errors.portuguese_brazilian-utf8.php (body_above sub template - eval?)', 227),
(571, 1615316836, 7, '', '?action=profile;area=account;u=17;save', '2: Undefined array key &quot;active_button&quot;', 'e3db1fc1ed0ea4f4b63f910d752ccb2e', 'undefined_vars', 'C:/xamppp/htdocs/forum/Themes/default/languages/Errors.portuguese_brazilian-utf8.php (body_above sub template - eval?)', 228),
(572, 1615316836, 7, '', '?action=profile;area=account;u=17;save', '2: Undefined array key &quot;active_button&quot;', 'e3db1fc1ed0ea4f4b63f910d752ccb2e', 'undefined_vars', 'C:/xamppp/htdocs/forum/Themes/default/languages/Errors.portuguese_brazilian-utf8.php (body_above sub template - eval?)', 227),
(573, 1615316836, 7, '', '?action=profile;area=account;u=17;save', '2: Undefined array key &quot;active_button&quot;', 'e3db1fc1ed0ea4f4b63f910d752ccb2e', 'undefined_vars', 'C:/xamppp/htdocs/forum/Themes/default/languages/Errors.portuguese_brazilian-utf8.php (body_above sub template - eval?)', 228),
(574, 1615316836, 7, '', '?action=profile;area=account;u=17;save', '2: Undefined array key &quot;active_button&quot;', 'e3db1fc1ed0ea4f4b63f910d752ccb2e', 'undefined_vars', 'C:/xamppp/htdocs/forum/Themes/default/languages/Errors.portuguese_brazilian-utf8.php (body_above sub template - eval?)', 227),
(575, 1615316836, 7, '', '?action=profile;area=account;u=17;save', '2: Undefined array key &quot;active_button&quot;', 'e3db1fc1ed0ea4f4b63f910d752ccb2e', 'undefined_vars', 'C:/xamppp/htdocs/forum/Themes/default/languages/Errors.portuguese_brazilian-utf8.php (body_above sub template - eval?)', 228),
(576, 1615316836, 7, '', '?action=profile;area=account;u=17;save', '2: Undefined array key &quot;active_button&quot;', 'e3db1fc1ed0ea4f4b63f910d752ccb2e', 'undefined_vars', 'C:/xamppp/htdocs/forum/Themes/default/languages/Errors.portuguese_brazilian-utf8.php (body_above sub template - eval?)', 227),
(577, 1615316836, 7, '', '?action=profile;area=account;u=17;save', '2: Undefined array key &quot;active_button&quot;', 'e3db1fc1ed0ea4f4b63f910d752ccb2e', 'undefined_vars', 'C:/xamppp/htdocs/forum/Themes/default/languages/Errors.portuguese_brazilian-utf8.php (body_above sub template - eval?)', 228),
(578, 1615316836, 7, '', '?action=profile;area=account;u=17;save', '2: Undefined array key &quot;active_button&quot;', 'e3db1fc1ed0ea4f4b63f910d752ccb2e', 'undefined_vars', 'C:/xamppp/htdocs/forum/Themes/default/languages/Errors.portuguese_brazilian-utf8.php (body_above sub template - eval?)', 227),
(579, 1615316836, 7, '', '?action=profile;area=account;u=17;save', '2: Undefined array key &quot;active_button&quot;', 'e3db1fc1ed0ea4f4b63f910d752ccb2e', 'undefined_vars', 'C:/xamppp/htdocs/forum/Themes/default/languages/Errors.portuguese_brazilian-utf8.php (body_above sub template - eval?)', 228),
(580, 1615316836, 7, '', '?action=profile;area=account;u=17;save', '2: Undefined array key &quot;active_button&quot;', 'e3db1fc1ed0ea4f4b63f910d752ccb2e', 'undefined_vars', 'C:/xamppp/htdocs/forum/Themes/default/languages/Errors.portuguese_brazilian-utf8.php (body_above sub template - eval?)', 227),
(581, 1615316836, 7, '', '?action=profile;area=account;u=17;save', '2: Undefined array key &quot;active_button&quot;', 'e3db1fc1ed0ea4f4b63f910d752ccb2e', 'undefined_vars', 'C:/xamppp/htdocs/forum/Themes/default/languages/Errors.portuguese_brazilian-utf8.php (body_above sub template - eval?)', 228),
(582, 1615316848, 7, '', '?action=profile;area=account;u=17', '2: Undefined array key &quot;active_button&quot;', 'e3db1fc1ed0ea4f4b63f910d752ccb2e', 'undefined_vars', 'C:/xamppp/htdocs/forum/Themes/alphacentauri20rev5/GenericMenu.template.php (body_above sub template - eval?)', 227),
(583, 1615316848, 7, '', '?action=profile;area=account;u=17', '2: Undefined array key &quot;active_button&quot;', 'e3db1fc1ed0ea4f4b63f910d752ccb2e', 'undefined_vars', 'C:/xamppp/htdocs/forum/Themes/alphacentauri20rev5/GenericMenu.template.php (body_above sub template - eval?)', 228),
(584, 1615316848, 7, '', '?action=profile;area=account;u=17', '2: Undefined array key &quot;active_button&quot;', 'e3db1fc1ed0ea4f4b63f910d752ccb2e', 'undefined_vars', 'C:/xamppp/htdocs/forum/Themes/alphacentauri20rev5/GenericMenu.template.php (body_above sub template - eval?)', 227),
(585, 1615316848, 7, '', '?action=profile;area=account;u=17', '2: Undefined array key &quot;active_button&quot;', 'e3db1fc1ed0ea4f4b63f910d752ccb2e', 'undefined_vars', 'C:/xamppp/htdocs/forum/Themes/alphacentauri20rev5/GenericMenu.template.php (body_above sub template - eval?)', 228),
(586, 1615316848, 7, '', '?action=profile;area=account;u=17', '2: Undefined array key &quot;active_button&quot;', 'e3db1fc1ed0ea4f4b63f910d752ccb2e', 'undefined_vars', 'C:/xamppp/htdocs/forum/Themes/alphacentauri20rev5/GenericMenu.template.php (body_above sub template - eval?)', 227),
(587, 1615316848, 7, '', '?action=profile;area=account;u=17', '2: Undefined array key &quot;active_button&quot;', 'e3db1fc1ed0ea4f4b63f910d752ccb2e', 'undefined_vars', 'C:/xamppp/htdocs/forum/Themes/alphacentauri20rev5/GenericMenu.template.php (body_above sub template - eval?)', 228),
(588, 1615316848, 7, '', '?action=profile;area=account;u=17', '2: Undefined array key &quot;active_button&quot;', 'e3db1fc1ed0ea4f4b63f910d752ccb2e', 'undefined_vars', 'C:/xamppp/htdocs/forum/Themes/alphacentauri20rev5/GenericMenu.template.php (body_above sub template - eval?)', 227),
(589, 1615316848, 7, '', '?action=profile;area=account;u=17', '2: Undefined array key &quot;active_button&quot;', 'e3db1fc1ed0ea4f4b63f910d752ccb2e', 'undefined_vars', 'C:/xamppp/htdocs/forum/Themes/alphacentauri20rev5/GenericMenu.template.php (body_above sub template - eval?)', 228),
(590, 1615316848, 7, '', '?action=profile;area=account;u=17', '2: Undefined array key &quot;active_button&quot;', 'e3db1fc1ed0ea4f4b63f910d752ccb2e', 'undefined_vars', 'C:/xamppp/htdocs/forum/Themes/alphacentauri20rev5/GenericMenu.template.php (body_above sub template - eval?)', 227),
(591, 1615316848, 7, '', '?action=profile;area=account;u=17', '2: Undefined array key &quot;active_button&quot;', 'e3db1fc1ed0ea4f4b63f910d752ccb2e', 'undefined_vars', 'C:/xamppp/htdocs/forum/Themes/alphacentauri20rev5/GenericMenu.template.php (body_above sub template - eval?)', 228),
(592, 1615316848, 7, '', '?action=profile;area=account;u=17', '2: Undefined array key &quot;active_button&quot;', 'e3db1fc1ed0ea4f4b63f910d752ccb2e', 'undefined_vars', 'C:/xamppp/htdocs/forum/Themes/alphacentauri20rev5/GenericMenu.template.php (body_above sub template - eval?)', 227),
(593, 1615316848, 7, '', '?action=profile;area=account;u=17', '2: Undefined array key &quot;active_button&quot;', 'e3db1fc1ed0ea4f4b63f910d752ccb2e', 'undefined_vars', 'C:/xamppp/htdocs/forum/Themes/alphacentauri20rev5/GenericMenu.template.php (body_above sub template - eval?)', 228),
(594, 1615316848, 7, '', '?action=profile;area=account;u=17', '2: Undefined array key &quot;active_button&quot;', 'e3db1fc1ed0ea4f4b63f910d752ccb2e', 'undefined_vars', 'C:/xamppp/htdocs/forum/Themes/alphacentauri20rev5/GenericMenu.template.php (body_above sub template - eval?)', 227),
(595, 1615316848, 7, '', '?action=profile;area=account;u=17', '2: Undefined array key &quot;active_button&quot;', 'e3db1fc1ed0ea4f4b63f910d752ccb2e', 'undefined_vars', 'C:/xamppp/htdocs/forum/Themes/alphacentauri20rev5/GenericMenu.template.php (body_above sub template - eval?)', 228),
(596, 1615316848, 7, '', '?action=profile;area=account;u=17', '2: Undefined array key &quot;active_button&quot;', 'e3db1fc1ed0ea4f4b63f910d752ccb2e', 'undefined_vars', 'C:/xamppp/htdocs/forum/Themes/alphacentauri20rev5/GenericMenu.template.php (body_above sub template - eval?)', 227),
(597, 1615316848, 7, '', '?action=profile;area=account;u=17', '2: Undefined array key &quot;active_button&quot;', 'e3db1fc1ed0ea4f4b63f910d752ccb2e', 'undefined_vars', 'C:/xamppp/htdocs/forum/Themes/alphacentauri20rev5/GenericMenu.template.php (body_above sub template - eval?)', 228),
(598, 1615316848, 7, '', '?action=profile;area=account;u=17', '2: Undefined array key &quot;active_button&quot;', 'e3db1fc1ed0ea4f4b63f910d752ccb2e', 'undefined_vars', 'C:/xamppp/htdocs/forum/Themes/alphacentauri20rev5/GenericMenu.template.php (body_above sub template - eval?)', 227),
(599, 1615316848, 7, '', '?action=profile;area=account;u=17', '2: Undefined array key &quot;active_button&quot;', 'e3db1fc1ed0ea4f4b63f910d752ccb2e', 'undefined_vars', 'C:/xamppp/htdocs/forum/Themes/alphacentauri20rev5/GenericMenu.template.php (body_above sub template - eval?)', 228),
(600, 1615316848, 7, '', '?action=profile;area=account;u=17', '2: Undefined array key &quot;active_button&quot;', 'e3db1fc1ed0ea4f4b63f910d752ccb2e', 'undefined_vars', 'C:/xamppp/htdocs/forum/Themes/alphacentauri20rev5/GenericMenu.template.php (body_above sub template - eval?)', 227),
(601, 1615316848, 7, '', '?action=profile;area=account;u=17', '2: Undefined array key &quot;active_button&quot;', 'e3db1fc1ed0ea4f4b63f910d752ccb2e', 'undefined_vars', 'C:/xamppp/htdocs/forum/Themes/alphacentauri20rev5/GenericMenu.template.php (body_above sub template - eval?)', 228),
(602, 1615316848, 7, '', '?action=profile;area=account;u=17', '2: Undefined array key &quot;active_button&quot;', 'e3db1fc1ed0ea4f4b63f910d752ccb2e', 'undefined_vars', 'C:/xamppp/htdocs/forum/Themes/alphacentauri20rev5/GenericMenu.template.php (body_above sub template - eval?)', 227),
(603, 1615316848, 7, '', '?action=profile;area=account;u=17', '2: Undefined array key &quot;active_button&quot;', 'e3db1fc1ed0ea4f4b63f910d752ccb2e', 'undefined_vars', 'C:/xamppp/htdocs/forum/Themes/alphacentauri20rev5/GenericMenu.template.php (body_above sub template - eval?)', 228),
(604, 1615316848, 7, '', '?action=profile;area=account;u=17', '2: Undefined array key &quot;active_button&quot;', 'e3db1fc1ed0ea4f4b63f910d752ccb2e', 'undefined_vars', 'C:/xamppp/htdocs/forum/Themes/alphacentauri20rev5/GenericMenu.template.php (body_above sub template - eval?)', 227),
(605, 1615316848, 7, '', '?action=profile;area=account;u=17', '2: Undefined array key &quot;active_button&quot;', 'e3db1fc1ed0ea4f4b63f910d752ccb2e', 'undefined_vars', 'C:/xamppp/htdocs/forum/Themes/alphacentauri20rev5/GenericMenu.template.php (body_above sub template - eval?)', 228),
(606, 1615316851, 7, '', '?action=mlist', '2: Undefined array key &quot;active_button&quot;', 'e3db1fc1ed0ea4f4b63f910d752ccb2e', 'undefined_vars', 'C:/xamppp/htdocs/forum/Themes/default/Memberlist.template.php (body_above sub template - eval?)', 227),
(607, 1615316851, 7, '', '?action=mlist', '2: Undefined array key &quot;active_button&quot;', 'e3db1fc1ed0ea4f4b63f910d752ccb2e', 'undefined_vars', 'C:/xamppp/htdocs/forum/Themes/default/Memberlist.template.php (body_above sub template - eval?)', 228),
(608, 1615316851, 7, '', '?action=mlist', '2: Undefined array key &quot;active_button&quot;', 'e3db1fc1ed0ea4f4b63f910d752ccb2e', 'undefined_vars', 'C:/xamppp/htdocs/forum/Themes/default/Memberlist.template.php (body_above sub template - eval?)', 227),
(609, 1615316851, 7, '', '?action=mlist', '2: Undefined array key &quot;active_button&quot;', 'e3db1fc1ed0ea4f4b63f910d752ccb2e', 'undefined_vars', 'C:/xamppp/htdocs/forum/Themes/default/Memberlist.template.php (body_above sub template - eval?)', 228),
(610, 1615316851, 7, '', '?action=mlist', '2: Undefined array key &quot;active_button&quot;', 'e3db1fc1ed0ea4f4b63f910d752ccb2e', 'undefined_vars', 'C:/xamppp/htdocs/forum/Themes/default/Memberlist.template.php (body_above sub template - eval?)', 227),
(611, 1615316851, 7, '', '?action=mlist', '2: Undefined array key &quot;active_button&quot;', 'e3db1fc1ed0ea4f4b63f910d752ccb2e', 'undefined_vars', 'C:/xamppp/htdocs/forum/Themes/default/Memberlist.template.php (body_above sub template - eval?)', 228),
(612, 1615316851, 7, '', '?action=mlist', '2: Undefined array key &quot;active_button&quot;', 'e3db1fc1ed0ea4f4b63f910d752ccb2e', 'undefined_vars', 'C:/xamppp/htdocs/forum/Themes/default/Memberlist.template.php (body_above sub template - eval?)', 227),
(613, 1615316851, 7, '', '?action=mlist', '2: Undefined array key &quot;active_button&quot;', 'e3db1fc1ed0ea4f4b63f910d752ccb2e', 'undefined_vars', 'C:/xamppp/htdocs/forum/Themes/default/Memberlist.template.php (body_above sub template - eval?)', 228),
(614, 1615316851, 7, '', '?action=mlist', '2: Undefined array key &quot;active_button&quot;', 'e3db1fc1ed0ea4f4b63f910d752ccb2e', 'undefined_vars', 'C:/xamppp/htdocs/forum/Themes/default/Memberlist.template.php (body_above sub template - eval?)', 227),
(615, 1615316851, 7, '', '?action=mlist', '2: Undefined array key &quot;active_button&quot;', 'e3db1fc1ed0ea4f4b63f910d752ccb2e', 'undefined_vars', 'C:/xamppp/htdocs/forum/Themes/default/Memberlist.template.php (body_above sub template - eval?)', 228),
(616, 1615316851, 7, '', '?action=mlist', '2: Undefined array key &quot;active_button&quot;', 'e3db1fc1ed0ea4f4b63f910d752ccb2e', 'undefined_vars', 'C:/xamppp/htdocs/forum/Themes/default/Memberlist.template.php (body_above sub template - eval?)', 227),
(617, 1615316851, 7, '', '?action=mlist', '2: Undefined array key &quot;active_button&quot;', 'e3db1fc1ed0ea4f4b63f910d752ccb2e', 'undefined_vars', 'C:/xamppp/htdocs/forum/Themes/default/Memberlist.template.php (body_above sub template - eval?)', 228),
(618, 1615316851, 7, '', '?action=mlist', '2: Undefined array key &quot;active_button&quot;', 'e3db1fc1ed0ea4f4b63f910d752ccb2e', 'undefined_vars', 'C:/xamppp/htdocs/forum/Themes/default/Memberlist.template.php (body_above sub template - eval?)', 227),
(619, 1615316851, 7, '', '?action=mlist', '2: Undefined array key &quot;active_button&quot;', 'e3db1fc1ed0ea4f4b63f910d752ccb2e', 'undefined_vars', 'C:/xamppp/htdocs/forum/Themes/default/Memberlist.template.php (body_above sub template - eval?)', 228),
(620, 1615316851, 7, '', '?action=mlist', '2: Undefined array key &quot;active_button&quot;', 'e3db1fc1ed0ea4f4b63f910d752ccb2e', 'undefined_vars', 'C:/xamppp/htdocs/forum/Themes/default/Memberlist.template.php (body_above sub template - eval?)', 227),
(621, 1615316851, 7, '', '?action=mlist', '2: Undefined array key &quot;active_button&quot;', 'e3db1fc1ed0ea4f4b63f910d752ccb2e', 'undefined_vars', 'C:/xamppp/htdocs/forum/Themes/default/Memberlist.template.php (body_above sub template - eval?)', 228),
(622, 1615316851, 7, '', '?action=mlist', '2: Undefined array key &quot;active_button&quot;', 'e3db1fc1ed0ea4f4b63f910d752ccb2e', 'undefined_vars', 'C:/xamppp/htdocs/forum/Themes/default/Memberlist.template.php (body_above sub template - eval?)', 227),
(623, 1615316851, 7, '', '?action=mlist', '2: Undefined array key &quot;active_button&quot;', 'e3db1fc1ed0ea4f4b63f910d752ccb2e', 'undefined_vars', 'C:/xamppp/htdocs/forum/Themes/default/Memberlist.template.php (body_above sub template - eval?)', 228),
(624, 1615316851, 7, '', '?action=mlist', '2: Undefined array key &quot;active_button&quot;', 'e3db1fc1ed0ea4f4b63f910d752ccb2e', 'undefined_vars', 'C:/xamppp/htdocs/forum/Themes/default/Memberlist.template.php (body_above sub template - eval?)', 227),
(625, 1615316851, 7, '', '?action=mlist', '2: Undefined array key &quot;active_button&quot;', 'e3db1fc1ed0ea4f4b63f910d752ccb2e', 'undefined_vars', 'C:/xamppp/htdocs/forum/Themes/default/Memberlist.template.php (body_above sub template - eval?)', 228),
(626, 1615316851, 7, '', '?action=mlist', '2: Undefined array key &quot;active_button&quot;', 'e3db1fc1ed0ea4f4b63f910d752ccb2e', 'undefined_vars', 'C:/xamppp/htdocs/forum/Themes/default/Memberlist.template.php (body_above sub template - eval?)', 227),
(627, 1615316851, 7, '', '?action=mlist', '2: Undefined array key &quot;active_button&quot;', 'e3db1fc1ed0ea4f4b63f910d752ccb2e', 'undefined_vars', 'C:/xamppp/htdocs/forum/Themes/default/Memberlist.template.php (body_above sub template - eval?)', 228),
(628, 1615316851, 7, '', '?action=mlist', '2: Undefined array key &quot;active_button&quot;', 'e3db1fc1ed0ea4f4b63f910d752ccb2e', 'undefined_vars', 'C:/xamppp/htdocs/forum/Themes/default/Memberlist.template.php (body_above sub template - eval?)', 227),
(629, 1615316851, 7, '', '?action=mlist', '2: Undefined array key &quot;active_button&quot;', 'e3db1fc1ed0ea4f4b63f910d752ccb2e', 'undefined_vars', 'C:/xamppp/htdocs/forum/Themes/default/Memberlist.template.php (body_above sub template - eval?)', 228),
(630, 1615316909, 7, '', '?action=mlist', '2: Undefined array key &quot;active_button&quot;', 'e3db1fc1ed0ea4f4b63f910d752ccb2e', 'undefined_vars', 'C:/xamppp/htdocs/forum/Themes/default/Memberlist.template.php (body_above sub template - eval?)', 227),
(631, 1615316909, 7, '', '?action=mlist', '2: Undefined array key &quot;active_button&quot;', 'e3db1fc1ed0ea4f4b63f910d752ccb2e', 'undefined_vars', 'C:/xamppp/htdocs/forum/Themes/default/Memberlist.template.php (body_above sub template - eval?)', 228),
(632, 1615316909, 7, '', '?action=mlist', '2: Undefined array key &quot;active_button&quot;', 'e3db1fc1ed0ea4f4b63f910d752ccb2e', 'undefined_vars', 'C:/xamppp/htdocs/forum/Themes/default/Memberlist.template.php (body_above sub template - eval?)', 227),
(633, 1615316909, 7, '', '?action=mlist', '2: Undefined array key &quot;active_button&quot;', 'e3db1fc1ed0ea4f4b63f910d752ccb2e', 'undefined_vars', 'C:/xamppp/htdocs/forum/Themes/default/Memberlist.template.php (body_above sub template - eval?)', 228),
(634, 1615316909, 7, '', '?action=mlist', '2: Undefined array key &quot;active_button&quot;', 'e3db1fc1ed0ea4f4b63f910d752ccb2e', 'undefined_vars', 'C:/xamppp/htdocs/forum/Themes/default/Memberlist.template.php (body_above sub template - eval?)', 227),
(635, 1615316909, 7, '', '?action=mlist', '2: Undefined array key &quot;active_button&quot;', 'e3db1fc1ed0ea4f4b63f910d752ccb2e', 'undefined_vars', 'C:/xamppp/htdocs/forum/Themes/default/Memberlist.template.php (body_above sub template - eval?)', 228),
(636, 1615316909, 7, '', '?action=mlist', '2: Undefined array key &quot;active_button&quot;', 'e3db1fc1ed0ea4f4b63f910d752ccb2e', 'undefined_vars', 'C:/xamppp/htdocs/forum/Themes/default/Memberlist.template.php (body_above sub template - eval?)', 227),
(637, 1615316909, 7, '', '?action=mlist', '2: Undefined array key &quot;active_button&quot;', 'e3db1fc1ed0ea4f4b63f910d752ccb2e', 'undefined_vars', 'C:/xamppp/htdocs/forum/Themes/default/Memberlist.template.php (body_above sub template - eval?)', 228),
(638, 1615316909, 7, '', '?action=mlist', '2: Undefined array key &quot;active_button&quot;', 'e3db1fc1ed0ea4f4b63f910d752ccb2e', 'undefined_vars', 'C:/xamppp/htdocs/forum/Themes/default/Memberlist.template.php (body_above sub template - eval?)', 227),
(639, 1615316909, 7, '', '?action=mlist', '2: Undefined array key &quot;active_button&quot;', 'e3db1fc1ed0ea4f4b63f910d752ccb2e', 'undefined_vars', 'C:/xamppp/htdocs/forum/Themes/default/Memberlist.template.php (body_above sub template - eval?)', 228),
(640, 1615316909, 7, '', '?action=mlist', '2: Undefined array key &quot;active_button&quot;', 'e3db1fc1ed0ea4f4b63f910d752ccb2e', 'undefined_vars', 'C:/xamppp/htdocs/forum/Themes/default/Memberlist.template.php (body_above sub template - eval?)', 227),
(641, 1615316909, 7, '', '?action=mlist', '2: Undefined array key &quot;active_button&quot;', 'e3db1fc1ed0ea4f4b63f910d752ccb2e', 'undefined_vars', 'C:/xamppp/htdocs/forum/Themes/default/Memberlist.template.php (body_above sub template - eval?)', 228),
(642, 1615316909, 7, '', '?action=mlist', '2: Undefined array key &quot;active_button&quot;', 'e3db1fc1ed0ea4f4b63f910d752ccb2e', 'undefined_vars', 'C:/xamppp/htdocs/forum/Themes/default/Memberlist.template.php (body_above sub template - eval?)', 227),
(643, 1615316909, 7, '', '?action=mlist', '2: Undefined array key &quot;active_button&quot;', 'e3db1fc1ed0ea4f4b63f910d752ccb2e', 'undefined_vars', 'C:/xamppp/htdocs/forum/Themes/default/Memberlist.template.php (body_above sub template - eval?)', 228),
(644, 1615316909, 7, '', '?action=mlist', '2: Undefined array key &quot;active_button&quot;', 'e3db1fc1ed0ea4f4b63f910d752ccb2e', 'undefined_vars', 'C:/xamppp/htdocs/forum/Themes/default/Memberlist.template.php (body_above sub template - eval?)', 227),
(645, 1615316909, 7, '', '?action=mlist', '2: Undefined array key &quot;active_button&quot;', 'e3db1fc1ed0ea4f4b63f910d752ccb2e', 'undefined_vars', 'C:/xamppp/htdocs/forum/Themes/default/Memberlist.template.php (body_above sub template - eval?)', 228),
(646, 1615316909, 7, '', '?action=mlist', '2: Undefined array key &quot;active_button&quot;', 'e3db1fc1ed0ea4f4b63f910d752ccb2e', 'undefined_vars', 'C:/xamppp/htdocs/forum/Themes/default/Memberlist.template.php (body_above sub template - eval?)', 227),
(647, 1615316909, 7, '', '?action=mlist', '2: Undefined array key &quot;active_button&quot;', 'e3db1fc1ed0ea4f4b63f910d752ccb2e', 'undefined_vars', 'C:/xamppp/htdocs/forum/Themes/default/Memberlist.template.php (body_above sub template - eval?)', 228),
(648, 1615316909, 7, '', '?action=mlist', '2: Undefined array key &quot;active_button&quot;', 'e3db1fc1ed0ea4f4b63f910d752ccb2e', 'undefined_vars', 'C:/xamppp/htdocs/forum/Themes/default/Memberlist.template.php (body_above sub template - eval?)', 227),
(649, 1615316909, 7, '', '?action=mlist', '2: Undefined array key &quot;active_button&quot;', 'e3db1fc1ed0ea4f4b63f910d752ccb2e', 'undefined_vars', 'C:/xamppp/htdocs/forum/Themes/default/Memberlist.template.php (body_above sub template - eval?)', 228),
(650, 1615316909, 7, '', '?action=mlist', '2: Undefined array key &quot;active_button&quot;', 'e3db1fc1ed0ea4f4b63f910d752ccb2e', 'undefined_vars', 'C:/xamppp/htdocs/forum/Themes/default/Memberlist.template.php (body_above sub template - eval?)', 227),
(651, 1615316909, 7, '', '?action=mlist', '2: Undefined array key &quot;active_button&quot;', 'e3db1fc1ed0ea4f4b63f910d752ccb2e', 'undefined_vars', 'C:/xamppp/htdocs/forum/Themes/default/Memberlist.template.php (body_above sub template - eval?)', 228),
(652, 1615316909, 7, '', '?action=mlist', '2: Undefined array key &quot;active_button&quot;', 'e3db1fc1ed0ea4f4b63f910d752ccb2e', 'undefined_vars', 'C:/xamppp/htdocs/forum/Themes/default/Memberlist.template.php (body_above sub template - eval?)', 227),
(653, 1615316909, 7, '', '?action=mlist', '2: Undefined array key &quot;active_button&quot;', 'e3db1fc1ed0ea4f4b63f910d752ccb2e', 'undefined_vars', 'C:/xamppp/htdocs/forum/Themes/default/Memberlist.template.php (body_above sub template - eval?)', 228),
(654, 1615316948, 7, '', '?action=mlist', '2: Undefined array key &quot;active_button&quot;', 'e3db1fc1ed0ea4f4b63f910d752ccb2e', 'undefined_vars', 'C:/xamppp/htdocs/forum/Themes/default/Memberlist.template.php (body_above sub template - eval?)', 227),
(655, 1615316948, 7, '', '?action=mlist', '2: Undefined array key &quot;active_button&quot;', 'e3db1fc1ed0ea4f4b63f910d752ccb2e', 'undefined_vars', 'C:/xamppp/htdocs/forum/Themes/default/Memberlist.template.php (body_above sub template - eval?)', 228),
(656, 1615316948, 7, '', '?action=mlist', '2: Undefined array key &quot;active_button&quot;', 'e3db1fc1ed0ea4f4b63f910d752ccb2e', 'undefined_vars', 'C:/xamppp/htdocs/forum/Themes/default/Memberlist.template.php (body_above sub template - eval?)', 227),
(657, 1615316948, 7, '', '?action=mlist', '2: Undefined array key &quot;active_button&quot;', 'e3db1fc1ed0ea4f4b63f910d752ccb2e', 'undefined_vars', 'C:/xamppp/htdocs/forum/Themes/default/Memberlist.template.php (body_above sub template - eval?)', 228),
(658, 1615316948, 7, '', '?action=mlist', '2: Undefined array key &quot;active_button&quot;', 'e3db1fc1ed0ea4f4b63f910d752ccb2e', 'undefined_vars', 'C:/xamppp/htdocs/forum/Themes/default/Memberlist.template.php (body_above sub template - eval?)', 227),
(659, 1615316948, 7, '', '?action=mlist', '2: Undefined array key &quot;active_button&quot;', 'e3db1fc1ed0ea4f4b63f910d752ccb2e', 'undefined_vars', 'C:/xamppp/htdocs/forum/Themes/default/Memberlist.template.php (body_above sub template - eval?)', 228),
(660, 1615316948, 7, '', '?action=mlist', '2: Undefined array key &quot;active_button&quot;', 'e3db1fc1ed0ea4f4b63f910d752ccb2e', 'undefined_vars', 'C:/xamppp/htdocs/forum/Themes/default/Memberlist.template.php (body_above sub template - eval?)', 227),
(661, 1615316948, 7, '', '?action=mlist', '2: Undefined array key &quot;active_button&quot;', 'e3db1fc1ed0ea4f4b63f910d752ccb2e', 'undefined_vars', 'C:/xamppp/htdocs/forum/Themes/default/Memberlist.template.php (body_above sub template - eval?)', 228),
(662, 1615316948, 7, '', '?action=mlist', '2: Undefined array key &quot;active_button&quot;', 'e3db1fc1ed0ea4f4b63f910d752ccb2e', 'undefined_vars', 'C:/xamppp/htdocs/forum/Themes/default/Memberlist.template.php (body_above sub template - eval?)', 227),
(663, 1615316948, 7, '', '?action=mlist', '2: Undefined array key &quot;active_button&quot;', 'e3db1fc1ed0ea4f4b63f910d752ccb2e', 'undefined_vars', 'C:/xamppp/htdocs/forum/Themes/default/Memberlist.template.php (body_above sub template - eval?)', 228),
(664, 1615316948, 7, '', '?action=mlist', '2: Undefined array key &quot;active_button&quot;', 'e3db1fc1ed0ea4f4b63f910d752ccb2e', 'undefined_vars', 'C:/xamppp/htdocs/forum/Themes/default/Memberlist.template.php (body_above sub template - eval?)', 227),
(665, 1615316948, 7, '', '?action=mlist', '2: Undefined array key &quot;active_button&quot;', 'e3db1fc1ed0ea4f4b63f910d752ccb2e', 'undefined_vars', 'C:/xamppp/htdocs/forum/Themes/default/Memberlist.template.php (body_above sub template - eval?)', 228),
(666, 1615316948, 7, '', '?action=mlist', '2: Undefined array key &quot;active_button&quot;', 'e3db1fc1ed0ea4f4b63f910d752ccb2e', 'undefined_vars', 'C:/xamppp/htdocs/forum/Themes/default/Memberlist.template.php (body_above sub template - eval?)', 227),
(667, 1615316948, 7, '', '?action=mlist', '2: Undefined array key &quot;active_button&quot;', 'e3db1fc1ed0ea4f4b63f910d752ccb2e', 'undefined_vars', 'C:/xamppp/htdocs/forum/Themes/default/Memberlist.template.php (body_above sub template - eval?)', 228),
(668, 1615316948, 7, '', '?action=mlist', '2: Undefined array key &quot;active_button&quot;', 'e3db1fc1ed0ea4f4b63f910d752ccb2e', 'undefined_vars', 'C:/xamppp/htdocs/forum/Themes/default/Memberlist.template.php (body_above sub template - eval?)', 227),
(669, 1615316948, 7, '', '?action=mlist', '2: Undefined array key &quot;active_button&quot;', 'e3db1fc1ed0ea4f4b63f910d752ccb2e', 'undefined_vars', 'C:/xamppp/htdocs/forum/Themes/default/Memberlist.template.php (body_above sub template - eval?)', 228),
(670, 1615316948, 7, '', '?action=mlist', '2: Undefined array key &quot;active_button&quot;', 'e3db1fc1ed0ea4f4b63f910d752ccb2e', 'undefined_vars', 'C:/xamppp/htdocs/forum/Themes/default/Memberlist.template.php (body_above sub template - eval?)', 227),
(671, 1615316948, 7, '', '?action=mlist', '2: Undefined array key &quot;active_button&quot;', 'e3db1fc1ed0ea4f4b63f910d752ccb2e', 'undefined_vars', 'C:/xamppp/htdocs/forum/Themes/default/Memberlist.template.php (body_above sub template - eval?)', 228),
(672, 1615316948, 7, '', '?action=mlist', '2: Undefined array key &quot;active_button&quot;', 'e3db1fc1ed0ea4f4b63f910d752ccb2e', 'undefined_vars', 'C:/xamppp/htdocs/forum/Themes/default/Memberlist.template.php (body_above sub template - eval?)', 227),
(673, 1615316948, 7, '', '?action=mlist', '2: Undefined array key &quot;active_button&quot;', 'e3db1fc1ed0ea4f4b63f910d752ccb2e', 'undefined_vars', 'C:/xamppp/htdocs/forum/Themes/default/Memberlist.template.php (body_above sub template - eval?)', 228),
(674, 1615316948, 7, '', '?action=mlist', '2: Undefined array key &quot;active_button&quot;', 'e3db1fc1ed0ea4f4b63f910d752ccb2e', 'undefined_vars', 'C:/xamppp/htdocs/forum/Themes/default/Memberlist.template.php (body_above sub template - eval?)', 227),
(675, 1615316948, 7, '', '?action=mlist', '2: Undefined array key &quot;active_button&quot;', 'e3db1fc1ed0ea4f4b63f910d752ccb2e', 'undefined_vars', 'C:/xamppp/htdocs/forum/Themes/default/Memberlist.template.php (body_above sub template - eval?)', 228),
(676, 1615316948, 7, '', '?action=mlist', '2: Undefined array key &quot;active_button&quot;', 'e3db1fc1ed0ea4f4b63f910d752ccb2e', 'undefined_vars', 'C:/xamppp/htdocs/forum/Themes/default/Memberlist.template.php (body_above sub template - eval?)', 227),
(677, 1615316948, 7, '', '?action=mlist', '2: Undefined array key &quot;active_button&quot;', 'e3db1fc1ed0ea4f4b63f910d752ccb2e', 'undefined_vars', 'C:/xamppp/htdocs/forum/Themes/default/Memberlist.template.php (body_above sub template - eval?)', 228),
(678, 1615317315, 8, '', '?', '2: Undefined array key &quot;active_button&quot;', '21e037f610d0cb4dc5f1532ce5bf14f4', 'undefined_vars', 'C:/xamppp/htdocs/forum/Themes/alphacentauri20rev5/BoardIndex.template.php (body_above sub template - eval?)', 227),
(679, 1615317315, 8, '', '?', '2: Undefined array key &quot;active_button&quot;', '21e037f610d0cb4dc5f1532ce5bf14f4', 'undefined_vars', 'C:/xamppp/htdocs/forum/Themes/alphacentauri20rev5/BoardIndex.template.php (body_above sub template - eval?)', 228),
(680, 1615317315, 8, '', '?', '2: Undefined array key &quot;active_button&quot;', '21e037f610d0cb4dc5f1532ce5bf14f4', 'undefined_vars', 'C:/xamppp/htdocs/forum/Themes/alphacentauri20rev5/BoardIndex.template.php (body_above sub template - eval?)', 227),
(681, 1615317315, 8, '', '?', '2: Undefined array key &quot;active_button&quot;', '21e037f610d0cb4dc5f1532ce5bf14f4', 'undefined_vars', 'C:/xamppp/htdocs/forum/Themes/alphacentauri20rev5/BoardIndex.template.php (body_above sub template - eval?)', 228),
(682, 1615317315, 8, '', '?', '2: Undefined array key &quot;active_button&quot;', '21e037f610d0cb4dc5f1532ce5bf14f4', 'undefined_vars', 'C:/xamppp/htdocs/forum/Themes/alphacentauri20rev5/BoardIndex.template.php (body_above sub template - eval?)', 227),
(683, 1615317315, 8, '', '?', '2: Undefined array key &quot;active_button&quot;', '21e037f610d0cb4dc5f1532ce5bf14f4', 'undefined_vars', 'C:/xamppp/htdocs/forum/Themes/alphacentauri20rev5/BoardIndex.template.php (body_above sub template - eval?)', 228),
(684, 1615317315, 8, '', '?', '2: Undefined array key &quot;active_button&quot;', '21e037f610d0cb4dc5f1532ce5bf14f4', 'undefined_vars', 'C:/xamppp/htdocs/forum/Themes/alphacentauri20rev5/BoardIndex.template.php (body_above sub template - eval?)', 227),
(685, 1615317315, 8, '', '?', '2: Undefined array key &quot;active_button&quot;', '21e037f610d0cb4dc5f1532ce5bf14f4', 'undefined_vars', 'C:/xamppp/htdocs/forum/Themes/alphacentauri20rev5/BoardIndex.template.php (body_above sub template - eval?)', 228),
(686, 1615317315, 8, '', '?', '2: Undefined array key &quot;active_button&quot;', '21e037f610d0cb4dc5f1532ce5bf14f4', 'undefined_vars', 'C:/xamppp/htdocs/forum/Themes/alphacentauri20rev5/BoardIndex.template.php (body_above sub template - eval?)', 227),
(687, 1615317315, 8, '', '?', '2: Undefined array key &quot;active_button&quot;', '21e037f610d0cb4dc5f1532ce5bf14f4', 'undefined_vars', 'C:/xamppp/htdocs/forum/Themes/alphacentauri20rev5/BoardIndex.template.php (body_above sub template - eval?)', 228),
(688, 1615317315, 8, '', '?', '2: Undefined array key &quot;active_button&quot;', '21e037f610d0cb4dc5f1532ce5bf14f4', 'undefined_vars', 'C:/xamppp/htdocs/forum/Themes/alphacentauri20rev5/BoardIndex.template.php (body_above sub template - eval?)', 227),
(689, 1615317315, 8, '', '?', '2: Undefined array key &quot;active_button&quot;', '21e037f610d0cb4dc5f1532ce5bf14f4', 'undefined_vars', 'C:/xamppp/htdocs/forum/Themes/alphacentauri20rev5/BoardIndex.template.php (body_above sub template - eval?)', 228),
(690, 1615317315, 8, '', '?', '2: Undefined array key &quot;active_button&quot;', '21e037f610d0cb4dc5f1532ce5bf14f4', 'undefined_vars', 'C:/xamppp/htdocs/forum/Themes/alphacentauri20rev5/BoardIndex.template.php (body_above sub template - eval?)', 227),
(691, 1615317315, 8, '', '?', '2: Undefined array key &quot;active_button&quot;', '21e037f610d0cb4dc5f1532ce5bf14f4', 'undefined_vars', 'C:/xamppp/htdocs/forum/Themes/alphacentauri20rev5/BoardIndex.template.php (body_above sub template - eval?)', 228),
(692, 1615317320, 8, '', '?action=profile', '2: Undefined array key &quot;active_button&quot;', '21e037f610d0cb4dc5f1532ce5bf14f4', 'undefined_vars', 'C:/xamppp/htdocs/forum/Themes/default/languages/Who.portuguese_brazilian-utf8.php (body_above sub template - eval?)', 227),
(693, 1615317320, 8, '', '?action=profile', '2: Undefined array key &quot;active_button&quot;', '21e037f610d0cb4dc5f1532ce5bf14f4', 'undefined_vars', 'C:/xamppp/htdocs/forum/Themes/default/languages/Who.portuguese_brazilian-utf8.php (body_above sub template - eval?)', 228),
(694, 1615317320, 8, '', '?action=profile', '2: Undefined array key &quot;active_button&quot;', '21e037f610d0cb4dc5f1532ce5bf14f4', 'undefined_vars', 'C:/xamppp/htdocs/forum/Themes/default/languages/Who.portuguese_brazilian-utf8.php (body_above sub template - eval?)', 227),
(695, 1615317320, 8, '', '?action=profile', '2: Undefined array key &quot;active_button&quot;', '21e037f610d0cb4dc5f1532ce5bf14f4', 'undefined_vars', 'C:/xamppp/htdocs/forum/Themes/default/languages/Who.portuguese_brazilian-utf8.php (body_above sub template - eval?)', 228),
(696, 1615317320, 8, '', '?action=profile', '2: Undefined array key &quot;active_button&quot;', '21e037f610d0cb4dc5f1532ce5bf14f4', 'undefined_vars', 'C:/xamppp/htdocs/forum/Themes/default/languages/Who.portuguese_brazilian-utf8.php (body_above sub template - eval?)', 227),
(697, 1615317320, 8, '', '?action=profile', '2: Undefined array key &quot;active_button&quot;', '21e037f610d0cb4dc5f1532ce5bf14f4', 'undefined_vars', 'C:/xamppp/htdocs/forum/Themes/default/languages/Who.portuguese_brazilian-utf8.php (body_above sub template - eval?)', 228),
(698, 1615317320, 8, '', '?action=profile', '2: Undefined array key &quot;active_button&quot;', '21e037f610d0cb4dc5f1532ce5bf14f4', 'undefined_vars', 'C:/xamppp/htdocs/forum/Themes/default/languages/Who.portuguese_brazilian-utf8.php (body_above sub template - eval?)', 227),
(699, 1615317320, 8, '', '?action=profile', '2: Undefined array key &quot;active_button&quot;', '21e037f610d0cb4dc5f1532ce5bf14f4', 'undefined_vars', 'C:/xamppp/htdocs/forum/Themes/default/languages/Who.portuguese_brazilian-utf8.php (body_above sub template - eval?)', 228),
(700, 1615317320, 8, '', '?action=profile', '2: Undefined array key &quot;active_button&quot;', '21e037f610d0cb4dc5f1532ce5bf14f4', 'undefined_vars', 'C:/xamppp/htdocs/forum/Themes/default/languages/Who.portuguese_brazilian-utf8.php (body_above sub template - eval?)', 227),
(701, 1615317320, 8, '', '?action=profile', '2: Undefined array key &quot;active_button&quot;', '21e037f610d0cb4dc5f1532ce5bf14f4', 'undefined_vars', 'C:/xamppp/htdocs/forum/Themes/default/languages/Who.portuguese_brazilian-utf8.php (body_above sub template - eval?)', 228),
(702, 1615317320, 8, '', '?action=profile', '2: Undefined array key &quot;active_button&quot;', '21e037f610d0cb4dc5f1532ce5bf14f4', 'undefined_vars', 'C:/xamppp/htdocs/forum/Themes/default/languages/Who.portuguese_brazilian-utf8.php (body_above sub template - eval?)', 227),
(703, 1615317320, 8, '', '?action=profile', '2: Undefined array key &quot;active_button&quot;', '21e037f610d0cb4dc5f1532ce5bf14f4', 'undefined_vars', 'C:/xamppp/htdocs/forum/Themes/default/languages/Who.portuguese_brazilian-utf8.php (body_above sub template - eval?)', 228),
(704, 1615317320, 8, '', '?action=profile', '2: Undefined array key &quot;active_button&quot;', '21e037f610d0cb4dc5f1532ce5bf14f4', 'undefined_vars', 'C:/xamppp/htdocs/forum/Themes/default/languages/Who.portuguese_brazilian-utf8.php (body_above sub template - eval?)', 227),
(705, 1615317320, 8, '', '?action=profile', '2: Undefined array key &quot;active_button&quot;', '21e037f610d0cb4dc5f1532ce5bf14f4', 'undefined_vars', 'C:/xamppp/htdocs/forum/Themes/default/languages/Who.portuguese_brazilian-utf8.php (body_above sub template - eval?)', 228),
(706, 1615318530, 8, '', '?action=mlist', '2: Undefined array key &quot;active_button&quot;', '21e037f610d0cb4dc5f1532ce5bf14f4', 'undefined_vars', 'C:/xamppp/htdocs/forum/Themes/default/Memberlist.template.php (body_above sub template - eval?)', 227),
(707, 1615318530, 8, '', '?action=mlist', '2: Undefined array key &quot;active_button&quot;', '21e037f610d0cb4dc5f1532ce5bf14f4', 'undefined_vars', 'C:/xamppp/htdocs/forum/Themes/default/Memberlist.template.php (body_above sub template - eval?)', 228),
(708, 1615318530, 8, '', '?action=mlist', '2: Undefined array key &quot;active_button&quot;', '21e037f610d0cb4dc5f1532ce5bf14f4', 'undefined_vars', 'C:/xamppp/htdocs/forum/Themes/default/Memberlist.template.php (body_above sub template - eval?)', 227),
(709, 1615318530, 8, '', '?action=mlist', '2: Undefined array key &quot;active_button&quot;', '21e037f610d0cb4dc5f1532ce5bf14f4', 'undefined_vars', 'C:/xamppp/htdocs/forum/Themes/default/Memberlist.template.php (body_above sub template - eval?)', 228),
(710, 1615318530, 8, '', '?action=mlist', '2: Undefined array key &quot;active_button&quot;', '21e037f610d0cb4dc5f1532ce5bf14f4', 'undefined_vars', 'C:/xamppp/htdocs/forum/Themes/default/Memberlist.template.php (body_above sub template - eval?)', 227),
(711, 1615318530, 8, '', '?action=mlist', '2: Undefined array key &quot;active_button&quot;', '21e037f610d0cb4dc5f1532ce5bf14f4', 'undefined_vars', 'C:/xamppp/htdocs/forum/Themes/default/Memberlist.template.php (body_above sub template - eval?)', 228),
(712, 1615318530, 8, '', '?action=mlist', '2: Undefined array key &quot;active_button&quot;', '21e037f610d0cb4dc5f1532ce5bf14f4', 'undefined_vars', 'C:/xamppp/htdocs/forum/Themes/default/Memberlist.template.php (body_above sub template - eval?)', 227),
(713, 1615318530, 8, '', '?action=mlist', '2: Undefined array key &quot;active_button&quot;', '21e037f610d0cb4dc5f1532ce5bf14f4', 'undefined_vars', 'C:/xamppp/htdocs/forum/Themes/default/Memberlist.template.php (body_above sub template - eval?)', 228),
(714, 1615318530, 8, '', '?action=mlist', '2: Undefined array key &quot;active_button&quot;', '21e037f610d0cb4dc5f1532ce5bf14f4', 'undefined_vars', 'C:/xamppp/htdocs/forum/Themes/default/Memberlist.template.php (body_above sub template - eval?)', 227),
(715, 1615318530, 8, '', '?action=mlist', '2: Undefined array key &quot;active_button&quot;', '21e037f610d0cb4dc5f1532ce5bf14f4', 'undefined_vars', 'C:/xamppp/htdocs/forum/Themes/default/Memberlist.template.php (body_above sub template - eval?)', 228),
(716, 1615318530, 8, '', '?action=mlist', '2: Undefined array key &quot;active_button&quot;', '21e037f610d0cb4dc5f1532ce5bf14f4', 'undefined_vars', 'C:/xamppp/htdocs/forum/Themes/default/Memberlist.template.php (body_above sub template - eval?)', 227),
(717, 1615318530, 8, '', '?action=mlist', '2: Undefined array key &quot;active_button&quot;', '21e037f610d0cb4dc5f1532ce5bf14f4', 'undefined_vars', 'C:/xamppp/htdocs/forum/Themes/default/Memberlist.template.php (body_above sub template - eval?)', 228),
(718, 1615318530, 8, '', '?action=mlist', '2: Undefined array key &quot;active_button&quot;', '21e037f610d0cb4dc5f1532ce5bf14f4', 'undefined_vars', 'C:/xamppp/htdocs/forum/Themes/default/Memberlist.template.php (body_above sub template - eval?)', 227),
(719, 1615318530, 8, '', '?action=mlist', '2: Undefined array key &quot;active_button&quot;', '21e037f610d0cb4dc5f1532ce5bf14f4', 'undefined_vars', 'C:/xamppp/htdocs/forum/Themes/default/Memberlist.template.php (body_above sub template - eval?)', 228),
(720, 1615318890, 8, '', '?', '2: Undefined array key &quot;active_button&quot;', '21e037f610d0cb4dc5f1532ce5bf14f4', 'undefined_vars', 'C:/xamppp/htdocs/forum/Themes/alphacentauri20rev5/BoardIndex.template.php (body_above sub template - eval?)', 227),
(721, 1615318890, 8, '', '?', '2: Undefined array key &quot;active_button&quot;', '21e037f610d0cb4dc5f1532ce5bf14f4', 'undefined_vars', 'C:/xamppp/htdocs/forum/Themes/alphacentauri20rev5/BoardIndex.template.php (body_above sub template - eval?)', 228),
(722, 1615318890, 8, '', '?', '2: Undefined array key &quot;active_button&quot;', '21e037f610d0cb4dc5f1532ce5bf14f4', 'undefined_vars', 'C:/xamppp/htdocs/forum/Themes/alphacentauri20rev5/BoardIndex.template.php (body_above sub template - eval?)', 227),
(723, 1615318890, 8, '', '?', '2: Undefined array key &quot;active_button&quot;', '21e037f610d0cb4dc5f1532ce5bf14f4', 'undefined_vars', 'C:/xamppp/htdocs/forum/Themes/alphacentauri20rev5/BoardIndex.template.php (body_above sub template - eval?)', 228),
(724, 1615318890, 8, '', '?', '2: Undefined array key &quot;active_button&quot;', '21e037f610d0cb4dc5f1532ce5bf14f4', 'undefined_vars', 'C:/xamppp/htdocs/forum/Themes/alphacentauri20rev5/BoardIndex.template.php (body_above sub template - eval?)', 227),
(725, 1615318890, 8, '', '?', '2: Undefined array key &quot;active_button&quot;', '21e037f610d0cb4dc5f1532ce5bf14f4', 'undefined_vars', 'C:/xamppp/htdocs/forum/Themes/alphacentauri20rev5/BoardIndex.template.php (body_above sub template - eval?)', 228),
(726, 1615318890, 8, '', '?', '2: Undefined array key &quot;active_button&quot;', '21e037f610d0cb4dc5f1532ce5bf14f4', 'undefined_vars', 'C:/xamppp/htdocs/forum/Themes/alphacentauri20rev5/BoardIndex.template.php (body_above sub template - eval?)', 227),
(727, 1615318890, 8, '', '?', '2: Undefined array key &quot;active_button&quot;', '21e037f610d0cb4dc5f1532ce5bf14f4', 'undefined_vars', 'C:/xamppp/htdocs/forum/Themes/alphacentauri20rev5/BoardIndex.template.php (body_above sub template - eval?)', 228),
(728, 1615318890, 8, '', '?', '2: Undefined array key &quot;active_button&quot;', '21e037f610d0cb4dc5f1532ce5bf14f4', 'undefined_vars', 'C:/xamppp/htdocs/forum/Themes/alphacentauri20rev5/BoardIndex.template.php (body_above sub template - eval?)', 227),
(729, 1615318890, 8, '', '?', '2: Undefined array key &quot;active_button&quot;', '21e037f610d0cb4dc5f1532ce5bf14f4', 'undefined_vars', 'C:/xamppp/htdocs/forum/Themes/alphacentauri20rev5/BoardIndex.template.php (body_above sub template - eval?)', 228),
(730, 1615318890, 8, '', '?', '2: Undefined array key &quot;active_button&quot;', '21e037f610d0cb4dc5f1532ce5bf14f4', 'undefined_vars', 'C:/xamppp/htdocs/forum/Themes/alphacentauri20rev5/BoardIndex.template.php (body_above sub template - eval?)', 227),
(731, 1615318890, 8, '', '?', '2: Undefined array key &quot;active_button&quot;', '21e037f610d0cb4dc5f1532ce5bf14f4', 'undefined_vars', 'C:/xamppp/htdocs/forum/Themes/alphacentauri20rev5/BoardIndex.template.php (body_above sub template - eval?)', 228),
(732, 1615318890, 8, '', '?', '2: Undefined array key &quot;active_button&quot;', '21e037f610d0cb4dc5f1532ce5bf14f4', 'undefined_vars', 'C:/xamppp/htdocs/forum/Themes/alphacentauri20rev5/BoardIndex.template.php (body_above sub template - eval?)', 227),
(733, 1615318890, 8, '', '?', '2: Undefined array key &quot;active_button&quot;', '21e037f610d0cb4dc5f1532ce5bf14f4', 'undefined_vars', 'C:/xamppp/htdocs/forum/Themes/alphacentauri20rev5/BoardIndex.template.php (body_above sub template - eval?)', 228);

-- --------------------------------------------------------

--
-- Estrutura da tabela `kzw_log_floodcontrol`
--

CREATE TABLE `kzw_log_floodcontrol` (
  `ip` char(16) NOT NULL DEFAULT '',
  `log_time` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `log_type` varchar(8) NOT NULL DEFAULT 'post'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `kzw_log_floodcontrol`
--

INSERT INTO `kzw_log_floodcontrol` (`ip`, `log_time`, `log_type`) VALUES
('', 1615317314, 'login'),
('', 1615243876, 'register'),
('', 1615263990, 'post');

-- --------------------------------------------------------

--
-- Estrutura da tabela `kzw_log_group_requests`
--

CREATE TABLE `kzw_log_group_requests` (
  `id_request` mediumint(8) UNSIGNED NOT NULL,
  `id_member` mediumint(8) UNSIGNED NOT NULL DEFAULT 0,
  `id_group` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `time_applied` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `reason` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura da tabela `kzw_log_karma`
--

CREATE TABLE `kzw_log_karma` (
  `id_target` mediumint(8) UNSIGNED NOT NULL DEFAULT 0,
  `id_executor` mediumint(8) UNSIGNED NOT NULL DEFAULT 0,
  `log_time` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `action` tinyint(4) NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura da tabela `kzw_log_mark_read`
--

CREATE TABLE `kzw_log_mark_read` (
  `id_member` mediumint(8) UNSIGNED NOT NULL DEFAULT 0,
  `id_board` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `id_msg` int(10) UNSIGNED NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura da tabela `kzw_log_member_notices`
--

CREATE TABLE `kzw_log_member_notices` (
  `id_notice` mediumint(8) UNSIGNED NOT NULL,
  `subject` varchar(255) NOT NULL DEFAULT '',
  `body` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura da tabela `kzw_log_notify`
--

CREATE TABLE `kzw_log_notify` (
  `id_member` mediumint(8) UNSIGNED NOT NULL DEFAULT 0,
  `id_topic` mediumint(8) UNSIGNED NOT NULL DEFAULT 0,
  `id_board` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `sent` tinyint(1) UNSIGNED NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura da tabela `kzw_log_online`
--

CREATE TABLE `kzw_log_online` (
  `session` varchar(32) NOT NULL DEFAULT '',
  `log_time` int(10) NOT NULL DEFAULT 0,
  `id_member` mediumint(8) UNSIGNED NOT NULL DEFAULT 0,
  `id_spider` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `ip` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `url` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `kzw_log_online`
--

INSERT INTO `kzw_log_online` (`session`, `log_time`, `id_member`, `id_spider`, `ip`, `url`) VALUES
('l9h98sgahq0r1heg8fp9srarja', 1615318890, 8, 0, 0, 'a:1:{s:10:\"USER_AGENT\";s:115:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/88.0.4324.190 Safari/537.36\";}');

-- --------------------------------------------------------

--
-- Estrutura da tabela `kzw_log_packages`
--

CREATE TABLE `kzw_log_packages` (
  `id_install` int(10) NOT NULL,
  `filename` varchar(255) NOT NULL DEFAULT '',
  `package_id` varchar(255) NOT NULL DEFAULT '',
  `name` varchar(255) NOT NULL DEFAULT '',
  `version` varchar(255) NOT NULL DEFAULT '',
  `id_member_installed` mediumint(8) NOT NULL DEFAULT 0,
  `member_installed` varchar(255) NOT NULL DEFAULT '',
  `time_installed` int(10) NOT NULL DEFAULT 0,
  `id_member_removed` mediumint(8) NOT NULL DEFAULT 0,
  `member_removed` varchar(255) NOT NULL DEFAULT '',
  `time_removed` int(10) NOT NULL DEFAULT 0,
  `install_state` tinyint(3) NOT NULL DEFAULT 1,
  `failed_steps` text NOT NULL,
  `themes_installed` varchar(255) NOT NULL DEFAULT '',
  `db_changes` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura da tabela `kzw_log_polls`
--

CREATE TABLE `kzw_log_polls` (
  `id_poll` mediumint(8) UNSIGNED NOT NULL DEFAULT 0,
  `id_member` mediumint(8) UNSIGNED NOT NULL DEFAULT 0,
  `id_choice` tinyint(3) UNSIGNED NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura da tabela `kzw_log_reported`
--

CREATE TABLE `kzw_log_reported` (
  `id_report` mediumint(8) UNSIGNED NOT NULL,
  `id_msg` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `id_topic` mediumint(8) UNSIGNED NOT NULL DEFAULT 0,
  `id_board` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `id_member` mediumint(8) UNSIGNED NOT NULL DEFAULT 0,
  `membername` varchar(255) NOT NULL DEFAULT '',
  `subject` varchar(255) NOT NULL DEFAULT '',
  `body` text NOT NULL,
  `time_started` int(10) NOT NULL DEFAULT 0,
  `time_updated` int(10) NOT NULL DEFAULT 0,
  `num_reports` mediumint(6) NOT NULL DEFAULT 0,
  `closed` tinyint(3) NOT NULL DEFAULT 0,
  `ignore_all` tinyint(3) NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura da tabela `kzw_log_reported_comments`
--

CREATE TABLE `kzw_log_reported_comments` (
  `id_comment` mediumint(8) UNSIGNED NOT NULL,
  `id_report` mediumint(8) NOT NULL DEFAULT 0,
  `id_member` mediumint(8) NOT NULL,
  `membername` varchar(255) NOT NULL DEFAULT '',
  `email_address` varchar(255) NOT NULL DEFAULT '',
  `member_ip` varchar(255) NOT NULL DEFAULT '',
  `comment` varchar(255) NOT NULL DEFAULT '',
  `time_sent` int(10) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura da tabela `kzw_log_scheduled_tasks`
--

CREATE TABLE `kzw_log_scheduled_tasks` (
  `id_log` mediumint(8) NOT NULL,
  `id_task` smallint(5) NOT NULL DEFAULT 0,
  `time_run` int(10) NOT NULL DEFAULT 0,
  `time_taken` float NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `kzw_log_scheduled_tasks`
--

INSERT INTO `kzw_log_scheduled_tasks` (`id_log`, `id_task`, `time_run`, `time_taken`) VALUES
(1, 2, 1615092306, 2),
(2, 3, 1615092311, 0),
(3, 5, 1615092315, 0),
(4, 6, 1615092319, 0),
(5, 9, 1615092326, 0),
(6, 7, 1615092331, 8),
(7, 1, 1615243838, 0),
(8, 3, 1615243850, 0),
(9, 7, 1615243910, 66),
(10, 1, 1615248336, 0),
(11, 1, 1615257514, 0),
(12, 1, 1615262463, 0),
(13, 1, 1615297784, 0),
(14, 1, 1615313406, 1);

-- --------------------------------------------------------

--
-- Estrutura da tabela `kzw_log_search_messages`
--

CREATE TABLE `kzw_log_search_messages` (
  `id_search` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `id_msg` int(10) UNSIGNED NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura da tabela `kzw_log_search_results`
--

CREATE TABLE `kzw_log_search_results` (
  `id_search` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `id_topic` mediumint(8) UNSIGNED NOT NULL DEFAULT 0,
  `id_msg` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `relevance` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `num_matches` smallint(5) UNSIGNED NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura da tabela `kzw_log_search_subjects`
--

CREATE TABLE `kzw_log_search_subjects` (
  `word` varchar(20) NOT NULL DEFAULT '',
  `id_topic` mediumint(8) UNSIGNED NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `kzw_log_search_subjects`
--

INSERT INTO `kzw_log_search_subjects` (`word`, `id_topic`) VALUES
('conceitos', 4),
('fórum', 2),
('oi', 5),
('regras', 2),
('regras', 3);

-- --------------------------------------------------------

--
-- Estrutura da tabela `kzw_log_search_topics`
--

CREATE TABLE `kzw_log_search_topics` (
  `id_search` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `id_topic` mediumint(8) UNSIGNED NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura da tabela `kzw_log_spider_hits`
--

CREATE TABLE `kzw_log_spider_hits` (
  `id_hit` int(10) UNSIGNED NOT NULL,
  `id_spider` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `log_time` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `url` varchar(255) NOT NULL DEFAULT '',
  `processed` tinyint(3) NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura da tabela `kzw_log_spider_stats`
--

CREATE TABLE `kzw_log_spider_stats` (
  `id_spider` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `page_hits` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `last_seen` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `stat_date` date NOT NULL DEFAULT '0001-01-01'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura da tabela `kzw_log_subscribed`
--

CREATE TABLE `kzw_log_subscribed` (
  `id_sublog` int(10) UNSIGNED NOT NULL,
  `id_subscribe` mediumint(8) UNSIGNED NOT NULL DEFAULT 0,
  `id_member` int(10) NOT NULL DEFAULT 0,
  `old_id_group` smallint(5) NOT NULL DEFAULT 0,
  `start_time` int(10) NOT NULL DEFAULT 0,
  `end_time` int(10) NOT NULL DEFAULT 0,
  `status` tinyint(3) NOT NULL DEFAULT 0,
  `payments_pending` tinyint(3) NOT NULL DEFAULT 0,
  `pending_details` text NOT NULL,
  `reminder_sent` tinyint(3) NOT NULL DEFAULT 0,
  `vendor_ref` varchar(255) NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura da tabela `kzw_log_topics`
--

CREATE TABLE `kzw_log_topics` (
  `id_member` mediumint(8) UNSIGNED NOT NULL DEFAULT 0,
  `id_topic` mediumint(8) UNSIGNED NOT NULL DEFAULT 0,
  `id_msg` int(10) UNSIGNED NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `kzw_log_topics`
--

INSERT INTO `kzw_log_topics` (`id_member`, `id_topic`, `id_msg`) VALUES
(7, 2, 2),
(7, 3, 3),
(7, 4, 4),
(8, 5, 5);

-- --------------------------------------------------------

--
-- Estrutura da tabela `kzw_mail_queue`
--

CREATE TABLE `kzw_mail_queue` (
  `id_mail` int(10) UNSIGNED NOT NULL,
  `time_sent` int(10) NOT NULL DEFAULT 0,
  `recipient` varchar(255) NOT NULL DEFAULT '',
  `body` text NOT NULL,
  `subject` varchar(255) NOT NULL DEFAULT '',
  `headers` text NOT NULL,
  `send_html` tinyint(3) NOT NULL DEFAULT 0,
  `priority` tinyint(3) NOT NULL DEFAULT 1,
  `private` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura da tabela `kzw_membergroups`
--

CREATE TABLE `kzw_membergroups` (
  `id_group` smallint(5) UNSIGNED NOT NULL,
  `group_name` varchar(80) NOT NULL DEFAULT '',
  `description` text NOT NULL,
  `online_color` varchar(20) NOT NULL DEFAULT '',
  `min_posts` mediumint(9) NOT NULL DEFAULT -1,
  `max_messages` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `stars` varchar(255) NOT NULL DEFAULT '',
  `group_type` tinyint(3) NOT NULL DEFAULT 0,
  `hidden` tinyint(3) NOT NULL DEFAULT 0,
  `id_parent` smallint(5) NOT NULL DEFAULT -2
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `kzw_membergroups`
--

INSERT INTO `kzw_membergroups` (`id_group`, `group_name`, `description`, `online_color`, `min_posts`, `max_messages`, `stars`, `group_type`, `hidden`, `id_parent`) VALUES
(1, 'Administrator', '', '#FF0000', -1, 0, '5#staradmin.gif', 1, 0, -2),
(2, 'Global Moderator', '', '#0000FF', -1, 0, '5#stargmod.gif', 0, 0, -2),
(3, 'Moderator', '', '', -1, 0, '5#starmod.gif', 0, 0, -2),
(4, 'Newbie', '', '', 0, 0, '1#star.gif', 0, 0, -2),
(5, 'Jr. Member', '', '', 50, 0, '2#star.gif', 0, 0, -2),
(6, 'Full Member', '', '', 100, 0, '3#star.gif', 0, 0, -2),
(7, 'Sr. Member', '', '', 250, 0, '4#star.gif', 0, 0, -2),
(8, 'Hero Member', '', '', 500, 0, '5#star.gif', 0, 0, -2);

-- --------------------------------------------------------

--
-- Estrutura da tabela `kzw_members`
--

CREATE TABLE `kzw_members` (
  `id_member` mediumint(8) UNSIGNED NOT NULL,
  `member_name` varchar(80) NOT NULL DEFAULT '',
  `date_registered` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `posts` mediumint(8) UNSIGNED NOT NULL DEFAULT 0,
  `id_group` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `lngfile` varchar(255) NOT NULL DEFAULT '',
  `last_login` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `real_name` varchar(255) NOT NULL DEFAULT '',
  `instant_messages` smallint(5) NOT NULL DEFAULT 0,
  `unread_messages` smallint(5) NOT NULL DEFAULT 0,
  `new_pm` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `buddy_list` text NOT NULL,
  `pm_ignore_list` varchar(255) NOT NULL DEFAULT '',
  `pm_prefs` mediumint(8) NOT NULL DEFAULT 0,
  `mod_prefs` varchar(20) NOT NULL DEFAULT '',
  `message_labels` text NOT NULL,
  `passwd` varchar(64) NOT NULL DEFAULT '',
  `openid_uri` text NOT NULL,
  `email_address` varchar(255) NOT NULL DEFAULT '',
  `personal_text` varchar(255) NOT NULL DEFAULT '',
  `gender` tinyint(4) UNSIGNED NOT NULL DEFAULT 0,
  `birthdate` date NOT NULL DEFAULT '0001-01-01',
  `website_title` varchar(255) NOT NULL DEFAULT '',
  `website_url` varchar(255) NOT NULL DEFAULT '',
  `location` varchar(255) NOT NULL DEFAULT '',
  `icq` varchar(255) NOT NULL DEFAULT '',
  `aim` varchar(255) NOT NULL DEFAULT '',
  `yim` varchar(32) NOT NULL DEFAULT '',
  `msn` varchar(255) NOT NULL DEFAULT '',
  `hide_email` tinyint(4) NOT NULL DEFAULT 0,
  `show_online` tinyint(4) NOT NULL DEFAULT 1,
  `time_format` varchar(80) NOT NULL DEFAULT '',
  `signature` text NOT NULL,
  `time_offset` float NOT NULL DEFAULT 0,
  `avatar` varchar(255) NOT NULL DEFAULT '',
  `pm_email_notify` tinyint(4) NOT NULL DEFAULT 0,
  `karma_bad` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `karma_good` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `usertitle` varchar(255) NOT NULL DEFAULT '',
  `notify_announcements` tinyint(4) NOT NULL DEFAULT 1,
  `notify_regularity` tinyint(4) NOT NULL DEFAULT 1,
  `notify_send_body` tinyint(4) NOT NULL DEFAULT 0,
  `notify_types` tinyint(4) NOT NULL DEFAULT 2,
  `member_ip` varchar(255) NOT NULL DEFAULT '',
  `member_ip2` varchar(255) NOT NULL DEFAULT '',
  `secret_question` varchar(255) NOT NULL DEFAULT '',
  `secret_answer` varchar(64) NOT NULL DEFAULT '',
  `id_theme` tinyint(4) UNSIGNED NOT NULL DEFAULT 0,
  `is_activated` tinyint(3) UNSIGNED NOT NULL DEFAULT 1,
  `validation_code` varchar(10) NOT NULL DEFAULT '',
  `id_msg_last_visit` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `additional_groups` varchar(255) NOT NULL DEFAULT '',
  `smiley_set` varchar(48) NOT NULL DEFAULT '',
  `id_post_group` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `total_time_logged_in` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `password_salt` varchar(255) NOT NULL DEFAULT '',
  `ignore_boards` text NOT NULL,
  `warning` tinyint(4) NOT NULL DEFAULT 0,
  `passwd_flood` varchar(12) NOT NULL DEFAULT '',
  `pm_receive_from` tinyint(4) UNSIGNED NOT NULL DEFAULT 1
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `kzw_members`
--

INSERT INTO `kzw_members` (`id_member`, `member_name`, `date_registered`, `posts`, `id_group`, `lngfile`, `last_login`, `real_name`, `instant_messages`, `unread_messages`, `new_pm`, `buddy_list`, `pm_ignore_list`, `pm_prefs`, `mod_prefs`, `message_labels`, `passwd`, `openid_uri`, `email_address`, `personal_text`, `gender`, `birthdate`, `website_title`, `website_url`, `location`, `icq`, `aim`, `yim`, `msn`, `hide_email`, `show_online`, `time_format`, `signature`, `time_offset`, `avatar`, `pm_email_notify`, `karma_bad`, `karma_good`, `usertitle`, `notify_announcements`, `notify_regularity`, `notify_send_body`, `notify_types`, `member_ip`, `member_ip2`, `secret_question`, `secret_answer`, `id_theme`, `is_activated`, `validation_code`, `id_msg_last_visit`, `additional_groups`, `smiley_set`, `id_post_group`, `total_time_logged_in`, `password_salt`, `ignore_boards`, `warning`, `passwd_flood`, `pm_receive_from`) VALUES
(1, 'Akirah', 1615092161, 0, 1, '', 1615250778, 'Akirah', 0, 0, 0, '', '', 0, '', '', '93347756bfa05077825d65eaaffc3e3ece53f999', '', 'r.b.s.pedrogalrao@gmail.com', '', 0, '0001-01-01', '', '', '', '', '', '', '', 0, 1, '', '', 0, '', 0, 0, 0, '', 1, 1, 0, 2, '', '', '', '', 5, 1, '', 1, '', '', 0, 1991, '1a4b', '', 0, '', 1),
(7, 'Akira_Hashimoto', 1615158000, 3, 1, '', 1615317308, 'Akira_Hashimoto', 0, 0, 0, '', '', 0, '', '', 'c8f0c3d0930681b47b9c8195200b752d83c21cfd', '', 'akirah.ofc@gmail.com', '', 0, '0001-01-01', '', '', '', '', '', '', '', 0, 1, '', '', 0, '', 0, 0, 0, '', 1, 1, 0, 2, '', '', '', '', 5, 1, '', 5, '', '', 4, 7068, '3bf4', '', 0, '', 1);

-- --------------------------------------------------------

--
-- Estrutura da tabela `kzw_messages`
--

CREATE TABLE `kzw_messages` (
  `id_msg` int(10) UNSIGNED NOT NULL,
  `id_topic` mediumint(8) UNSIGNED NOT NULL DEFAULT 0,
  `id_board` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `poster_time` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `id_member` mediumint(8) UNSIGNED NOT NULL DEFAULT 0,
  `id_msg_modified` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `subject` varchar(255) NOT NULL DEFAULT '',
  `poster_name` varchar(255) NOT NULL DEFAULT '',
  `poster_email` varchar(255) NOT NULL DEFAULT '',
  `poster_ip` varchar(255) NOT NULL DEFAULT '',
  `smileys_enabled` tinyint(4) NOT NULL DEFAULT 1,
  `modified_time` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `modified_name` varchar(255) NOT NULL DEFAULT '',
  `body` text NOT NULL,
  `icon` varchar(16) NOT NULL DEFAULT 'xx',
  `approved` tinyint(3) NOT NULL DEFAULT 1
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `kzw_messages`
--

INSERT INTO `kzw_messages` (`id_msg`, `id_topic`, `id_board`, `poster_time`, `id_member`, `id_msg_modified`, `subject`, `poster_name`, `poster_email`, `poster_ip`, `smileys_enabled`, `modified_time`, `modified_name`, `body`, `icon`, `approved`) VALUES
(2, 2, 2, 1615261861, 7, 2, 'Regras (Fórum)', 'Akira_Hashimoto', 'akirah.ofc@gmail.com', '', 1, 0, '', 'Nada ainda.', 'exclamation', 1),
(3, 3, 3, 1615262298, 7, 3, 'Regras', 'Akira_Hashimoto', 'akirah.ofc@gmail.com', '', 1, 0, '', 'Nada por enquanto', 'xx', 1),
(4, 4, 3, 1615262317, 7, 4, 'Conceitos', 'Akira_Hashimoto', 'akirah.ofc@gmail.com', '', 1, 0, '', 'Nada ainda', 'xx', 1),
(5, 5, 4, 1615263990, 8, 5, 'Oi', 'Belle_Delphine', '', '', 1, 0, '', 'Oi', 'xx', 1);

-- --------------------------------------------------------

--
-- Estrutura da tabela `kzw_message_icons`
--

CREATE TABLE `kzw_message_icons` (
  `id_icon` smallint(5) UNSIGNED NOT NULL,
  `title` varchar(80) NOT NULL DEFAULT '',
  `filename` varchar(80) NOT NULL DEFAULT '',
  `id_board` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `icon_order` smallint(5) UNSIGNED NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `kzw_message_icons`
--

INSERT INTO `kzw_message_icons` (`id_icon`, `title`, `filename`, `id_board`, `icon_order`) VALUES
(1, 'Standard', 'xx', 0, 0),
(2, 'Thumb Up', 'thumbup', 0, 1),
(3, 'Thumb Down', 'thumbdown', 0, 2),
(4, 'Exclamation point', 'exclamation', 0, 3),
(5, 'Question mark', 'question', 0, 4),
(6, 'Lamp', 'lamp', 0, 5),
(7, 'Smiley', 'smiley', 0, 6),
(8, 'Angry', 'angry', 0, 7),
(9, 'Cheesy', 'cheesy', 0, 8),
(10, 'Grin', 'grin', 0, 9),
(11, 'Sad', 'sad', 0, 10),
(12, 'Wink', 'wink', 0, 11);

-- --------------------------------------------------------

--
-- Estrutura da tabela `kzw_moderators`
--

CREATE TABLE `kzw_moderators` (
  `id_board` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `id_member` mediumint(8) UNSIGNED NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura da tabela `kzw_openid_assoc`
--

CREATE TABLE `kzw_openid_assoc` (
  `server_url` text NOT NULL,
  `handle` varchar(255) NOT NULL DEFAULT '',
  `secret` text NOT NULL,
  `issued` int(10) NOT NULL DEFAULT 0,
  `expires` int(10) NOT NULL DEFAULT 0,
  `assoc_type` varchar(64) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura da tabela `kzw_package_servers`
--

CREATE TABLE `kzw_package_servers` (
  `id_server` smallint(5) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL DEFAULT '',
  `url` varchar(255) NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `kzw_package_servers`
--

INSERT INTO `kzw_package_servers` (`id_server`, `name`, `url`) VALUES
(1, 'Simple Machines Third-party Mod Site', 'http://custom.simplemachines.org/packages/mods');

-- --------------------------------------------------------

--
-- Estrutura da tabela `kzw_permissions`
--

CREATE TABLE `kzw_permissions` (
  `id_group` smallint(5) NOT NULL DEFAULT 0,
  `permission` varchar(30) NOT NULL DEFAULT '',
  `add_deny` tinyint(4) NOT NULL DEFAULT 1
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `kzw_permissions`
--

INSERT INTO `kzw_permissions` (`id_group`, `permission`, `add_deny`) VALUES
(-1, 'search_posts', 1),
(-1, 'calendar_view', 1),
(-1, 'view_stats', 1),
(-1, 'profile_view_any', 1),
(0, 'view_mlist', 1),
(0, 'search_posts', 1),
(0, 'profile_view_own', 1),
(0, 'profile_view_any', 1),
(0, 'pm_read', 1),
(0, 'pm_send', 1),
(0, 'calendar_view', 1),
(0, 'view_stats', 1),
(0, 'who_view', 1),
(0, 'profile_identity_own', 1),
(0, 'profile_extra_own', 1),
(0, 'profile_remove_own', 1),
(0, 'profile_server_avatar', 1),
(0, 'profile_upload_avatar', 1),
(0, 'profile_remote_avatar', 1),
(0, 'karma_edit', 1),
(2, 'view_mlist', 1),
(2, 'search_posts', 1),
(2, 'profile_view_own', 1),
(2, 'profile_view_any', 1),
(2, 'pm_read', 1),
(2, 'pm_send', 1),
(2, 'calendar_view', 1),
(2, 'view_stats', 1),
(2, 'who_view', 1),
(2, 'profile_identity_own', 1),
(2, 'profile_extra_own', 1),
(2, 'profile_remove_own', 1),
(2, 'profile_server_avatar', 1),
(2, 'profile_upload_avatar', 1),
(2, 'profile_remote_avatar', 1),
(2, 'profile_title_own', 1),
(2, 'calendar_post', 1),
(2, 'calendar_edit_any', 1),
(2, 'karma_edit', 1),
(2, 'access_mod_center', 1);

-- --------------------------------------------------------

--
-- Estrutura da tabela `kzw_permission_profiles`
--

CREATE TABLE `kzw_permission_profiles` (
  `id_profile` smallint(5) NOT NULL,
  `profile_name` varchar(255) NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `kzw_permission_profiles`
--

INSERT INTO `kzw_permission_profiles` (`id_profile`, `profile_name`) VALUES
(1, 'default'),
(2, 'no_polls'),
(3, 'reply_only'),
(4, 'read_only');

-- --------------------------------------------------------

--
-- Estrutura da tabela `kzw_personal_messages`
--

CREATE TABLE `kzw_personal_messages` (
  `id_pm` int(10) UNSIGNED NOT NULL,
  `id_pm_head` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `id_member_from` mediumint(8) UNSIGNED NOT NULL DEFAULT 0,
  `deleted_by_sender` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `from_name` varchar(255) NOT NULL DEFAULT '',
  `msgtime` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `subject` varchar(255) NOT NULL DEFAULT '',
  `body` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura da tabela `kzw_pm_recipients`
--

CREATE TABLE `kzw_pm_recipients` (
  `id_pm` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `id_member` mediumint(8) UNSIGNED NOT NULL DEFAULT 0,
  `labels` varchar(60) NOT NULL DEFAULT '-1',
  `bcc` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `is_read` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `is_new` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `deleted` tinyint(3) UNSIGNED NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura da tabela `kzw_pm_rules`
--

CREATE TABLE `kzw_pm_rules` (
  `id_rule` int(10) UNSIGNED NOT NULL,
  `id_member` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `rule_name` varchar(60) NOT NULL,
  `criteria` text NOT NULL,
  `actions` text NOT NULL,
  `delete_pm` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `is_or` tinyint(3) UNSIGNED NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura da tabela `kzw_polls`
--

CREATE TABLE `kzw_polls` (
  `id_poll` mediumint(8) UNSIGNED NOT NULL,
  `question` varchar(255) NOT NULL DEFAULT '',
  `voting_locked` tinyint(1) NOT NULL DEFAULT 0,
  `max_votes` tinyint(3) UNSIGNED NOT NULL DEFAULT 1,
  `expire_time` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `hide_results` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `change_vote` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `guest_vote` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `num_guest_voters` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `reset_poll` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `id_member` mediumint(8) NOT NULL DEFAULT 0,
  `poster_name` varchar(255) NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura da tabela `kzw_poll_choices`
--

CREATE TABLE `kzw_poll_choices` (
  `id_poll` mediumint(8) UNSIGNED NOT NULL DEFAULT 0,
  `id_choice` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `label` varchar(255) NOT NULL DEFAULT '',
  `votes` smallint(5) UNSIGNED NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura da tabela `kzw_scheduled_tasks`
--

CREATE TABLE `kzw_scheduled_tasks` (
  `id_task` smallint(5) NOT NULL,
  `next_time` int(10) NOT NULL DEFAULT 0,
  `time_offset` int(10) NOT NULL DEFAULT 0,
  `time_regularity` smallint(5) NOT NULL DEFAULT 0,
  `time_unit` varchar(1) NOT NULL DEFAULT 'h',
  `disabled` tinyint(3) NOT NULL DEFAULT 0,
  `task` varchar(24) NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `kzw_scheduled_tasks`
--

INSERT INTO `kzw_scheduled_tasks` (`id_task`, `next_time`, `time_offset`, `time_regularity`, `time_unit`, `disabled`, `task`) VALUES
(1, 1615320000, 0, 2, 'h', 0, 'approval_notification'),
(2, 1615680000, 0, 7, 'd', 0, 'auto_optimize'),
(3, 1615334460, 60, 1, 'd', 0, 'daily_maintenance'),
(5, 1615334400, 0, 1, 'd', 0, 'daily_digest'),
(6, 1615680000, 0, 1, 'w', 0, 'weekly_digest'),
(7, 1615398660, 150710, 1, 'd', 0, 'fetchSMfiles'),
(8, 0, 0, 1, 'd', 1, 'birthdayemails'),
(9, 1615680000, 0, 1, 'w', 0, 'weekly_maintenance'),
(10, 0, 120, 1, 'd', 1, 'paid_subscriptions');

-- --------------------------------------------------------

--
-- Estrutura da tabela `kzw_sessions`
--

CREATE TABLE `kzw_sessions` (
  `session_id` char(32) NOT NULL,
  `last_update` int(10) UNSIGNED NOT NULL,
  `data` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `kzw_sessions`
--

INSERT INTO `kzw_sessions` (`session_id`, `last_update`, `data`) VALUES
('gkob7mklis5d4pa8gl1ttjd8in', 1615092327, 'a:2:{s:13:\"session_value\";s:32:\"a3db4387bb56af7f7bff460f73631eae\";s:11:\"session_var\";s:8:\"f197d0df\";}'),
('4pop1dk03g20ho5mv83rkguvm4', 1615092417, 'a:2:{s:13:\"session_value\";s:32:\"cb582eba1640b5a4797d456cd6d29f72\";s:11:\"session_var\";s:12:\"ee078308d048\";}'),
('uutdh3q4ugmun2l0di9tb3d5aq', 1615092433, 'a:15:{s:13:\"session_value\";s:32:\"582d0691a98ac5d22b20591aab0f581b\";s:11:\"session_var\";s:12:\"ecdc98346c72\";s:2:\"mc\";a:7:{s:4:\"time\";i:1615092417;s:2:\"id\";s:1:\"1\";s:2:\"gq\";s:3:\"1=1\";s:2:\"bq\";s:3:\"1=1\";s:2:\"ap\";a:1:{i:0;i:0;}s:2:\"mb\";a:0:{}s:2:\"mq\";s:3:\"0=1\";}s:3:\"ban\";a:5:{s:12:\"last_checked\";i:1615092417;s:9:\"id_member\";i:0;s:2:\"ip\";s:0:\"\";s:3:\"ip2\";s:0:\"\";s:5:\"email\";s:0:\"\";}s:8:\"log_time\";i:1615092432;s:17:\"timeOnlineUpdated\";i:1615092327;s:7:\"old_url\";s:113:\"http://localhost/forum/index.php?action=admin;area=securitysettings;ecdc98346c72=582d0691a98ac5d22b20591aab0f581b\";s:10:\"USER_AGENT\";s:115:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/88.0.4324.190 Safari/537.36\";s:11:\"register_vv\";a:5:{s:5:\"count\";i:2;s:6:\"errors\";i:0;s:8:\"did_pass\";b:0;s:1:\"q\";a:0:{}s:4:\"code\";s:6:\"NFFVBB\";}s:19:\"registration_agreed\";b:1;s:18:\"login_SMFCookie388\";s:95:\"a:4:{i:0;s:1:\"1\";i:1;s:40:\"e3597670e68fd903a667bd509784b7bdbf61436e\";i:2;i:1804308417;i:3;i:2;}\";s:10:\"admin_time\";i:1615092417;s:17:\"id_msg_last_visit\";s:1:\"1\";s:2:\"rc\";a:3:{s:2:\"id\";s:1:\"1\";s:4:\"time\";i:1615092417;s:7:\"reports\";s:1:\"0\";}s:15:\"unread_messages\";i:0;}'),
('4932tvn5mukk7u3dq7dufnllce', 1615243843, 'a:2:{s:13:\"session_value\";s:32:\"0cafb9a014d7d24f884a018a0200f012\";s:11:\"session_var\";s:10:\"f59ddfc249\";}'),
('50k7pr70r7p2q3k663733ke5o2', 1615243876, 'a:2:{s:13:\"session_value\";s:32:\"e8b9f835a876e35faeae374b71669d11\";s:11:\"session_var\";s:9:\"a0c0403b0\";}'),
('1rao67g3dohvb35kuvpcnptlh2', 1615244022, 'a:2:{s:13:\"session_value\";s:32:\"b8cf4d16cbe74adc5494d09c98ebda1f\";s:11:\"session_var\";s:11:\"d675c0c9032\";}'),
('8pqlvoapciec3ujh5m1qvolojl', 1615244062, 'a:2:{s:13:\"session_value\";s:32:\"6075f787822549608d4e591cb28a532e\";s:11:\"session_var\";s:8:\"ae5be4e8\";}'),
('1bd34dj4jv8464rptm9fpfbmm6', 1615244099, 'a:2:{s:13:\"session_value\";s:32:\"c7a45ee054ee93c8ae03df28b96f7cf6\";s:11:\"session_var\";s:12:\"b7e861a79823\";}'),
('h4intt64edum7lopclfn6qgmss', 1615244109, 'a:2:{s:13:\"session_value\";s:32:\"ae9f68c0123f11f2c80ca47a7ba2702f\";s:11:\"session_var\";s:11:\"f2e52c0cd1d\";}'),
('qen7805boldthcs6rh984gvqes', 1615244115, 'a:2:{s:13:\"session_value\";s:32:\"65e9f421f531c4707892b9d9965940b8\";s:11:\"session_var\";s:11:\"ce3210be04e\";}'),
('b6tmdftshq48q6a58cf024rt46', 1615244121, 'a:2:{s:13:\"session_value\";s:32:\"57e72ecb144b1f3bd12f61e58a23b79a\";s:11:\"session_var\";s:8:\"f9c81186\";}'),
('pp9ciole1u9326lp112svd0iag', 1615244379, 'a:2:{s:13:\"session_value\";s:32:\"f4481662384912ee4280d51c69760233\";s:11:\"session_var\";s:12:\"f314e0c522bf\";}'),
('c5t6fhrbt5np3j0lrp3nhjkuj3', 1615244556, 'a:2:{s:13:\"session_value\";s:32:\"39ae9c0172ed695da8e06c4a1591cff7\";s:11:\"session_var\";s:7:\"b3d5b4d\";}'),
('q95tq1un8c1jl1ik8vdhh69pae', 1615248335, 'a:2:{s:13:\"session_value\";s:32:\"d0fa157172cb120437988f668339773b\";s:11:\"session_var\";s:9:\"fa8c5bde8\";}'),
('npumu2magpo97hhso2apjn9up4', 1615248358, 'a:2:{s:13:\"session_value\";s:32:\"ff3d1a0265ba9dacf4f557512f1aeb5e\";s:11:\"session_var\";s:7:\"d298207\";}'),
('9jp9h18v0rqj8erh9afdtf7fun', 1615248910, 'a:2:{s:13:\"session_value\";s:32:\"613957fa68a4e68aa778e8900e277fa0\";s:11:\"session_var\";s:7:\"b65fd00\";}'),
('r4r6ch7u44ro3kr8i9tjho6mir', 1615248924, 'a:2:{s:13:\"session_value\";s:32:\"8f77906d62c4e24d6589852f0390e2c3\";s:11:\"session_var\";s:7:\"df681e4\";}'),
('4b4o41bafj1u30fhrr3802ovl5', 1615249437, 'a:2:{s:13:\"session_value\";s:32:\"4af3e90f15842ff5e608830f1f4a5c93\";s:11:\"session_var\";s:9:\"cef93eedc\";}'),
('k7jm96rbb78iksj3v9f9ai2cqh', 1615249450, 'a:2:{s:13:\"session_value\";s:32:\"d5a48b629773aefcaf8ee5bcdd02c829\";s:11:\"session_var\";s:10:\"ad1385c8f3\";}'),
('bcibrgr6bvth9irnplb11pespi', 1615249474, 'a:2:{s:13:\"session_value\";s:32:\"33fb9e610ffbc79cfe1236e708c52c90\";s:11:\"session_var\";s:10:\"dba1312a2f\";}'),
('n6hruu33unj8jf46upesrfc8ns', 1615249478, 'a:2:{s:13:\"session_value\";s:32:\"355e816c43b4fc12ef8a8d1a93f79217\";s:11:\"session_var\";s:11:\"f6c63c0491c\";}'),
('ofdcoaaguhocu87pmpu95iqcfj', 1615250764, 'a:2:{s:13:\"session_value\";s:32:\"221c71ee4e2c8a23be02e89e9d8cbf13\";s:11:\"session_var\";s:10:\"c9e040bc1b\";}'),
('2oqkf4lq8lil4njl4jivc0ips7', 1615250778, 'a:2:{s:13:\"session_value\";s:32:\"0e7ed737810040a7e163a7e13b207e21\";s:11:\"session_var\";s:7:\"a71815c\";}'),
('s8q1eqoenuddnsto77aqqul9a5', 1615250783, 'a:2:{s:13:\"session_value\";s:32:\"abc70ba897ba074c76be5e70c00bf333\";s:11:\"session_var\";s:7:\"c3e43d3\";}'),
('kki2svjaqan25e8rq7keutc2ja', 1615250804, 'a:2:{s:13:\"session_value\";s:32:\"1eb2861f5a4b7b775ac533677f92158c\";s:11:\"session_var\";s:11:\"d5c75a8d306\";}'),
('2bj0k21a2v1m8eb5m6epvsc6bc', 1615263730, 'a:2:{s:13:\"session_value\";s:32:\"ecbf40b6b967742ca70a565c9eda5dcd\";s:11:\"session_var\";s:11:\"a33bedca8b7\";}'),
('815dru0m8u6gj5odq735amjvrc', 1615263959, 'a:2:{s:13:\"session_value\";s:32:\"74aaf202db903539abd7c657971c43d2\";s:11:\"session_var\";s:11:\"b5595dab357\";}'),
('euace8thlehq0vettcass8lfiq', 1615263996, 'a:2:{s:13:\"session_value\";s:32:\"9c7b8cfef0bd86a096fd3dec3e09ea54\";s:11:\"session_var\";s:7:\"a5e6936\";}'),
('eak59rf9g07vdm08osmegorlrn', 1615264018, 'a:2:{s:13:\"session_value\";s:32:\"dce225fbf27bb7d0a3ec0a5d21644763\";s:11:\"session_var\";s:8:\"e488f897\";}'),
('gcbqm7sh6cjd1etbspu4im2i92', 1615264251, 'a:2:{s:13:\"session_value\";s:32:\"3c35e27af8aab522afd1536b5e678bf3\";s:11:\"session_var\";s:8:\"af20ec59\";}'),
('lbcm5rclbd1enau6phs3t4e4r5', 1615264258, 'a:2:{s:13:\"session_value\";s:32:\"bbba169046ce4f0750d7ec4cc8c2fae9\";s:11:\"session_var\";s:9:\"e80f8b4a2\";}'),
('ua97rgr5sq1ah4b06m1eatclru', 1615264282, 'a:2:{s:13:\"session_value\";s:32:\"31a5798a79a0c207fd34386203aac4ba\";s:11:\"session_var\";s:9:\"fb8a91350\";}'),
('chjutpbaa00h0ecqg8v7b33lrj', 1615264317, 'a:2:{s:13:\"session_value\";s:32:\"4495fe6c1c0f5ba189fa917912c408b5\";s:11:\"session_var\";s:9:\"f98612a25\";}'),
('s346051e4ekejc9c9k2dt9q384', 1615264468, 'a:2:{s:13:\"session_value\";s:32:\"1f0966ce4542c53786c6893acd1c2b0f\";s:11:\"session_var\";s:10:\"f711c0909b\";}'),
('7knh2fscvojiotjuspfbe3pj82', 1615264522, 'a:10:{s:13:\"session_value\";s:32:\"5e74876dc6ea46b974857c49302ae5d1\";s:11:\"session_var\";s:9:\"f5fe90195\";s:2:\"mc\";a:7:{s:4:\"time\";i:1615264470;s:2:\"id\";i:0;s:2:\"gq\";s:3:\"0=1\";s:2:\"bq\";s:3:\"0=1\";s:2:\"ap\";a:0:{}s:2:\"mb\";a:0:{}s:2:\"mq\";s:3:\"0=1\";}s:3:\"ban\";a:5:{s:12:\"last_checked\";i:1615264522;s:9:\"id_member\";i:0;s:2:\"ip\";s:0:\"\";s:3:\"ip2\";s:0:\"\";s:5:\"email\";s:0:\"\";}s:8:\"log_time\";i:1615264522;s:17:\"timeOnlineUpdated\";i:1615264470;s:7:\"old_url\";s:106:\"http://localhost/forum/index.php?action=admin;area=modsettings;b9f22cab80=cf841e2742066b4937b7d1a67c2507ec\";s:10:\"USER_AGENT\";s:115:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/88.0.4324.190 Safari/537.36\";s:8:\"id_theme\";i:4;s:9:\"login_url\";s:106:\"http://localhost/forum/index.php?action=admin;area=modsettings;b9f22cab80=cf841e2742066b4937b7d1a67c2507ec\";}'),
('la1vf7frtgt8fn9n2rasa305ep', 1615297885, 'a:2:{s:13:\"session_value\";s:32:\"dc1e132b0df4fa70559ba88bbaa692fe\";s:11:\"session_var\";s:9:\"b09769a08\";}'),
('0cnltg1rmker5hh9rd51pluecp', 1615299001, 'a:2:{s:13:\"session_value\";s:32:\"1206b0c12daabe7ef4218dda62c45dc9\";s:11:\"session_var\";s:7:\"ebb993d\";}'),
('vmmvag48aff6rrhpjcg4roublr', 1615299012, 'a:2:{s:13:\"session_value\";s:32:\"77bcab024a8c052fe946d6048e39e0f2\";s:11:\"session_var\";s:11:\"e3661f95098\";}'),
('1tfgc4jvmcdghptfdmms6hdh2l', 1615313404, 'a:2:{s:13:\"session_value\";s:32:\"3415e84d2cda243aabbe34ad77ba0685\";s:11:\"session_var\";s:12:\"c8fbb9aa051b\";}'),
('98vm4clreppl6sqo3tfa4vmstp', 1615313432, 'a:2:{s:13:\"session_value\";s:32:\"c6ded73fbb35aac42665210c1c5b9cb8\";s:11:\"session_var\";s:10:\"cee3db1e76\";}'),
('0p56muiifnc4c670neg111egnv', 1615316793, 'a:2:{s:13:\"session_value\";s:32:\"479b5e0b019b95b73afa08faee253685\";s:11:\"session_var\";s:12:\"dbfb192d5a94\";}'),
('rli26ffssmbieg7lbrqe67iitc', 1615317308, 'a:2:{s:13:\"session_value\";s:32:\"9e1b570e3554d5b853c747ec178da1c0\";s:11:\"session_var\";s:11:\"ee490d3311a\";}'),
('hncot6cub43se78t06hs6ea3gr', 1615317314, 'a:2:{s:13:\"session_value\";s:32:\"d14a28cb123900136dc77ffbabe217e4\";s:11:\"session_var\";s:12:\"afd2e13f6bdb\";}'),
('l9h98sgahq0r1heg8fp9srarja', 1615330608, 'a:11:{s:13:\"session_value\";s:32:\"21e037f610d0cb4dc5f1532ce5bf14f4\";s:11:\"session_var\";s:11:\"e010ed5ef4b\";s:2:\"mc\";a:7:{s:4:\"time\";i:1615317315;s:2:\"id\";s:1:\"8\";s:2:\"gq\";s:3:\"0=1\";s:2:\"bq\";s:3:\"0=1\";s:2:\"ap\";a:0:{}s:2:\"mb\";a:0:{}s:2:\"mq\";s:3:\"0=1\";}s:3:\"ban\";a:5:{s:12:\"last_checked\";i:1615318897;s:9:\"id_member\";s:1:\"8\";s:2:\"ip\";s:0:\"\";s:3:\"ip2\";s:0:\"\";s:5:\"email\";s:0:\"\";}s:8:\"log_time\";i:1615318890;s:17:\"timeOnlineUpdated\";i:1615318890;s:7:\"old_url\";s:32:\"http://localhost/forum/index.php\";s:10:\"USER_AGENT\";s:115:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/88.0.4324.190 Safari/537.36\";s:18:\"login_SMFCookie388\";s:95:\"a:4:{i:0;s:1:\"8\";i:1;s:40:\"f48314b5d6cb6434555520b0794c5806c8e894a9\";i:2;i:1615320914;i:3;i:2;}\";s:17:\"id_msg_last_visit\";s:1:\"4\";s:15:\"unread_messages\";i:0;}');

-- --------------------------------------------------------

--
-- Estrutura da tabela `kzw_settings`
--

CREATE TABLE `kzw_settings` (
  `variable` varchar(255) NOT NULL DEFAULT '',
  `value` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `kzw_settings`
--

INSERT INTO `kzw_settings` (`variable`, `value`) VALUES
('smfVersion', '2.0.18'),
('news', 'SMF - Just Installed!'),
('compactTopicPagesContiguous', '5'),
('compactTopicPagesEnable', '1'),
('enableStickyTopics', '1'),
('todayMod', '1'),
('karmaMode', '0'),
('karmaTimeRestrictAdmins', '1'),
('enablePreviousNext', '1'),
('pollMode', '1'),
('enableVBStyleLogin', '1'),
('enableCompressedOutput', '1'),
('karmaWaitTime', '1'),
('karmaMinPosts', '0'),
('karmaLabel', 'Karma:'),
('karmaSmiteLabel', '[smite]'),
('karmaApplaudLabel', '[applaud]'),
('attachmentSizeLimit', '128'),
('attachmentPostLimit', '192'),
('attachmentNumPerPostLimit', '4'),
('attachmentDirSizeLimit', '10240'),
('attachmentUploadDir', 'C:\\xamppp\\htdocs\\forum/attachments'),
('attachmentExtensions', 'doc,gif,jpg,mpg,pdf,png,txt,zip'),
('attachmentCheckExtensions', '0'),
('attachmentShowImages', '1'),
('attachmentEnable', '1'),
('attachmentEncryptFilenames', '1'),
('attachmentThumbnails', '1'),
('attachmentThumbWidth', '150'),
('attachmentThumbHeight', '150'),
('censorIgnoreCase', '1'),
('mostOnline', '1'),
('mostOnlineToday', '1'),
('mostDate', '1615318890'),
('allow_disableAnnounce', '1'),
('trackStats', '1'),
('userLanguage', '1'),
('titlesEnable', '1'),
('topicSummaryPosts', '15'),
('enableErrorLogging', '1'),
('max_image_width', '0'),
('max_image_height', '0'),
('onlineEnable', '0'),
('cal_enabled', '0'),
('cal_maxyear', '2030'),
('cal_minyear', '2008'),
('cal_daysaslink', '0'),
('cal_defaultboard', ''),
('cal_showholidays', '1'),
('cal_showbdays', '1'),
('cal_showevents', '1'),
('cal_showweeknum', '0'),
('cal_maxspan', '7'),
('smtp_host', ''),
('smtp_port', '25'),
('smtp_username', ''),
('smtp_password', ''),
('mail_type', '0'),
('timeLoadPageEnable', '0'),
('totalMembers', '2'),
('totalTopics', '4'),
('totalMessages', '4'),
('simpleSearch', '0'),
('censor_vulgar', ''),
('censor_proper', ''),
('enablePostHTML', '0'),
('theme_allow', '1'),
('theme_default', '1'),
('theme_guests', '5'),
('enableEmbeddedFlash', '0'),
('xmlnews_enable', '1'),
('xmlnews_maxlen', '255'),
('hotTopicPosts', '15'),
('hotTopicVeryPosts', '25'),
('registration_method', '3'),
('send_validation_onChange', '0'),
('send_welcomeEmail', '1'),
('allow_editDisplayName', '1'),
('allow_hideOnline', '1'),
('guest_hideContacts', '1'),
('spamWaitTime', '5'),
('pm_spam_settings', '10,5,20'),
('reserveWord', '0'),
('reserveCase', '1'),
('reserveUser', '1'),
('reserveName', '1'),
('reserveNames', 'Admin\nWebmaster\nGuest\nroot'),
('autoLinkUrls', '1'),
('banLastUpdated', '0'),
('smileys_dir', 'C:\\xamppp\\htdocs\\forum/Smileys'),
('smileys_url', 'http://localhost/forum/Smileys'),
('avatar_directory', 'C:\\xamppp\\htdocs\\forum/avatars'),
('avatar_url', 'http://localhost/forum/avatars'),
('avatar_max_height_external', '65'),
('avatar_max_width_external', '65'),
('avatar_action_too_large', 'option_html_resize'),
('avatar_max_height_upload', '65'),
('avatar_max_width_upload', '65'),
('avatar_resize_upload', '1'),
('avatar_download_png', '1'),
('failed_login_threshold', '3'),
('oldTopicDays', '120'),
('edit_wait_time', '90'),
('edit_disable_time', '0'),
('autoFixDatabase', '1'),
('allow_guestAccess', '1'),
('time_format', '%B %d, %Y, %I:%M:%S %p'),
('number_format', '1234.00'),
('enableBBC', '1'),
('max_messageLength', '20000'),
('signature_settings', '1,300,0,0,0,0,0,0:'),
('autoOptMaxOnline', '0'),
('defaultMaxMessages', '15'),
('defaultMaxTopics', '20'),
('defaultMaxMembers', '30'),
('enableParticipation', '1'),
('recycle_enable', '0'),
('recycle_board', '0'),
('maxMsgID', '5'),
('enableAllMessages', '0'),
('fixLongWords', '0'),
('knownThemes', '1,2,3,4,5'),
('who_enabled', '1'),
('time_offset', '0'),
('cookieTime', '60'),
('lastActive', '15'),
('smiley_sets_known', 'default,aaron,akyhne'),
('smiley_sets_names', 'Alienine\'s Set\nAaron\'s Set\nAkyhne\'s Set'),
('smiley_sets_default', 'default'),
('cal_days_for_index', '7'),
('requireAgreement', '1'),
('requirePolicyAgreement', '0'),
('unapprovedMembers', '0'),
('default_personal_text', ''),
('package_make_backups', '1'),
('databaseSession_enable', '1'),
('databaseSession_loose', '1'),
('databaseSession_lifetime', '2880'),
('search_cache_size', '50'),
('search_results_per_page', '30'),
('search_weight_frequency', '30'),
('search_weight_age', '25'),
('search_weight_length', '20'),
('search_weight_subject', '15'),
('search_weight_first_message', '10'),
('search_max_results', '1200'),
('search_floodcontrol_time', '5'),
('permission_enable_deny', '0'),
('permission_enable_postgroups', '0'),
('mail_next_send', '0'),
('mail_recent', '0000000000|0'),
('settings_updated', '1615316836'),
('next_task_time', '1615320000'),
('warning_settings', '1,20,0'),
('warning_watch', '10'),
('warning_moderate', '35'),
('warning_mute', '60'),
('admin_features', ''),
('last_mod_report_action', '0'),
('pruningOptions', '30,180,180,180,30,0'),
('cache_enable', '1'),
('reg_verification', '1'),
('visual_verification_type', '3'),
('enable_buddylist', '1'),
('birthday_email', 'happy_birthday'),
('dont_repeat_theme_core', '1'),
('dont_repeat_smileys_20', '1'),
('dont_repeat_buddylists', '1'),
('attachment_image_reencode', '1'),
('attachment_image_paranoid', '0'),
('attachment_thumb_png', '1'),
('avatar_reencode', '1'),
('avatar_paranoid', '0'),
('global_character_set', 'UTF-8'),
('globalCookies', '1'),
('default_timezone', 'Etc/GMT-1'),
('memberlist_updated', '1615243874'),
('latestMember', '2'),
('latestRealName', 'Saik'),
('rand_seed', '273767196'),
('mostOnlineUpdated', '2021-03-09'),
('calendar_updated', '1615261552');

-- --------------------------------------------------------

--
-- Estrutura da tabela `kzw_smileys`
--

CREATE TABLE `kzw_smileys` (
  `id_smiley` smallint(5) UNSIGNED NOT NULL,
  `code` varchar(30) NOT NULL DEFAULT '',
  `filename` varchar(48) NOT NULL DEFAULT '',
  `description` varchar(80) NOT NULL DEFAULT '',
  `smiley_row` tinyint(4) UNSIGNED NOT NULL DEFAULT 0,
  `smiley_order` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `hidden` tinyint(4) UNSIGNED NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `kzw_smileys`
--

INSERT INTO `kzw_smileys` (`id_smiley`, `code`, `filename`, `description`, `smiley_row`, `smiley_order`, `hidden`) VALUES
(1, ':)', 'smiley.gif', 'Smiley', 0, 0, 0),
(2, ';)', 'wink.gif', 'Wink', 0, 1, 0),
(3, ':D', 'cheesy.gif', 'Cheesy', 0, 2, 0),
(4, ';D', 'grin.gif', 'Grin', 0, 3, 0),
(5, '>:(', 'angry.gif', 'Angry', 0, 4, 0),
(6, ':(', 'sad.gif', 'Sad', 0, 5, 0),
(7, ':o', 'shocked.gif', 'Shocked', 0, 6, 0),
(8, '8)', 'cool.gif', 'Cool', 0, 7, 0),
(9, '???', 'huh.gif', 'Huh?', 0, 8, 0),
(10, '::)', 'rolleyes.gif', 'Roll Eyes', 0, 9, 0),
(11, ':P', 'tongue.gif', 'Tongue', 0, 10, 0),
(12, ':-[', 'embarrassed.gif', 'Embarrassed', 0, 11, 0),
(13, ':-X', 'lipsrsealed.gif', 'Lips Sealed', 0, 12, 0),
(14, ':-\\', 'undecided.gif', 'Undecided', 0, 13, 0),
(15, ':-*', 'kiss.gif', 'Kiss', 0, 14, 0),
(16, ':\'(', 'cry.gif', 'Cry', 0, 15, 0),
(17, '>:D', 'evil.gif', 'Evil', 0, 16, 1),
(18, '^-^', 'azn.gif', 'Azn', 0, 17, 1),
(19, 'O0', 'afro.gif', 'Afro', 0, 18, 1),
(20, ':))', 'laugh.gif', 'Laugh', 0, 19, 1),
(21, 'C:-)', 'police.gif', 'Police', 0, 20, 1),
(22, 'O:-)', 'angel.gif', 'Angel', 0, 21, 1);

-- --------------------------------------------------------

--
-- Estrutura da tabela `kzw_spiders`
--

CREATE TABLE `kzw_spiders` (
  `id_spider` smallint(5) UNSIGNED NOT NULL,
  `spider_name` varchar(255) NOT NULL DEFAULT '',
  `user_agent` varchar(255) NOT NULL DEFAULT '',
  `ip_info` varchar(255) NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `kzw_spiders`
--

INSERT INTO `kzw_spiders` (`id_spider`, `spider_name`, `user_agent`, `ip_info`) VALUES
(1, 'Google', 'googlebot', ''),
(2, 'Yahoo!', 'slurp', ''),
(3, 'MSN', 'msnbot', ''),
(4, 'Google (Mobile)', 'Googlebot-Mobile', ''),
(5, 'Google (Image)', 'Googlebot-Image', ''),
(6, 'Google (AdSense)', 'Mediapartners-Google', ''),
(7, 'Google (Adwords)', 'AdsBot-Google', ''),
(8, 'Yahoo! (Mobile)', 'YahooSeeker/M1A1-R2D2', ''),
(9, 'Yahoo! (Image)', 'Yahoo-MMCrawler', ''),
(10, 'MSN (Mobile)', 'MSNBOT_Mobile', ''),
(11, 'MSN (Media)', 'msnbot-media', ''),
(12, 'Cuil', 'twiceler', ''),
(13, 'Ask', 'Teoma', ''),
(14, 'Baidu', 'Baiduspider', ''),
(15, 'Gigablast', 'Gigabot', ''),
(16, 'InternetArchive', 'ia_archiver-web.archive.org', ''),
(17, 'Alexa', 'ia_archiver', ''),
(18, 'Omgili', 'omgilibot', ''),
(19, 'EntireWeb', 'Speedy Spider', '');

-- --------------------------------------------------------

--
-- Estrutura da tabela `kzw_subscriptions`
--

CREATE TABLE `kzw_subscriptions` (
  `id_subscribe` mediumint(8) UNSIGNED NOT NULL,
  `name` varchar(60) NOT NULL DEFAULT '',
  `description` varchar(255) NOT NULL DEFAULT '',
  `cost` text NOT NULL,
  `length` varchar(6) NOT NULL DEFAULT '',
  `id_group` smallint(5) NOT NULL DEFAULT 0,
  `add_groups` varchar(40) NOT NULL DEFAULT '',
  `active` tinyint(3) NOT NULL DEFAULT 1,
  `repeatable` tinyint(3) NOT NULL DEFAULT 0,
  `allow_partial` tinyint(3) NOT NULL DEFAULT 0,
  `reminder` tinyint(3) NOT NULL DEFAULT 0,
  `email_complete` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura da tabela `kzw_themes`
--

CREATE TABLE `kzw_themes` (
  `id_member` mediumint(8) NOT NULL DEFAULT 0,
  `id_theme` tinyint(4) UNSIGNED NOT NULL DEFAULT 1,
  `variable` varchar(255) NOT NULL DEFAULT '',
  `value` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `kzw_themes`
--

INSERT INTO `kzw_themes` (`id_member`, `id_theme`, `variable`, `value`) VALUES
(0, 1, 'name', 'SMF Default Theme - Curve'),
(0, 1, 'theme_url', 'http://localhost/forum/Themes/default'),
(0, 1, 'images_url', 'http://localhost/forum/Themes/default/images'),
(0, 1, 'theme_dir', 'C:\\xamppp\\htdocs\\forum/Themes/default'),
(0, 1, 'show_bbc', '1'),
(0, 1, 'show_latest_member', '1'),
(0, 1, 'show_modify', '1'),
(0, 1, 'show_user_images', '1'),
(0, 1, 'show_blurb', '1'),
(0, 1, 'show_gender', '0'),
(0, 1, 'show_newsfader', '0'),
(0, 1, 'number_recent_posts', '0'),
(0, 1, 'show_member_bar', '1'),
(0, 1, 'linktree_link', '1'),
(0, 1, 'show_profile_buttons', '1'),
(0, 1, 'show_mark_read', '1'),
(0, 1, 'show_stats_index', '1'),
(0, 1, 'linktree_inline', '0'),
(0, 1, 'show_board_desc', '1'),
(0, 1, 'newsfader_time', '5000'),
(0, 1, 'allow_no_censored', '0'),
(0, 1, 'additional_options_collapsable', '1'),
(0, 1, 'use_image_buttons', '1'),
(0, 1, 'enable_news', '1'),
(0, 1, 'forum_width', '90%'),
(0, 2, 'name', 'Core Theme'),
(0, 2, 'theme_url', 'http://localhost/forum/Themes/core'),
(0, 2, 'images_url', 'http://localhost/forum/Themes/core/images'),
(0, 2, 'theme_dir', 'C:\\xamppp\\htdocs\\forum/Themes/core'),
(-1, 1, 'display_quick_reply', '1'),
(-1, 1, 'posts_apply_ignore_list', '1'),
(2, 1, 'policy_accepted', '1615243874'),
(2, 1, 'agreement_accepted', '1615243874'),
(2, 1, 'display_quick_reply', '1'),
(0, 3, 'theme_url', 'http://localhost/forum/Themes/Black_Berry_v2'),
(0, 3, 'images_url', 'http://localhost/forum/Themes/Black_Berry_v2/images'),
(0, 3, 'theme_dir', 'C:\\xamppp\\htdocs\\forum/Themes/Black_Berry_v2'),
(0, 3, 'name', 'Black Berry V2'),
(0, 3, 'theme_layers', 'main'),
(0, 3, 'theme_templates', 'index'),
(0, 4, 'theme_url', 'http://localhost/forum/Themes/SunRise20'),
(0, 4, 'images_url', 'http://localhost/forum/Themes/SunRise20/images'),
(0, 4, 'theme_dir', 'C:\\xamppp\\htdocs\\forum/Themes/SunRise20'),
(0, 4, 'name', 'SunRise'),
(0, 4, 'theme_layers', 'html,body'),
(0, 4, 'theme_templates', 'index'),
(0, 4, 'sr_header_logo_url_sun', ''),
(0, 4, 'sr_header_logo_url_moon', ''),
(0, 4, 'site_slogan', ''),
(0, 4, 'header_fa', ''),
(0, 4, 'forumtitle_size', ''),
(0, 4, 'uppercase_forumtitle', '0'),
(0, 4, 'default_sr_mode', '1'),
(0, 4, 'no_personal_layout', '0'),
(0, 4, 'forum_width', '90%'),
(0, 4, 'top_section_width', '0'),
(0, 4, 'sr_avatar_width', ''),
(0, 4, 'sr_avatar_force_height', '0'),
(0, 4, 'sr_topic_avatar_disable', '0'),
(0, 4, 'no_header_mountains', '0'),
(0, 4, 'no_footer_mountains', '0'),
(0, 4, 'no_header_sunmoon', '0'),
(0, 4, 'no_header_stars', '0'),
(0, 4, 'smiley_sets_default', ''),
(0, 4, 'linktree_link', '1'),
(0, 4, 'show_mark_read', '1'),
(0, 4, 'allow_no_censored', '0'),
(0, 4, 'show_newsfader', '0'),
(0, 4, 'news_boardindex_only', '0'),
(0, 4, 'newsmarquee_time', '0'),
(0, 4, 'number_recent_posts', '0'),
(0, 4, 'show_stats_index', '1'),
(0, 4, 'show_latest_member', '1'),
(0, 4, 'show_group_key', '0'),
(0, 4, 'display_who_viewing', '0'),
(0, 4, 'show_modify', '1'),
(0, 4, 'show_profile_buttons', '1'),
(0, 4, 'show_user_images', '1'),
(0, 4, 'show_blurb', '1'),
(0, 4, 'show_gender', '0'),
(0, 4, 'hide_post_group', '0'),
(0, 4, 'show_bbc', '1'),
(0, 4, 'additional_options_collapsable', '1'),
(0, 4, 'footer_copyright', 'Ruby Roleplay'),
(0, 4, 'footer_blinks_1', ''),
(0, 4, 'footer_blinks_href_1', ''),
(0, 4, 'footer_blinks_2', ''),
(0, 4, 'footer_blinks_href_2', ''),
(0, 4, 'footer_blinks_3', ''),
(0, 4, 'footer_blinks_href_3', ''),
(0, 4, 'footer_blinks_4', ''),
(0, 4, 'footer_blinks_href_4', ''),
(0, 4, 'footer_blinks_5', ''),
(0, 4, 'footer_blinks_href_5', ''),
(0, 4, 'footer_blinks_state', '0'),
(0, 4, 'facebook', ''),
(0, 4, 'youtube', ''),
(0, 4, 'twitter', ''),
(0, 4, 'steam', ''),
(0, 4, 'github', ''),
(0, 4, 'instagram', ''),
(0, 4, 'discord', ''),
(0, 4, 'more_link', ''),
(0, 4, 'more_link_label', ''),
(0, 4, 'more_link_fa', ''),
(0, 4, 'home_icon', 'fa-home'),
(0, 4, 'help_icon', 'fa-info'),
(0, 4, 'search_icon', 'fa-search'),
(0, 4, 'admin_icon', 'fa-key'),
(0, 4, 'moderate_icon', 'fa-pencil-alt'),
(0, 4, 'profile_icon', 'fa-user'),
(0, 4, 'pm_icon', 'fa-envelope'),
(0, 4, 'mlist_icon', 'fa-users'),
(0, 4, 'logout_icon', 'fa-sign-out-alt'),
(0, 4, 'login_icon', 'fa-sign-in-alt'),
(0, 4, 'register_icon', 'fa-user-plus'),
(0, 5, 'theme_url', 'http://localhost/forum/Themes/alphacentauri20rev5'),
(0, 5, 'images_url', 'http://localhost/forum/Themes/alphacentauri20rev5/images'),
(0, 5, 'theme_dir', 'C:\\xamppp\\htdocs\\forum/Themes/alphacentauri20rev5'),
(0, 5, 'name', 'AlphaCentauri'),
(0, 5, 'theme_layers', 'html,body'),
(0, 5, 'theme_templates', 'index');

-- --------------------------------------------------------

--
-- Estrutura da tabela `kzw_topics`
--

CREATE TABLE `kzw_topics` (
  `id_topic` mediumint(8) UNSIGNED NOT NULL,
  `is_sticky` tinyint(4) NOT NULL DEFAULT 0,
  `id_board` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `id_first_msg` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `id_last_msg` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `id_member_started` mediumint(8) UNSIGNED NOT NULL DEFAULT 0,
  `id_member_updated` mediumint(8) UNSIGNED NOT NULL DEFAULT 0,
  `id_poll` mediumint(8) UNSIGNED NOT NULL DEFAULT 0,
  `id_previous_board` smallint(5) NOT NULL DEFAULT 0,
  `id_previous_topic` mediumint(8) NOT NULL DEFAULT 0,
  `num_replies` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `num_views` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `locked` tinyint(4) NOT NULL DEFAULT 0,
  `unapproved_posts` smallint(5) NOT NULL DEFAULT 0,
  `approved` tinyint(3) NOT NULL DEFAULT 1
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `kzw_topics`
--

INSERT INTO `kzw_topics` (`id_topic`, `is_sticky`, `id_board`, `id_first_msg`, `id_last_msg`, `id_member_started`, `id_member_updated`, `id_poll`, `id_previous_board`, `id_previous_topic`, `num_replies`, `num_views`, `locked`, `unapproved_posts`, `approved`) VALUES
(2, 0, 2, 2, 2, 7, 7, 0, 0, 0, 0, 1, 0, 0, 1),
(3, 0, 3, 3, 3, 7, 7, 0, 0, 0, 0, 0, 0, 0, 1),
(4, 0, 3, 4, 4, 7, 7, 0, 0, 0, 0, 0, 0, 0, 1),
(5, 0, 4, 5, 5, 8, 8, 0, 0, 0, 0, 0, 0, 0, 1);

--
-- Índices para tabelas despejadas
--

--
-- Índices para tabela `kzw_admin_info_files`
--
ALTER TABLE `kzw_admin_info_files`
  ADD PRIMARY KEY (`id_file`),
  ADD KEY `filename` (`filename`(30));

--
-- Índices para tabela `kzw_attachments`
--
ALTER TABLE `kzw_attachments`
  ADD PRIMARY KEY (`id_attach`),
  ADD UNIQUE KEY `id_member` (`id_member`,`id_attach`),
  ADD KEY `id_msg` (`id_msg`),
  ADD KEY `attachment_type` (`attachment_type`);

--
-- Índices para tabela `kzw_ban_groups`
--
ALTER TABLE `kzw_ban_groups`
  ADD PRIMARY KEY (`id_ban_group`);

--
-- Índices para tabela `kzw_ban_items`
--
ALTER TABLE `kzw_ban_items`
  ADD PRIMARY KEY (`id_ban`),
  ADD KEY `id_ban_group` (`id_ban_group`);

--
-- Índices para tabela `kzw_boards`
--
ALTER TABLE `kzw_boards`
  ADD PRIMARY KEY (`id_board`),
  ADD UNIQUE KEY `categories` (`id_cat`,`id_board`),
  ADD KEY `id_parent` (`id_parent`),
  ADD KEY `id_msg_updated` (`id_msg_updated`),
  ADD KEY `member_groups` (`member_groups`(48));

--
-- Índices para tabela `kzw_board_permissions`
--
ALTER TABLE `kzw_board_permissions`
  ADD PRIMARY KEY (`id_group`,`id_profile`,`permission`);

--
-- Índices para tabela `kzw_calendar`
--
ALTER TABLE `kzw_calendar`
  ADD PRIMARY KEY (`id_event`),
  ADD KEY `start_date` (`start_date`),
  ADD KEY `end_date` (`end_date`),
  ADD KEY `topic` (`id_topic`,`id_member`);

--
-- Índices para tabela `kzw_calendar_holidays`
--
ALTER TABLE `kzw_calendar_holidays`
  ADD PRIMARY KEY (`id_holiday`),
  ADD KEY `event_date` (`event_date`);

--
-- Índices para tabela `kzw_categories`
--
ALTER TABLE `kzw_categories`
  ADD PRIMARY KEY (`id_cat`);

--
-- Índices para tabela `kzw_collapsed_categories`
--
ALTER TABLE `kzw_collapsed_categories`
  ADD PRIMARY KEY (`id_cat`,`id_member`);

--
-- Índices para tabela `kzw_custom_fields`
--
ALTER TABLE `kzw_custom_fields`
  ADD PRIMARY KEY (`id_field`),
  ADD UNIQUE KEY `col_name` (`col_name`);

--
-- Índices para tabela `kzw_group_moderators`
--
ALTER TABLE `kzw_group_moderators`
  ADD PRIMARY KEY (`id_group`,`id_member`);

--
-- Índices para tabela `kzw_log_actions`
--
ALTER TABLE `kzw_log_actions`
  ADD PRIMARY KEY (`id_action`),
  ADD KEY `id_log` (`id_log`),
  ADD KEY `log_time` (`log_time`),
  ADD KEY `id_member` (`id_member`),
  ADD KEY `id_board` (`id_board`),
  ADD KEY `id_msg` (`id_msg`);

--
-- Índices para tabela `kzw_log_activity`
--
ALTER TABLE `kzw_log_activity`
  ADD PRIMARY KEY (`date`),
  ADD KEY `most_on` (`most_on`);

--
-- Índices para tabela `kzw_log_banned`
--
ALTER TABLE `kzw_log_banned`
  ADD PRIMARY KEY (`id_ban_log`),
  ADD KEY `log_time` (`log_time`);

--
-- Índices para tabela `kzw_log_boards`
--
ALTER TABLE `kzw_log_boards`
  ADD PRIMARY KEY (`id_member`,`id_board`);

--
-- Índices para tabela `kzw_log_comments`
--
ALTER TABLE `kzw_log_comments`
  ADD PRIMARY KEY (`id_comment`),
  ADD KEY `id_recipient` (`id_recipient`),
  ADD KEY `log_time` (`log_time`),
  ADD KEY `comment_type` (`comment_type`);

--
-- Índices para tabela `kzw_log_errors`
--
ALTER TABLE `kzw_log_errors`
  ADD PRIMARY KEY (`id_error`),
  ADD KEY `log_time` (`log_time`),
  ADD KEY `id_member` (`id_member`),
  ADD KEY `ip` (`ip`);

--
-- Índices para tabela `kzw_log_floodcontrol`
--
ALTER TABLE `kzw_log_floodcontrol`
  ADD PRIMARY KEY (`ip`,`log_type`);

--
-- Índices para tabela `kzw_log_group_requests`
--
ALTER TABLE `kzw_log_group_requests`
  ADD PRIMARY KEY (`id_request`),
  ADD UNIQUE KEY `id_member` (`id_member`,`id_group`);

--
-- Índices para tabela `kzw_log_karma`
--
ALTER TABLE `kzw_log_karma`
  ADD PRIMARY KEY (`id_target`,`id_executor`),
  ADD KEY `log_time` (`log_time`);

--
-- Índices para tabela `kzw_log_mark_read`
--
ALTER TABLE `kzw_log_mark_read`
  ADD PRIMARY KEY (`id_member`,`id_board`);

--
-- Índices para tabela `kzw_log_member_notices`
--
ALTER TABLE `kzw_log_member_notices`
  ADD PRIMARY KEY (`id_notice`);

--
-- Índices para tabela `kzw_log_notify`
--
ALTER TABLE `kzw_log_notify`
  ADD PRIMARY KEY (`id_member`,`id_topic`,`id_board`),
  ADD KEY `id_topic` (`id_topic`,`id_member`);

--
-- Índices para tabela `kzw_log_online`
--
ALTER TABLE `kzw_log_online`
  ADD PRIMARY KEY (`session`),
  ADD KEY `log_time` (`log_time`),
  ADD KEY `id_member` (`id_member`);

--
-- Índices para tabela `kzw_log_packages`
--
ALTER TABLE `kzw_log_packages`
  ADD PRIMARY KEY (`id_install`),
  ADD KEY `filename` (`filename`(15));

--
-- Índices para tabela `kzw_log_polls`
--
ALTER TABLE `kzw_log_polls`
  ADD KEY `id_poll` (`id_poll`,`id_member`,`id_choice`);

--
-- Índices para tabela `kzw_log_reported`
--
ALTER TABLE `kzw_log_reported`
  ADD PRIMARY KEY (`id_report`),
  ADD KEY `id_member` (`id_member`),
  ADD KEY `id_topic` (`id_topic`),
  ADD KEY `closed` (`closed`),
  ADD KEY `time_started` (`time_started`),
  ADD KEY `id_msg` (`id_msg`);

--
-- Índices para tabela `kzw_log_reported_comments`
--
ALTER TABLE `kzw_log_reported_comments`
  ADD PRIMARY KEY (`id_comment`),
  ADD KEY `id_report` (`id_report`),
  ADD KEY `id_member` (`id_member`),
  ADD KEY `time_sent` (`time_sent`);

--
-- Índices para tabela `kzw_log_scheduled_tasks`
--
ALTER TABLE `kzw_log_scheduled_tasks`
  ADD PRIMARY KEY (`id_log`);

--
-- Índices para tabela `kzw_log_search_messages`
--
ALTER TABLE `kzw_log_search_messages`
  ADD PRIMARY KEY (`id_search`,`id_msg`);

--
-- Índices para tabela `kzw_log_search_results`
--
ALTER TABLE `kzw_log_search_results`
  ADD PRIMARY KEY (`id_search`,`id_topic`);

--
-- Índices para tabela `kzw_log_search_subjects`
--
ALTER TABLE `kzw_log_search_subjects`
  ADD PRIMARY KEY (`word`,`id_topic`),
  ADD KEY `id_topic` (`id_topic`);

--
-- Índices para tabela `kzw_log_search_topics`
--
ALTER TABLE `kzw_log_search_topics`
  ADD PRIMARY KEY (`id_search`,`id_topic`);

--
-- Índices para tabela `kzw_log_spider_hits`
--
ALTER TABLE `kzw_log_spider_hits`
  ADD PRIMARY KEY (`id_hit`),
  ADD KEY `id_spider` (`id_spider`),
  ADD KEY `log_time` (`log_time`),
  ADD KEY `processed` (`processed`);

--
-- Índices para tabela `kzw_log_spider_stats`
--
ALTER TABLE `kzw_log_spider_stats`
  ADD PRIMARY KEY (`stat_date`,`id_spider`);

--
-- Índices para tabela `kzw_log_subscribed`
--
ALTER TABLE `kzw_log_subscribed`
  ADD PRIMARY KEY (`id_sublog`),
  ADD UNIQUE KEY `id_subscribe` (`id_subscribe`,`id_member`),
  ADD KEY `end_time` (`end_time`),
  ADD KEY `reminder_sent` (`reminder_sent`),
  ADD KEY `payments_pending` (`payments_pending`),
  ADD KEY `status` (`status`),
  ADD KEY `id_member` (`id_member`);

--
-- Índices para tabela `kzw_log_topics`
--
ALTER TABLE `kzw_log_topics`
  ADD PRIMARY KEY (`id_member`,`id_topic`),
  ADD KEY `id_topic` (`id_topic`);

--
-- Índices para tabela `kzw_mail_queue`
--
ALTER TABLE `kzw_mail_queue`
  ADD PRIMARY KEY (`id_mail`),
  ADD KEY `time_sent` (`time_sent`),
  ADD KEY `mail_priority` (`priority`,`id_mail`);

--
-- Índices para tabela `kzw_membergroups`
--
ALTER TABLE `kzw_membergroups`
  ADD PRIMARY KEY (`id_group`),
  ADD KEY `min_posts` (`min_posts`);

--
-- Índices para tabela `kzw_members`
--
ALTER TABLE `kzw_members`
  ADD PRIMARY KEY (`id_member`),
  ADD KEY `member_name` (`member_name`),
  ADD KEY `real_name` (`real_name`),
  ADD KEY `date_registered` (`date_registered`),
  ADD KEY `id_group` (`id_group`),
  ADD KEY `birthdate` (`birthdate`),
  ADD KEY `posts` (`posts`),
  ADD KEY `last_login` (`last_login`),
  ADD KEY `lngfile` (`lngfile`(30)),
  ADD KEY `id_post_group` (`id_post_group`),
  ADD KEY `warning` (`warning`),
  ADD KEY `total_time_logged_in` (`total_time_logged_in`),
  ADD KEY `id_theme` (`id_theme`);

--
-- Índices para tabela `kzw_messages`
--
ALTER TABLE `kzw_messages`
  ADD PRIMARY KEY (`id_msg`),
  ADD UNIQUE KEY `topic` (`id_topic`,`id_msg`),
  ADD UNIQUE KEY `id_board` (`id_board`,`id_msg`),
  ADD UNIQUE KEY `id_member` (`id_member`,`id_msg`),
  ADD KEY `approved` (`approved`),
  ADD KEY `ip_index` (`poster_ip`(15),`id_topic`),
  ADD KEY `participation` (`id_member`,`id_topic`),
  ADD KEY `show_posts` (`id_member`,`id_board`),
  ADD KEY `id_topic` (`id_topic`),
  ADD KEY `id_member_msg` (`id_member`,`approved`,`id_msg`),
  ADD KEY `current_topic` (`id_topic`,`id_msg`,`id_member`,`approved`),
  ADD KEY `related_ip` (`id_member`,`poster_ip`,`id_msg`);

--
-- Índices para tabela `kzw_message_icons`
--
ALTER TABLE `kzw_message_icons`
  ADD PRIMARY KEY (`id_icon`),
  ADD KEY `id_board` (`id_board`);

--
-- Índices para tabela `kzw_moderators`
--
ALTER TABLE `kzw_moderators`
  ADD PRIMARY KEY (`id_board`,`id_member`);

--
-- Índices para tabela `kzw_openid_assoc`
--
ALTER TABLE `kzw_openid_assoc`
  ADD PRIMARY KEY (`server_url`(125),`handle`(125)),
  ADD KEY `expires` (`expires`);

--
-- Índices para tabela `kzw_package_servers`
--
ALTER TABLE `kzw_package_servers`
  ADD PRIMARY KEY (`id_server`);

--
-- Índices para tabela `kzw_permissions`
--
ALTER TABLE `kzw_permissions`
  ADD PRIMARY KEY (`id_group`,`permission`);

--
-- Índices para tabela `kzw_permission_profiles`
--
ALTER TABLE `kzw_permission_profiles`
  ADD PRIMARY KEY (`id_profile`);

--
-- Índices para tabela `kzw_personal_messages`
--
ALTER TABLE `kzw_personal_messages`
  ADD PRIMARY KEY (`id_pm`),
  ADD KEY `id_member` (`id_member_from`,`deleted_by_sender`),
  ADD KEY `msgtime` (`msgtime`),
  ADD KEY `id_pm_head` (`id_pm_head`);

--
-- Índices para tabela `kzw_pm_recipients`
--
ALTER TABLE `kzw_pm_recipients`
  ADD PRIMARY KEY (`id_pm`,`id_member`),
  ADD UNIQUE KEY `id_member` (`id_member`,`deleted`,`id_pm`);

--
-- Índices para tabela `kzw_pm_rules`
--
ALTER TABLE `kzw_pm_rules`
  ADD PRIMARY KEY (`id_rule`),
  ADD KEY `id_member` (`id_member`),
  ADD KEY `delete_pm` (`delete_pm`);

--
-- Índices para tabela `kzw_polls`
--
ALTER TABLE `kzw_polls`
  ADD PRIMARY KEY (`id_poll`);

--
-- Índices para tabela `kzw_poll_choices`
--
ALTER TABLE `kzw_poll_choices`
  ADD PRIMARY KEY (`id_poll`,`id_choice`);

--
-- Índices para tabela `kzw_scheduled_tasks`
--
ALTER TABLE `kzw_scheduled_tasks`
  ADD PRIMARY KEY (`id_task`),
  ADD UNIQUE KEY `task` (`task`),
  ADD KEY `next_time` (`next_time`),
  ADD KEY `disabled` (`disabled`);

--
-- Índices para tabela `kzw_sessions`
--
ALTER TABLE `kzw_sessions`
  ADD PRIMARY KEY (`session_id`);

--
-- Índices para tabela `kzw_settings`
--
ALTER TABLE `kzw_settings`
  ADD PRIMARY KEY (`variable`(30));

--
-- Índices para tabela `kzw_smileys`
--
ALTER TABLE `kzw_smileys`
  ADD PRIMARY KEY (`id_smiley`);

--
-- Índices para tabela `kzw_spiders`
--
ALTER TABLE `kzw_spiders`
  ADD PRIMARY KEY (`id_spider`);

--
-- Índices para tabela `kzw_subscriptions`
--
ALTER TABLE `kzw_subscriptions`
  ADD PRIMARY KEY (`id_subscribe`),
  ADD KEY `active` (`active`);

--
-- Índices para tabela `kzw_themes`
--
ALTER TABLE `kzw_themes`
  ADD PRIMARY KEY (`id_theme`,`id_member`,`variable`(30)),
  ADD KEY `id_member` (`id_member`);

--
-- Índices para tabela `kzw_topics`
--
ALTER TABLE `kzw_topics`
  ADD PRIMARY KEY (`id_topic`),
  ADD UNIQUE KEY `last_message` (`id_last_msg`,`id_board`),
  ADD UNIQUE KEY `first_message` (`id_first_msg`,`id_board`),
  ADD UNIQUE KEY `poll` (`id_poll`,`id_topic`),
  ADD KEY `is_sticky` (`is_sticky`),
  ADD KEY `approved` (`approved`),
  ADD KEY `id_board` (`id_board`),
  ADD KEY `member_started` (`id_member_started`,`id_board`),
  ADD KEY `last_message_sticky` (`id_board`,`is_sticky`,`id_last_msg`),
  ADD KEY `board_news` (`id_board`,`id_first_msg`);

--
-- AUTO_INCREMENT de tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `kzw_admin_info_files`
--
ALTER TABLE `kzw_admin_info_files`
  MODIFY `id_file` tinyint(4) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT de tabela `kzw_attachments`
--
ALTER TABLE `kzw_attachments`
  MODIFY `id_attach` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `kzw_ban_groups`
--
ALTER TABLE `kzw_ban_groups`
  MODIFY `id_ban_group` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `kzw_ban_items`
--
ALTER TABLE `kzw_ban_items`
  MODIFY `id_ban` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `kzw_boards`
--
ALTER TABLE `kzw_boards`
  MODIFY `id_board` smallint(5) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT de tabela `kzw_calendar`
--
ALTER TABLE `kzw_calendar`
  MODIFY `id_event` smallint(5) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `kzw_calendar_holidays`
--
ALTER TABLE `kzw_calendar_holidays`
  MODIFY `id_holiday` smallint(5) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=116;

--
-- AUTO_INCREMENT de tabela `kzw_categories`
--
ALTER TABLE `kzw_categories`
  MODIFY `id_cat` tinyint(4) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT de tabela `kzw_custom_fields`
--
ALTER TABLE `kzw_custom_fields`
  MODIFY `id_field` smallint(5) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `kzw_log_actions`
--
ALTER TABLE `kzw_log_actions`
  MODIFY `id_action` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `kzw_log_banned`
--
ALTER TABLE `kzw_log_banned`
  MODIFY `id_ban_log` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `kzw_log_comments`
--
ALTER TABLE `kzw_log_comments`
  MODIFY `id_comment` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `kzw_log_errors`
--
ALTER TABLE `kzw_log_errors`
  MODIFY `id_error` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=734;

--
-- AUTO_INCREMENT de tabela `kzw_log_group_requests`
--
ALTER TABLE `kzw_log_group_requests`
  MODIFY `id_request` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `kzw_log_member_notices`
--
ALTER TABLE `kzw_log_member_notices`
  MODIFY `id_notice` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `kzw_log_packages`
--
ALTER TABLE `kzw_log_packages`
  MODIFY `id_install` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `kzw_log_reported`
--
ALTER TABLE `kzw_log_reported`
  MODIFY `id_report` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `kzw_log_reported_comments`
--
ALTER TABLE `kzw_log_reported_comments`
  MODIFY `id_comment` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `kzw_log_scheduled_tasks`
--
ALTER TABLE `kzw_log_scheduled_tasks`
  MODIFY `id_log` mediumint(8) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT de tabela `kzw_log_spider_hits`
--
ALTER TABLE `kzw_log_spider_hits`
  MODIFY `id_hit` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `kzw_log_subscribed`
--
ALTER TABLE `kzw_log_subscribed`
  MODIFY `id_sublog` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `kzw_mail_queue`
--
ALTER TABLE `kzw_mail_queue`
  MODIFY `id_mail` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `kzw_membergroups`
--
ALTER TABLE `kzw_membergroups`
  MODIFY `id_group` smallint(5) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT de tabela `kzw_members`
--
ALTER TABLE `kzw_members`
  MODIFY `id_member` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT de tabela `kzw_messages`
--
ALTER TABLE `kzw_messages`
  MODIFY `id_msg` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de tabela `kzw_message_icons`
--
ALTER TABLE `kzw_message_icons`
  MODIFY `id_icon` smallint(5) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT de tabela `kzw_package_servers`
--
ALTER TABLE `kzw_package_servers`
  MODIFY `id_server` smallint(5) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de tabela `kzw_permission_profiles`
--
ALTER TABLE `kzw_permission_profiles`
  MODIFY `id_profile` smallint(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de tabela `kzw_personal_messages`
--
ALTER TABLE `kzw_personal_messages`
  MODIFY `id_pm` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `kzw_pm_rules`
--
ALTER TABLE `kzw_pm_rules`
  MODIFY `id_rule` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `kzw_polls`
--
ALTER TABLE `kzw_polls`
  MODIFY `id_poll` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `kzw_scheduled_tasks`
--
ALTER TABLE `kzw_scheduled_tasks`
  MODIFY `id_task` smallint(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de tabela `kzw_smileys`
--
ALTER TABLE `kzw_smileys`
  MODIFY `id_smiley` smallint(5) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT de tabela `kzw_spiders`
--
ALTER TABLE `kzw_spiders`
  MODIFY `id_spider` smallint(5) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT de tabela `kzw_subscriptions`
--
ALTER TABLE `kzw_subscriptions`
  MODIFY `id_subscribe` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `kzw_topics`
--
ALTER TABLE `kzw_topics`
  MODIFY `id_topic` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
