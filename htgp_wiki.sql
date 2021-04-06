/*
 Navicat Premium Data Transfer

 Source Server         : localhost
 Source Server Type    : MySQL
 Source Server Version : 100411
 Source Host           : localhost:3306
 Source Schema         : htgp_wiki

 Target Server Type    : MySQL
 Target Server Version : 100411
 File Encoding         : 65001

 Date: 25/01/2021 13:42:17
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for access_tokens
-- ----------------------------
DROP TABLE IF EXISTS `access_tokens`;
CREATE TABLE `access_tokens`  (
  `token` varchar(40) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `last_activity_at` datetime(0) NOT NULL,
  `lifetime_seconds` int(11) NOT NULL,
  `created_at` datetime(0) NOT NULL,
  PRIMARY KEY (`token`) USING BTREE,
  INDEX `access_tokens_user_id_foreign`(`user_id`) USING BTREE,
  CONSTRAINT `access_tokens_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of access_tokens
-- ----------------------------
INSERT INTO `access_tokens` VALUES ('5WXvkoUIlJ2c1czZ6PJhfMMf7eXQ2OJlIYhCxVaa', 4, '2021-01-21 10:04:43', 3600, '2021-01-21 10:04:43');
INSERT INTO `access_tokens` VALUES ('CtsTU77TusTnC2mbH33Mm1ecCAQWByTgeqGMxcMM', 4, '2021-01-21 10:00:25', 157680000, '2021-01-21 09:58:46');
INSERT INTO `access_tokens` VALUES ('FaaBvHqfE2nEI6usnstbu6iux0OF0abcwHeisCIl', 2, '2021-01-25 04:44:23', 157680000, '2021-01-21 09:33:04');
INSERT INTO `access_tokens` VALUES ('iEeNFE4jAkBBMsjauGaZxY4W1XjOYrDB7CeiJEz6', 3, '2021-01-21 10:44:44', 157680000, '2021-01-21 09:45:04');
INSERT INTO `access_tokens` VALUES ('ndai7UJg406vsSBTrJ1IxSd4vi6uFLFQYdHzyLAq', 1, '2021-01-21 10:03:22', 3600, '2021-01-21 10:03:22');
INSERT INTO `access_tokens` VALUES ('nGMedJPhb6hRzjvrRsZw6uIIGZzSJVyAwiER6Dtp', 1, '2021-01-21 10:04:30', 3600, '2021-01-21 10:04:30');
INSERT INTO `access_tokens` VALUES ('q47ga4s4CnkUY14vT147g3MUq5oXrMcOhOmKGv9m', 1, '2021-01-25 04:28:36', 3600, '2021-01-25 04:28:36');
INSERT INTO `access_tokens` VALUES ('qE3TNfgSLXFc4m7V7npHANeTgubQle5B1dsWuuDK', 1, '2021-01-21 10:03:01', 3600, '2021-01-21 10:03:01');
INSERT INTO `access_tokens` VALUES ('rfAc7eH3UMNSzeDwEDBgKoqwkKHfmEQZQ9WDTHqT', 5, '2021-01-21 10:34:41', 157680000, '2021-01-21 10:32:35');
INSERT INTO `access_tokens` VALUES ('rPAFBFVHJuKp8y4jPC9wtTKmjctDhNaVHOKO7QU6', 1, '2021-01-21 10:01:52', 157680000, '2021-01-21 08:50:52');
INSERT INTO `access_tokens` VALUES ('ubQgh9RhOgE1XGiASXluJkDdcI1zqghxeuYao7Fk', 1, '2021-01-21 10:02:20', 3600, '2021-01-21 10:02:20');

-- ----------------------------
-- Table structure for api_keys
-- ----------------------------
DROP TABLE IF EXISTS `api_keys`;
CREATE TABLE `api_keys`  (
  `key` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `allowed_ips` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `scopes` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `user_id` int(10) UNSIGNED NULL DEFAULT NULL,
  `created_at` datetime(0) NOT NULL,
  `last_activity_at` datetime(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `api_keys_key_unique`(`key`) USING BTREE,
  INDEX `api_keys_user_id_foreign`(`user_id`) USING BTREE,
  CONSTRAINT `api_keys_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for discussion_tag
-- ----------------------------
DROP TABLE IF EXISTS `discussion_tag`;
CREATE TABLE `discussion_tag`  (
  `discussion_id` int(10) UNSIGNED NOT NULL,
  `tag_id` int(10) UNSIGNED NOT NULL,
  PRIMARY KEY (`discussion_id`, `tag_id`) USING BTREE,
  INDEX `discussion_tag_tag_id_foreign`(`tag_id`) USING BTREE,
  CONSTRAINT `discussion_tag_discussion_id_foreign` FOREIGN KEY (`discussion_id`) REFERENCES `discussions` (`id`) ON DELETE CASCADE ON UPDATE RESTRICT,
  CONSTRAINT `discussion_tag_tag_id_foreign` FOREIGN KEY (`tag_id`) REFERENCES `tags` (`id`) ON DELETE CASCADE ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of discussion_tag
-- ----------------------------
INSERT INTO `discussion_tag` VALUES (9, 3);
INSERT INTO `discussion_tag` VALUES (9, 6);

-- ----------------------------
-- Table structure for discussion_user
-- ----------------------------
DROP TABLE IF EXISTS `discussion_user`;
CREATE TABLE `discussion_user`  (
  `user_id` int(10) UNSIGNED NOT NULL,
  `discussion_id` int(10) UNSIGNED NOT NULL,
  `last_read_at` datetime(0) NULL DEFAULT NULL,
  `last_read_post_number` int(10) UNSIGNED NULL DEFAULT NULL,
  `subscription` enum('follow','ignore') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `bookmarked_at` timestamp(0) NULL DEFAULT NULL,
  PRIMARY KEY (`user_id`, `discussion_id`) USING BTREE,
  INDEX `discussion_user_discussion_id_foreign`(`discussion_id`) USING BTREE,
  CONSTRAINT `discussion_user_discussion_id_foreign` FOREIGN KEY (`discussion_id`) REFERENCES `discussions` (`id`) ON DELETE CASCADE ON UPDATE RESTRICT,
  CONSTRAINT `discussion_user_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of discussion_user
-- ----------------------------
INSERT INTO `discussion_user` VALUES (2, 9, '2021-01-21 11:55:32', 3, NULL, NULL);

-- ----------------------------
-- Table structure for discussions
-- ----------------------------
DROP TABLE IF EXISTS `discussions`;
CREATE TABLE `discussions`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `title` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `comment_count` int(11) NOT NULL DEFAULT 1,
  `participant_count` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `post_number_index` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `created_at` datetime(0) NOT NULL,
  `user_id` int(10) UNSIGNED NULL DEFAULT NULL,
  `first_post_id` int(10) UNSIGNED NULL DEFAULT NULL,
  `last_posted_at` datetime(0) NULL DEFAULT NULL,
  `last_posted_user_id` int(10) UNSIGNED NULL DEFAULT NULL,
  `last_post_id` int(10) UNSIGNED NULL DEFAULT NULL,
  `last_post_number` int(10) UNSIGNED NULL DEFAULT NULL,
  `hidden_at` datetime(0) NULL DEFAULT NULL,
  `hidden_user_id` int(10) UNSIGNED NULL DEFAULT NULL,
  `slug` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_private` tinyint(1) NOT NULL DEFAULT 0,
  `is_approved` tinyint(1) NOT NULL DEFAULT 1,
  `is_locked` tinyint(1) NOT NULL DEFAULT 0,
  `is_sticky` tinyint(1) NOT NULL DEFAULT 0,
  `view_count` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `votes` int(11) NOT NULL,
  `hotness` double(10, 4) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `discussions_hidden_user_id_foreign`(`hidden_user_id`) USING BTREE,
  INDEX `discussions_first_post_id_foreign`(`first_post_id`) USING BTREE,
  INDEX `discussions_last_post_id_foreign`(`last_post_id`) USING BTREE,
  INDEX `discussions_last_posted_at_index`(`last_posted_at`) USING BTREE,
  INDEX `discussions_last_posted_user_id_index`(`last_posted_user_id`) USING BTREE,
  INDEX `discussions_created_at_index`(`created_at`) USING BTREE,
  INDEX `discussions_user_id_index`(`user_id`) USING BTREE,
  INDEX `discussions_comment_count_index`(`comment_count`) USING BTREE,
  INDEX `discussions_participant_count_index`(`participant_count`) USING BTREE,
  INDEX `discussions_hidden_at_index`(`hidden_at`) USING BTREE,
  INDEX `discussions_is_locked_index`(`is_locked`) USING BTREE,
  INDEX `discussions_is_sticky_created_at_index`(`is_sticky`, `created_at`) USING BTREE,
  FULLTEXT INDEX `title`(`title`),
  CONSTRAINT `discussions_first_post_id_foreign` FOREIGN KEY (`first_post_id`) REFERENCES `posts` (`id`) ON DELETE SET NULL ON UPDATE RESTRICT,
  CONSTRAINT `discussions_hidden_user_id_foreign` FOREIGN KEY (`hidden_user_id`) REFERENCES `users` (`id`) ON DELETE SET NULL ON UPDATE RESTRICT,
  CONSTRAINT `discussions_last_post_id_foreign` FOREIGN KEY (`last_post_id`) REFERENCES `posts` (`id`) ON DELETE SET NULL ON UPDATE RESTRICT,
  CONSTRAINT `discussions_last_posted_user_id_foreign` FOREIGN KEY (`last_posted_user_id`) REFERENCES `users` (`id`) ON DELETE SET NULL ON UPDATE RESTRICT,
  CONSTRAINT `discussions_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE SET NULL ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 10 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of discussions
-- ----------------------------
INSERT INTO `discussions` VALUES (9, 'Cài đặt python3 và virtualenv trên ubuntu 18.04', 2, 1, 3, '2021-01-21 10:53:04', 2, 16, '2021-01-21 11:55:31', 2, 18, 3, NULL, NULL, 'cai-dat-python3-va-virtualenv-tren-ubuntu-18-04', 0, 1, 0, 0, 14, 1, -25200.6223);

-- ----------------------------
-- Table structure for doorkeys
-- ----------------------------
DROP TABLE IF EXISTS `doorkeys`;
CREATE TABLE `doorkeys`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `key` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `group_id` int(10) UNSIGNED NULL DEFAULT NULL,
  `max_uses` int(10) UNSIGNED NOT NULL,
  `uses` int(10) UNSIGNED NOT NULL,
  `activates` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `doorkeys_group_id_foreign`(`group_id`) USING BTREE,
  CONSTRAINT `doorkeys_group_id_foreign` FOREIGN KEY (`group_id`) REFERENCES `groups` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of doorkeys
-- ----------------------------
INSERT INTO `doorkeys` VALUES (2, 'HTGP', 1, 10, 3, 1);
INSERT INTO `doorkeys` VALUES (3, 'EYG5PE4G', 3, 100, 1, 1);

-- ----------------------------
-- Table structure for drafts
-- ----------------------------
DROP TABLE IF EXISTS `drafts`;
CREATE TABLE `drafts`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `user_id` int(10) UNSIGNED NOT NULL,
  `title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `relationships` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `updated_at` datetime(0) NOT NULL,
  `scheduled_for` datetime(0) NULL DEFAULT NULL,
  `scheduled_validation_error` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL,
  `ip_address` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `extra` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `drafts_user_id_foreign`(`user_id`) USING BTREE,
  CONSTRAINT `drafts_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of drafts
-- ----------------------------
INSERT INTO `drafts` VALUES (1, 2, '', '', '{\"tags\":{\"data\":[{\"type\":\"tags\",\"id\":\"3\"},{\"type\":\"tags\",\"id\":\"6\"}]}}', '2021-01-21 10:42:48', NULL, NULL, '172.16.40.164', '{\"title\":\"\"}');

-- ----------------------------
-- Table structure for email_tokens
-- ----------------------------
DROP TABLE IF EXISTS `email_tokens`;
CREATE TABLE `email_tokens`  (
  `token` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(150) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `created_at` datetime(0) NULL DEFAULT NULL,
  PRIMARY KEY (`token`) USING BTREE,
  INDEX `email_tokens_user_id_foreign`(`user_id`) USING BTREE,
  CONSTRAINT `email_tokens_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for flags
-- ----------------------------
DROP TABLE IF EXISTS `flags`;
CREATE TABLE `flags`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `post_id` int(10) UNSIGNED NOT NULL,
  `type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` int(10) UNSIGNED NULL DEFAULT NULL,
  `reason` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `reason_detail` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL,
  `created_at` datetime(0) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `flags_post_id_foreign`(`post_id`) USING BTREE,
  INDEX `flags_user_id_foreign`(`user_id`) USING BTREE,
  INDEX `flags_created_at_index`(`created_at`) USING BTREE,
  CONSTRAINT `flags_post_id_foreign` FOREIGN KEY (`post_id`) REFERENCES `posts` (`id`) ON DELETE CASCADE ON UPDATE RESTRICT,
  CONSTRAINT `flags_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for group_permission
-- ----------------------------
DROP TABLE IF EXISTS `group_permission`;
CREATE TABLE `group_permission`  (
  `group_id` int(10) UNSIGNED NOT NULL,
  `permission` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`group_id`, `permission`) USING BTREE,
  CONSTRAINT `group_permission_group_id_foreign` FOREIGN KEY (`group_id`) REFERENCES `groups` (`id`) ON DELETE CASCADE ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of group_permission
-- ----------------------------
INSERT INTO `group_permission` VALUES (2, 'fof.gamification.viewRankingPage');
INSERT INTO `group_permission` VALUES (2, 'viewDiscussions');
INSERT INTO `group_permission` VALUES (3, 'discussion.flagPosts');
INSERT INTO `group_permission` VALUES (3, 'discussion.likePosts');
INSERT INTO `group_permission` VALUES (3, 'discussion.reactPosts');
INSERT INTO `group_permission` VALUES (3, 'discussion.reply');
INSERT INTO `group_permission` VALUES (3, 'discussion.replyWithoutApproval');
INSERT INTO `group_permission` VALUES (3, 'discussion.startWithoutApproval');
INSERT INTO `group_permission` VALUES (3, 'discussion.votePosts');
INSERT INTO `group_permission` VALUES (3, 'startDiscussion');
INSERT INTO `group_permission` VALUES (3, 'user.editOwnNickname');
INSERT INTO `group_permission` VALUES (3, 'viewUserList');
INSERT INTO `group_permission` VALUES (4, 'discussion.approvePosts');
INSERT INTO `group_permission` VALUES (4, 'discussion.editPosts');
INSERT INTO `group_permission` VALUES (4, 'discussion.hide');
INSERT INTO `group_permission` VALUES (4, 'discussion.hidePosts');
INSERT INTO `group_permission` VALUES (4, 'discussion.lock');
INSERT INTO `group_permission` VALUES (4, 'discussion.rename');
INSERT INTO `group_permission` VALUES (4, 'discussion.sticky');
INSERT INTO `group_permission` VALUES (4, 'discussion.tag');
INSERT INTO `group_permission` VALUES (4, 'discussion.viewFlags');
INSERT INTO `group_permission` VALUES (4, 'discussion.viewIpsPosts');
INSERT INTO `group_permission` VALUES (4, 'user.saveDrafts');
INSERT INTO `group_permission` VALUES (4, 'user.scheduleDrafts');
INSERT INTO `group_permission` VALUES (4, 'user.suspend');
INSERT INTO `group_permission` VALUES (4, 'user.viewLastSeenAt');

-- ----------------------------
-- Table structure for group_user
-- ----------------------------
DROP TABLE IF EXISTS `group_user`;
CREATE TABLE `group_user`  (
  `user_id` int(10) UNSIGNED NOT NULL,
  `group_id` int(10) UNSIGNED NOT NULL,
  PRIMARY KEY (`user_id`, `group_id`) USING BTREE,
  INDEX `group_user_group_id_foreign`(`group_id`) USING BTREE,
  CONSTRAINT `group_user_group_id_foreign` FOREIGN KEY (`group_id`) REFERENCES `groups` (`id`) ON DELETE CASCADE ON UPDATE RESTRICT,
  CONSTRAINT `group_user_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of group_user
-- ----------------------------
INSERT INTO `group_user` VALUES (1, 1);
INSERT INTO `group_user` VALUES (2, 1);
INSERT INTO `group_user` VALUES (3, 1);
INSERT INTO `group_user` VALUES (5, 1);

-- ----------------------------
-- Table structure for groups
-- ----------------------------
DROP TABLE IF EXISTS `groups`;
CREATE TABLE `groups`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name_singular` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `name_plural` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `color` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `icon` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `is_hidden` tinyint(1) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 5 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of groups
-- ----------------------------
INSERT INTO `groups` VALUES (1, 'Admin', 'Admins', '#B72A2A', 'fas fa-wrench', 0);
INSERT INTO `groups` VALUES (2, 'Guest', 'Guests', NULL, NULL, 0);
INSERT INTO `groups` VALUES (3, 'Member', 'Members', NULL, NULL, 0);
INSERT INTO `groups` VALUES (4, 'Mod', 'Mods', '#80349E', 'fas fa-bolt', 0);

-- ----------------------------
-- Table structure for links
-- ----------------------------
DROP TABLE IF EXISTS `links`;
CREATE TABLE `links`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `title` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `url` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `position` int(11) NULL DEFAULT NULL,
  `is_internal` tinyint(1) NOT NULL DEFAULT 0,
  `is_newtab` tinyint(1) NOT NULL DEFAULT 0,
  `parent_id` int(10) UNSIGNED NULL DEFAULT NULL,
  `icon` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `visibility` enum('everyone','members','guests') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'everyone',
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `links_parent_id_foreign`(`parent_id`) USING BTREE,
  INDEX `links_visibility_index`(`visibility`) USING BTREE,
  CONSTRAINT `links_parent_id_foreign` FOREIGN KEY (`parent_id`) REFERENCES `links` (`id`) ON DELETE SET NULL ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for login_providers
-- ----------------------------
DROP TABLE IF EXISTS `login_providers`;
CREATE TABLE `login_providers`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `user_id` int(10) UNSIGNED NOT NULL,
  `provider` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `identifier` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` datetime(0) NULL DEFAULT NULL,
  `last_login_at` datetime(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `login_providers_provider_identifier_unique`(`provider`, `identifier`) USING BTREE,
  INDEX `login_providers_user_id_foreign`(`user_id`) USING BTREE,
  CONSTRAINT `login_providers_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for migrations
-- ----------------------------
DROP TABLE IF EXISTS `migrations`;
CREATE TABLE `migrations`  (
  `migration` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `extension` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of migrations
-- ----------------------------
INSERT INTO `migrations` VALUES ('2015_02_24_000000_create_access_tokens_table', NULL);
INSERT INTO `migrations` VALUES ('2015_02_24_000000_create_api_keys_table', NULL);
INSERT INTO `migrations` VALUES ('2015_02_24_000000_create_config_table', NULL);
INSERT INTO `migrations` VALUES ('2015_02_24_000000_create_discussions_table', NULL);
INSERT INTO `migrations` VALUES ('2015_02_24_000000_create_email_tokens_table', NULL);
INSERT INTO `migrations` VALUES ('2015_02_24_000000_create_groups_table', NULL);
INSERT INTO `migrations` VALUES ('2015_02_24_000000_create_notifications_table', NULL);
INSERT INTO `migrations` VALUES ('2015_02_24_000000_create_password_tokens_table', NULL);
INSERT INTO `migrations` VALUES ('2015_02_24_000000_create_permissions_table', NULL);
INSERT INTO `migrations` VALUES ('2015_02_24_000000_create_posts_table', NULL);
INSERT INTO `migrations` VALUES ('2015_02_24_000000_create_users_discussions_table', NULL);
INSERT INTO `migrations` VALUES ('2015_02_24_000000_create_users_groups_table', NULL);
INSERT INTO `migrations` VALUES ('2015_02_24_000000_create_users_table', NULL);
INSERT INTO `migrations` VALUES ('2015_09_15_000000_create_auth_tokens_table', NULL);
INSERT INTO `migrations` VALUES ('2015_09_20_224327_add_hide_to_discussions', NULL);
INSERT INTO `migrations` VALUES ('2015_09_22_030432_rename_notification_read_time', NULL);
INSERT INTO `migrations` VALUES ('2015_10_07_130531_rename_config_to_settings', NULL);
INSERT INTO `migrations` VALUES ('2015_10_24_194000_add_ip_address_to_posts', NULL);
INSERT INTO `migrations` VALUES ('2015_12_05_042721_change_access_tokens_columns', NULL);
INSERT INTO `migrations` VALUES ('2015_12_17_194247_change_settings_value_column_to_text', NULL);
INSERT INTO `migrations` VALUES ('2016_02_04_095452_add_slug_to_discussions', NULL);
INSERT INTO `migrations` VALUES ('2017_04_07_114138_add_is_private_to_discussions', NULL);
INSERT INTO `migrations` VALUES ('2017_04_07_114138_add_is_private_to_posts', NULL);
INSERT INTO `migrations` VALUES ('2018_01_11_093900_change_access_tokens_columns', NULL);
INSERT INTO `migrations` VALUES ('2018_01_11_094000_change_access_tokens_add_foreign_keys', NULL);
INSERT INTO `migrations` VALUES ('2018_01_11_095000_change_api_keys_columns', NULL);
INSERT INTO `migrations` VALUES ('2018_01_11_101800_rename_auth_tokens_to_registration_tokens', NULL);
INSERT INTO `migrations` VALUES ('2018_01_11_102000_change_registration_tokens_rename_id_to_token', NULL);
INSERT INTO `migrations` VALUES ('2018_01_11_102100_change_registration_tokens_created_at_to_datetime', NULL);
INSERT INTO `migrations` VALUES ('2018_01_11_120604_change_posts_table_to_innodb', NULL);
INSERT INTO `migrations` VALUES ('2018_01_11_155200_change_discussions_rename_columns', NULL);
INSERT INTO `migrations` VALUES ('2018_01_11_155300_change_discussions_add_foreign_keys', NULL);
INSERT INTO `migrations` VALUES ('2018_01_15_071700_rename_users_discussions_to_discussion_user', NULL);
INSERT INTO `migrations` VALUES ('2018_01_15_071800_change_discussion_user_rename_columns', NULL);
INSERT INTO `migrations` VALUES ('2018_01_15_071900_change_discussion_user_add_foreign_keys', NULL);
INSERT INTO `migrations` VALUES ('2018_01_15_072600_change_email_tokens_rename_id_to_token', NULL);
INSERT INTO `migrations` VALUES ('2018_01_15_072700_change_email_tokens_add_foreign_keys', NULL);
INSERT INTO `migrations` VALUES ('2018_01_15_072800_change_email_tokens_created_at_to_datetime', NULL);
INSERT INTO `migrations` VALUES ('2018_01_18_130400_rename_permissions_to_group_permission', NULL);
INSERT INTO `migrations` VALUES ('2018_01_18_130500_change_group_permission_add_foreign_keys', NULL);
INSERT INTO `migrations` VALUES ('2018_01_18_130600_rename_users_groups_to_group_user', NULL);
INSERT INTO `migrations` VALUES ('2018_01_18_130700_change_group_user_add_foreign_keys', NULL);
INSERT INTO `migrations` VALUES ('2018_01_18_133000_change_notifications_columns', NULL);
INSERT INTO `migrations` VALUES ('2018_01_18_133100_change_notifications_add_foreign_keys', NULL);
INSERT INTO `migrations` VALUES ('2018_01_18_134400_change_password_tokens_rename_id_to_token', NULL);
INSERT INTO `migrations` VALUES ('2018_01_18_134500_change_password_tokens_add_foreign_keys', NULL);
INSERT INTO `migrations` VALUES ('2018_01_18_134600_change_password_tokens_created_at_to_datetime', NULL);
INSERT INTO `migrations` VALUES ('2018_01_18_135000_change_posts_rename_columns', NULL);
INSERT INTO `migrations` VALUES ('2018_01_18_135100_change_posts_add_foreign_keys', NULL);
INSERT INTO `migrations` VALUES ('2018_01_30_112238_add_fulltext_index_to_discussions_title', NULL);
INSERT INTO `migrations` VALUES ('2018_01_30_220100_create_post_user_table', NULL);
INSERT INTO `migrations` VALUES ('2018_01_30_222900_change_users_rename_columns', NULL);
INSERT INTO `migrations` VALUES ('2018_07_21_000000_seed_default_groups', NULL);
INSERT INTO `migrations` VALUES ('2018_07_21_000100_seed_default_group_permissions', NULL);
INSERT INTO `migrations` VALUES ('2018_09_15_041340_add_users_indicies', NULL);
INSERT INTO `migrations` VALUES ('2018_09_15_041828_add_discussions_indicies', NULL);
INSERT INTO `migrations` VALUES ('2018_09_15_043337_add_notifications_indices', NULL);
INSERT INTO `migrations` VALUES ('2018_09_15_043621_add_posts_indices', NULL);
INSERT INTO `migrations` VALUES ('2018_09_22_004100_change_registration_tokens_columns', NULL);
INSERT INTO `migrations` VALUES ('2018_09_22_004200_create_login_providers_table', NULL);
INSERT INTO `migrations` VALUES ('2018_10_08_144700_add_shim_prefix_to_group_icons', NULL);
INSERT INTO `migrations` VALUES ('2019_06_24_145100_change_posts_content_column_to_mediumtext', NULL);
INSERT INTO `migrations` VALUES ('2019_10_12_195349_change_posts_add_discussion_foreign_key', NULL);
INSERT INTO `migrations` VALUES ('2020_03_19_134512_change_discussions_default_comment_count', NULL);
INSERT INTO `migrations` VALUES ('2020_04_21_130500_change_permission_groups_add_is_hidden', NULL);
INSERT INTO `migrations` VALUES ('2015_09_21_011527_add_is_approved_to_discussions', 'flarum-approval');
INSERT INTO `migrations` VALUES ('2015_09_21_011706_add_is_approved_to_posts', 'flarum-approval');
INSERT INTO `migrations` VALUES ('2017_07_22_000000_add_default_permissions', 'flarum-approval');
INSERT INTO `migrations` VALUES ('2018_09_29_060444_replace_emoji_shorcuts_with_unicode', 'flarum-emoji');
INSERT INTO `migrations` VALUES ('2015_09_02_000000_add_flags_read_time_to_users_table', 'flarum-flags');
INSERT INTO `migrations` VALUES ('2015_09_02_000000_create_flags_table', 'flarum-flags');
INSERT INTO `migrations` VALUES ('2017_07_22_000000_add_default_permissions', 'flarum-flags');
INSERT INTO `migrations` VALUES ('2018_06_27_101500_change_flags_rename_time_to_created_at', 'flarum-flags');
INSERT INTO `migrations` VALUES ('2018_06_27_101600_change_flags_add_foreign_keys', 'flarum-flags');
INSERT INTO `migrations` VALUES ('2018_06_27_105100_change_users_rename_flags_read_time_to_read_flags_at', 'flarum-flags');
INSERT INTO `migrations` VALUES ('2018_09_15_043621_add_flags_indices', 'flarum-flags');
INSERT INTO `migrations` VALUES ('2019_10_22_000000_change_reason_text_col_type', 'flarum-flags');
INSERT INTO `migrations` VALUES ('2015_05_11_000000_create_posts_likes_table', 'flarum-likes');
INSERT INTO `migrations` VALUES ('2015_09_04_000000_add_default_like_permissions', 'flarum-likes');
INSERT INTO `migrations` VALUES ('2018_06_27_100600_rename_posts_likes_to_post_likes', 'flarum-likes');
INSERT INTO `migrations` VALUES ('2018_06_27_100700_change_post_likes_add_foreign_keys', 'flarum-likes');
INSERT INTO `migrations` VALUES ('2015_02_24_000000_add_locked_to_discussions', 'flarum-lock');
INSERT INTO `migrations` VALUES ('2017_07_22_000000_add_default_permissions', 'flarum-lock');
INSERT INTO `migrations` VALUES ('2018_09_15_043621_add_discussions_indices', 'flarum-lock');
INSERT INTO `migrations` VALUES ('2015_05_11_000000_create_mentions_posts_table', 'flarum-mentions');
INSERT INTO `migrations` VALUES ('2015_05_11_000000_create_mentions_users_table', 'flarum-mentions');
INSERT INTO `migrations` VALUES ('2018_06_27_102000_rename_mentions_posts_to_post_mentions_post', 'flarum-mentions');
INSERT INTO `migrations` VALUES ('2018_06_27_102100_rename_mentions_users_to_post_mentions_user', 'flarum-mentions');
INSERT INTO `migrations` VALUES ('2018_06_27_102200_change_post_mentions_post_rename_mentions_id_to_mentions_post_id', 'flarum-mentions');
INSERT INTO `migrations` VALUES ('2018_06_27_102300_change_post_mentions_post_add_foreign_keys', 'flarum-mentions');
INSERT INTO `migrations` VALUES ('2018_06_27_102400_change_post_mentions_user_rename_mentions_id_to_mentions_user_id', 'flarum-mentions');
INSERT INTO `migrations` VALUES ('2018_06_27_102500_change_post_mentions_user_add_foreign_keys', 'flarum-mentions');
INSERT INTO `migrations` VALUES ('2015_02_24_000000_add_sticky_to_discussions', 'flarum-sticky');
INSERT INTO `migrations` VALUES ('2017_07_22_000000_add_default_permissions', 'flarum-sticky');
INSERT INTO `migrations` VALUES ('2018_09_15_043621_add_discussions_indices', 'flarum-sticky');
INSERT INTO `migrations` VALUES ('2015_05_11_000000_add_subscription_to_users_discussions_table', 'flarum-subscriptions');
INSERT INTO `migrations` VALUES ('2015_05_11_000000_add_suspended_until_to_users_table', 'flarum-suspend');
INSERT INTO `migrations` VALUES ('2015_09_14_000000_rename_suspended_until_column', 'flarum-suspend');
INSERT INTO `migrations` VALUES ('2017_07_22_000000_add_default_permissions', 'flarum-suspend');
INSERT INTO `migrations` VALUES ('2018_06_27_111400_change_users_rename_suspend_until_to_suspended_until', 'flarum-suspend');
INSERT INTO `migrations` VALUES ('2015_02_24_000000_create_discussions_tags_table', 'flarum-tags');
INSERT INTO `migrations` VALUES ('2015_02_24_000000_create_tags_table', 'flarum-tags');
INSERT INTO `migrations` VALUES ('2015_02_24_000000_create_users_tags_table', 'flarum-tags');
INSERT INTO `migrations` VALUES ('2015_02_24_000000_set_default_settings', 'flarum-tags');
INSERT INTO `migrations` VALUES ('2015_10_19_061223_make_slug_unique', 'flarum-tags');
INSERT INTO `migrations` VALUES ('2017_07_22_000000_add_default_permissions', 'flarum-tags');
INSERT INTO `migrations` VALUES ('2018_06_27_085200_change_tags_columns', 'flarum-tags');
INSERT INTO `migrations` VALUES ('2018_06_27_085300_change_tags_add_foreign_keys', 'flarum-tags');
INSERT INTO `migrations` VALUES ('2018_06_27_090400_rename_users_tags_to_tag_user', 'flarum-tags');
INSERT INTO `migrations` VALUES ('2018_06_27_100100_change_tag_user_rename_read_time_to_marked_as_read_at', 'flarum-tags');
INSERT INTO `migrations` VALUES ('2018_06_27_100200_change_tag_user_add_foreign_keys', 'flarum-tags');
INSERT INTO `migrations` VALUES ('2018_06_27_103000_rename_discussions_tags_to_discussion_tag', 'flarum-tags');
INSERT INTO `migrations` VALUES ('2018_06_27_103100_add_discussion_tag_foreign_keys', 'flarum-tags');
INSERT INTO `migrations` VALUES ('2019_04_21_000000_add_icon_to_tags_table', 'flarum-tags');
INSERT INTO `migrations` VALUES ('2020_11_23_000000_add_nickname_column', 'flarum-nicknames');
INSERT INTO `migrations` VALUES ('2020_12_02_000000_set_default_settings', 'flarum-nicknames');
INSERT INTO `migrations` VALUES ('2020_12_02_000001_set_default_permissions', 'flarum-nicknames');
INSERT INTO `migrations` VALUES ('2020_03_19_000000_add_post_count_column', 'askvortsov-categories');
INSERT INTO `migrations` VALUES ('2020_09_20_alter_discussion_user_add_bookmarked', 'clarkwinkelmann-bookmarks');
INSERT INTO `migrations` VALUES ('2020_04_27_000000_add_view_count_column', 'flarumite-simple-discussion-views');
INSERT INTO `migrations` VALUES ('2019_07_08_000000_create_reactions_tables', 'fof-reactions');
INSERT INTO `migrations` VALUES ('2019_07_08_000001_create_post_reactions_table', 'fof-reactions');
INSERT INTO `migrations` VALUES ('2019_07_08_000002_add_default_reaction_permission', 'fof-reactions');
INSERT INTO `migrations` VALUES ('2019_07_08_000003_migrate_extension_settings', 'fof-reactions');
INSERT INTO `migrations` VALUES ('2019_12_05_000000_add_timestamps_to_post_reactions_table', 'fof-reactions');
INSERT INTO `migrations` VALUES ('2019_12_13_120237_add_enabled_column_to_reactions_table', 'fof-reactions');
INSERT INTO `migrations` VALUES ('2020_01_19_000000_add_display_column_to_reactions_table', 'fof-reactions');
INSERT INTO `migrations` VALUES ('2019_07_01_000000_add_polls_table', 'fof-polls');
INSERT INTO `migrations` VALUES ('2019_07_01_000001_add_poll_options_table', 'fof-polls');
INSERT INTO `migrations` VALUES ('2019_07_01_000002_add_poll_votes_table', 'fof-polls');
INSERT INTO `migrations` VALUES ('2019_07_09_000000_create_post_votes_table', 'fof-gamification');
INSERT INTO `migrations` VALUES ('2019_07_09_000001_add_attributes_to_users', 'fof-gamification');
INSERT INTO `migrations` VALUES ('2019_07_09_000002_add_votes_and_hotness_to_discussions', 'fof-gamification');
INSERT INTO `migrations` VALUES ('2019_07_09_000003_add_default_permissions', 'fof-gamification');
INSERT INTO `migrations` VALUES ('2019_07_09_000004_create_rank_users_table', 'fof-gamification');
INSERT INTO `migrations` VALUES ('2019_07_09_000005_migrate_extension_settings', 'fof-gamification');
INSERT INTO `migrations` VALUES ('2019_07_10_000000_create_ranks_table', 'fof-gamification');
INSERT INTO `migrations` VALUES ('2019_08_09_000000_add_votes_foreign_keys', 'fof-gamification');
INSERT INTO `migrations` VALUES ('2020_07_07_000000_add_prefix_to_all_settings', 'fof-gamification');
INSERT INTO `migrations` VALUES ('2020_07_09_000000_change_post_votes_type_column', 'fof-gamification');
INSERT INTO `migrations` VALUES ('2020_07_11_000000_change_permission_name', 'fof-gamification');
INSERT INTO `migrations` VALUES ('2020_08_25_000000_update_tag_permission_names', 'fof-gamification');
INSERT INTO `migrations` VALUES ('2019_06_11_000000_add_subscription_to_users_tags_table', 'fof-follow-tags');
INSERT INTO `migrations` VALUES ('2019_06_28_000000_add_hide_subscription_option', 'fof-follow-tags');
INSERT INTO `migrations` VALUES ('2019_08_02_171300_create_drafts_table', 'fof-drafts');
INSERT INTO `migrations` VALUES ('2019_08_02_172100_add_drafts_foreign_keys', 'fof-drafts');
INSERT INTO `migrations` VALUES ('2019_08_03_171600_add_default_permissions', 'fof-drafts');
INSERT INTO `migrations` VALUES ('2019_08_04_151000_change_content_to_medium_text', 'fof-drafts');
INSERT INTO `migrations` VALUES ('2020_05_24_000000_add_scheduled_at_column', 'fof-drafts');
INSERT INTO `migrations` VALUES ('2020_05_24_000001_add_schedule_post_permission', 'fof-drafts');
INSERT INTO `migrations` VALUES ('2020_05_24_000002_add_error_and_ip_columns', 'fof-drafts');
INSERT INTO `migrations` VALUES ('2020_05_24_000003_add_scheduled_post_setting', 'fof-drafts');
INSERT INTO `migrations` VALUES ('2020_08_16_000000_add_extra_to_drafts', 'fof-drafts');
INSERT INTO `migrations` VALUES ('2018_11_18_01_create_doorkey_table', 'fof-doorman');
INSERT INTO `migrations` VALUES ('2018_11_19_01_add_invite_code_to_users', 'fof-doorman');
INSERT INTO `migrations` VALUES ('2020_11_14_000000_migrate_settings_to_fof', 'fof-doorman');
INSERT INTO `migrations` VALUES ('2016_02_13_000000_create_links_table', 'fof-links');
INSERT INTO `migrations` VALUES ('2016_04_19_065618_change_links_columns', 'fof-links');
INSERT INTO `migrations` VALUES ('2020_03_16_000000_add_child_links', 'fof-links');
INSERT INTO `migrations` VALUES ('2020_09_10_000000_add_icon_to_links_table', 'fof-links');
INSERT INTO `migrations` VALUES ('2021_01_17_000000_add_registered_users_only_to_links_table', 'fof-links');
INSERT INTO `migrations` VALUES ('2021_01_17_000001_add_visibility_to_links_table', 'fof-links');
INSERT INTO `migrations` VALUES ('2021_01_17_000001_drop_registered_users_only_column_and_migrate_options', 'fof-links');
INSERT INTO `migrations` VALUES ('2017_01_20_000000_add_money_to_users_table', 'antoinefr-money');
INSERT INTO `migrations` VALUES ('2017_01_22_000000_change_money_to_float', 'antoinefr-money');
INSERT INTO `migrations` VALUES ('2019_06_10_000000_rename_permissions', 'fof-user-directory');

-- ----------------------------
-- Table structure for notifications
-- ----------------------------
DROP TABLE IF EXISTS `notifications`;
CREATE TABLE `notifications`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `user_id` int(10) UNSIGNED NOT NULL,
  `from_user_id` int(10) UNSIGNED NULL DEFAULT NULL,
  `type` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `subject_id` int(10) UNSIGNED NULL DEFAULT NULL,
  `data` blob NULL,
  `created_at` datetime(0) NOT NULL,
  `is_deleted` tinyint(1) NOT NULL DEFAULT 0,
  `read_at` datetime(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `notifications_from_user_id_foreign`(`from_user_id`) USING BTREE,
  INDEX `notifications_user_id_index`(`user_id`) USING BTREE,
  CONSTRAINT `notifications_from_user_id_foreign` FOREIGN KEY (`from_user_id`) REFERENCES `users` (`id`) ON DELETE SET NULL ON UPDATE RESTRICT,
  CONSTRAINT `notifications_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 9 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for password_tokens
-- ----------------------------
DROP TABLE IF EXISTS `password_tokens`;
CREATE TABLE `password_tokens`  (
  `token` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `created_at` datetime(0) NULL DEFAULT NULL,
  PRIMARY KEY (`token`) USING BTREE,
  INDEX `password_tokens_user_id_foreign`(`user_id`) USING BTREE,
  CONSTRAINT `password_tokens_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for poll_options
-- ----------------------------
DROP TABLE IF EXISTS `poll_options`;
CREATE TABLE `poll_options`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `answer` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `poll_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `poll_options_poll_id_foreign`(`poll_id`) USING BTREE,
  CONSTRAINT `poll_options_poll_id_foreign` FOREIGN KEY (`poll_id`) REFERENCES `polls` (`id`) ON DELETE CASCADE ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for poll_votes
-- ----------------------------
DROP TABLE IF EXISTS `poll_votes`;
CREATE TABLE `poll_votes`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `poll_id` int(10) UNSIGNED NOT NULL,
  `option_id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NULL DEFAULT NULL,
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `poll_votes_poll_id_foreign`(`poll_id`) USING BTREE,
  INDEX `poll_votes_option_id_foreign`(`option_id`) USING BTREE,
  INDEX `poll_votes_user_id_foreign`(`user_id`) USING BTREE,
  CONSTRAINT `poll_votes_option_id_foreign` FOREIGN KEY (`option_id`) REFERENCES `poll_options` (`id`) ON DELETE CASCADE ON UPDATE RESTRICT,
  CONSTRAINT `poll_votes_poll_id_foreign` FOREIGN KEY (`poll_id`) REFERENCES `polls` (`id`) ON DELETE CASCADE ON UPDATE RESTRICT,
  CONSTRAINT `poll_votes_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE SET NULL ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for polls
-- ----------------------------
DROP TABLE IF EXISTS `polls`;
CREATE TABLE `polls`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `question` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `discussion_id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NULL DEFAULT NULL,
  `public_poll` tinyint(1) NOT NULL,
  `end_date` timestamp(0) NULL DEFAULT NULL,
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `polls_discussion_id_foreign`(`discussion_id`) USING BTREE,
  INDEX `polls_user_id_foreign`(`user_id`) USING BTREE,
  CONSTRAINT `polls_discussion_id_foreign` FOREIGN KEY (`discussion_id`) REFERENCES `discussions` (`id`) ON DELETE CASCADE ON UPDATE RESTRICT,
  CONSTRAINT `polls_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE SET NULL ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for post_likes
-- ----------------------------
DROP TABLE IF EXISTS `post_likes`;
CREATE TABLE `post_likes`  (
  `post_id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  PRIMARY KEY (`post_id`, `user_id`) USING BTREE,
  INDEX `post_likes_user_id_foreign`(`user_id`) USING BTREE,
  CONSTRAINT `post_likes_post_id_foreign` FOREIGN KEY (`post_id`) REFERENCES `posts` (`id`) ON DELETE CASCADE ON UPDATE RESTRICT,
  CONSTRAINT `post_likes_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for post_mentions_post
-- ----------------------------
DROP TABLE IF EXISTS `post_mentions_post`;
CREATE TABLE `post_mentions_post`  (
  `post_id` int(10) UNSIGNED NOT NULL,
  `mentions_post_id` int(10) UNSIGNED NOT NULL,
  PRIMARY KEY (`post_id`, `mentions_post_id`) USING BTREE,
  INDEX `post_mentions_post_mentions_post_id_foreign`(`mentions_post_id`) USING BTREE,
  CONSTRAINT `post_mentions_post_mentions_post_id_foreign` FOREIGN KEY (`mentions_post_id`) REFERENCES `posts` (`id`) ON DELETE CASCADE ON UPDATE RESTRICT,
  CONSTRAINT `post_mentions_post_post_id_foreign` FOREIGN KEY (`post_id`) REFERENCES `posts` (`id`) ON DELETE CASCADE ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for post_mentions_user
-- ----------------------------
DROP TABLE IF EXISTS `post_mentions_user`;
CREATE TABLE `post_mentions_user`  (
  `post_id` int(10) UNSIGNED NOT NULL,
  `mentions_user_id` int(10) UNSIGNED NOT NULL,
  PRIMARY KEY (`post_id`, `mentions_user_id`) USING BTREE,
  INDEX `post_mentions_user_mentions_user_id_foreign`(`mentions_user_id`) USING BTREE,
  CONSTRAINT `post_mentions_user_mentions_user_id_foreign` FOREIGN KEY (`mentions_user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE RESTRICT,
  CONSTRAINT `post_mentions_user_post_id_foreign` FOREIGN KEY (`post_id`) REFERENCES `posts` (`id`) ON DELETE CASCADE ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for post_reactions
-- ----------------------------
DROP TABLE IF EXISTS `post_reactions`;
CREATE TABLE `post_reactions`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `post_id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `reaction_id` int(10) UNSIGNED NULL DEFAULT NULL,
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `post_reactions_post_id_foreign`(`post_id`) USING BTREE,
  INDEX `post_reactions_user_id_foreign`(`user_id`) USING BTREE,
  INDEX `post_reactions_reaction_id_foreign`(`reaction_id`) USING BTREE,
  CONSTRAINT `post_reactions_post_id_foreign` FOREIGN KEY (`post_id`) REFERENCES `posts` (`id`) ON DELETE CASCADE ON UPDATE RESTRICT,
  CONSTRAINT `post_reactions_reaction_id_foreign` FOREIGN KEY (`reaction_id`) REFERENCES `reactions` (`id`) ON DELETE CASCADE ON UPDATE RESTRICT,
  CONSTRAINT `post_reactions_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for post_user
-- ----------------------------
DROP TABLE IF EXISTS `post_user`;
CREATE TABLE `post_user`  (
  `post_id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  PRIMARY KEY (`post_id`, `user_id`) USING BTREE,
  INDEX `post_user_user_id_foreign`(`user_id`) USING BTREE,
  CONSTRAINT `post_user_post_id_foreign` FOREIGN KEY (`post_id`) REFERENCES `posts` (`id`) ON DELETE CASCADE ON UPDATE RESTRICT,
  CONSTRAINT `post_user_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for post_votes
-- ----------------------------
DROP TABLE IF EXISTS `post_votes`;
CREATE TABLE `post_votes`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `post_id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `value` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `post_votes_post_id_foreign`(`post_id`) USING BTREE,
  CONSTRAINT `post_votes_post_id_foreign` FOREIGN KEY (`post_id`) REFERENCES `posts` (`id`) ON DELETE CASCADE ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 23 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of post_votes
-- ----------------------------
INSERT INTO `post_votes` VALUES (20, 16, 2, 1);
INSERT INTO `post_votes` VALUES (21, 18, 2, 1);

-- ----------------------------
-- Table structure for posts
-- ----------------------------
DROP TABLE IF EXISTS `posts`;
CREATE TABLE `posts`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `discussion_id` int(10) UNSIGNED NOT NULL,
  `number` int(10) UNSIGNED NULL DEFAULT NULL,
  `created_at` datetime(0) NOT NULL,
  `user_id` int(10) UNSIGNED NULL DEFAULT NULL,
  `type` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `content` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL COMMENT ' ',
  `edited_at` datetime(0) NULL DEFAULT NULL,
  `edited_user_id` int(10) UNSIGNED NULL DEFAULT NULL,
  `hidden_at` datetime(0) NULL DEFAULT NULL,
  `hidden_user_id` int(10) UNSIGNED NULL DEFAULT NULL,
  `ip_address` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `is_private` tinyint(1) NOT NULL DEFAULT 0,
  `is_approved` tinyint(1) NOT NULL DEFAULT 1,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `posts_discussion_id_number_unique`(`discussion_id`, `number`) USING BTREE,
  INDEX `posts_edited_user_id_foreign`(`edited_user_id`) USING BTREE,
  INDEX `posts_hidden_user_id_foreign`(`hidden_user_id`) USING BTREE,
  INDEX `posts_discussion_id_number_index`(`discussion_id`, `number`) USING BTREE,
  INDEX `posts_discussion_id_created_at_index`(`discussion_id`, `created_at`) USING BTREE,
  INDEX `posts_user_id_created_at_index`(`user_id`, `created_at`) USING BTREE,
  FULLTEXT INDEX `content`(`content`),
  CONSTRAINT `posts_discussion_id_foreign` FOREIGN KEY (`discussion_id`) REFERENCES `discussions` (`id`) ON DELETE CASCADE ON UPDATE RESTRICT,
  CONSTRAINT `posts_edited_user_id_foreign` FOREIGN KEY (`edited_user_id`) REFERENCES `users` (`id`) ON DELETE SET NULL ON UPDATE RESTRICT,
  CONSTRAINT `posts_hidden_user_id_foreign` FOREIGN KEY (`hidden_user_id`) REFERENCES `users` (`id`) ON DELETE SET NULL ON UPDATE RESTRICT,
  CONSTRAINT `posts_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE SET NULL ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 20 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of posts
-- ----------------------------
INSERT INTO `posts` VALUES (16, 9, 1, '2021-01-21 10:53:04', 2, 'comment', '<r><p><URL url=\"https://i.imgur.com/vOQ6SjC.png\"><s>[URL=https://i.imgur.com/vOQ6SjC.png]</s><IMG src=\"https://i.imgur.com/vOQ6SjCh.png\"><s>[IMG]</s>https://i.imgur.com/vOQ6SjCh.png<e>[/IMG]</e></IMG><e>[/URL]</e></URL></p>\n\n<H3><s>### </s>Install Python3.6 on Ubuntu 18.04</H3>\n<p>Với ubuntu python đã được tích hợp sẵn, nhưng là python2.7. Bạn có thể kiểm tra bằng cách mở màn hình terminal</p>\n\n<LIST><LI><s>- </s><C><s>`</s>$ python -V<e>`</e></C></LI></LIST>\n\n<p><C><s>`</s>Output<e>`</e></C><br/>\n <C><s>`</s>Python 2.7.17<e>`</e></C></p>\n\n<p>Để cài đặt python3, ở màn hình terminal gõ</p>\n<LIST><LI><s>- </s><p><C><s>`</s>$ sudo apt update<e>`</e></C></p></LI>\n\n<LI><s>- </s><p><C><s>`</s>$ sudo apt install python3.6<e>`</e></C></p></LI></LIST>\n\n<p>Kiểm tra version python3 vừa cài đặt</p>\n\n<LIST><LI><s>- </s><C><s>`</s>$ python3 -V<e>`</e></C></LI></LIST>\n\n<p><C><s>`</s>Output<e>`</e></C><br/>\n<C><s>`</s>Python 3.6.9<e>`</e></C></p>\n\n\n\n<H3><s>### </s>Setup virtualenv</H3>\n<p>Cài đặt pip cho Python 3:</p>\n\n<LIST><LI><s>- </s><C><s>`</s>$ sudo apt install python3-pip<e>`</e></C></LI>\n<LI><s>- </s><C><s>`</s>$ pip3 --version<e>`</e></C></LI></LIST>\n\n<p><C><s>`</s>Output<e>`</e></C><br/>\n<C><s>`</s>pip 9.0.1 from /usr/lib/python3/dist-packages (python 3.6)<e>`</e></C></p>\n\n<p>Tạo môi trường (venv) cho từng project, trong folder project (VD: /opt/FirstProject)</p>\n\n<LIST><LI><s>- </s><C><s>`</s>/opt/FirstProject$ python3 -m venv venv<e>`</e></C></LI></LIST>\n\n<p>Trong /opt/FirstProject sẽ tự tạo một thư mục <STRONG><s>**</s>venv<e>**</e></STRONG> chứa các packages của project đó. Để active vào môi trường:</p>\n\n<LIST><LI><s>- </s><C><s>`</s>/opt/FirstProject$ source venv/bin/activate<e>`</e></C></LI>\n<LI><s>- </s><C><s>`</s>/opt/FirstProject$ pip -V<e>`</e></C></LI></LIST>\n\n<p><C><s>`</s>Output<e>`</e></C><br/>\n<C><s>`</s>pip 9.0.1 from /usr/lib/python3/dist-packages (python 3.6)<e>`</e></C></p>\n\n<p>Ta cần cập nhật phiên bản mới nhất của pip</p>\n\n<LIST><LI><s>- </s><C><s>`</s>/opt/FirstProject$ python -m pip install --upgrade pip<e>`</e></C></LI>\n<LI><s>- </s><C><s>`</s>/opt/FirstProject$ pip -V<e>`</e></C></LI></LIST>\n\n<p><C><s>`</s>Output<e>`</e></C><br/>\n<C><s>`</s>pip 20.3.3 from /opt/FirstProject/venv/lib/python3.6/site-packages/pip (python 3.6)<e>`</e></C></p>\n\n<p>Ta có thể cài đặt các packages và kiểm tra các packages đã được cài đặt</p>\n\n<LIST><LI><s>- </s><C><s>`</s>/opt/FirstProject$ pip install requests<e>`</e></C></LI>\n<LI><s>- </s><C><s>`</s>/opt/FirstProject$ pip freeze<e>`</e></C></LI></LIST>\n\n<p><C><s>`</s>Output<e>`</e></C><br/>\n<C><s>`</s>certifi==2020.12.5<e>`</e></C><br/>\n<C><s>`</s>chardet==4.0.0<e>`</e></C><br/>\n<C><s>`</s>idna==2.10<e>`</e></C><br/>\n<C><s>`</s>pkg-resources==0.0.0<e>`</e></C><br/>\n<C><s>`</s>requests==2.25.1<e>`</e></C><br/>\n<C><s>`</s>urllib3==1.26.2<e>`</e></C></p>\n\n<p>Thoát khỏi môi trường</p>\n\n<LIST><LI><s>- </s><C><s>`</s>/opt/FirstProject$ deactivate<e>`</e></C></LI></LIST>\n </r>', '2021-01-21 11:47:14', 2, NULL, NULL, '172.16.40.164', 0, 1);
INSERT INTO `posts` VALUES (17, 9, 2, '2021-01-21 10:55:05', 2, 'discussionRenamed', '[\"Install python and setup virtualenv\",\"C\\u00e0i \\u0111\\u1eb7t python3 v\\u00e0 virtualenv tr\\u00ean ubuntu 18.04\"]', NULL, NULL, NULL, NULL, NULL, 0, 1);
INSERT INTO `posts` VALUES (18, 9, 3, '2021-01-21 11:55:31', 2, 'comment', '<t><p>Bài viết khá tâm huyết. Cảm ơn tác giả!!!</p></t>', NULL, NULL, NULL, NULL, '172.16.40.164', 0, 1);

-- ----------------------------
-- Table structure for rank_users
-- ----------------------------
DROP TABLE IF EXISTS `rank_users`;
CREATE TABLE `rank_users`  (
  `rank_id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  PRIMARY KEY (`user_id`, `rank_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for ranks
-- ----------------------------
DROP TABLE IF EXISTS `ranks`;
CREATE TABLE `ranks`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `points` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `color` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for reactions
-- ----------------------------
DROP TABLE IF EXISTS `reactions`;
CREATE TABLE `reactions`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `identifier` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `enabled` tinyint(1) NOT NULL DEFAULT 1,
  `display` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 7 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of reactions
-- ----------------------------
INSERT INTO `reactions` VALUES (1, 'thumbsup', 'emoji', 1, NULL);
INSERT INTO `reactions` VALUES (2, 'thumbsdown', 'emoji', 1, NULL);
INSERT INTO `reactions` VALUES (3, 'laughing', 'emoji', 1, NULL);
INSERT INTO `reactions` VALUES (4, 'confused', 'emoji', 1, NULL);
INSERT INTO `reactions` VALUES (5, 'heart', 'emoji', 1, NULL);
INSERT INTO `reactions` VALUES (6, 'tada', 'emoji', 1, NULL);

-- ----------------------------
-- Table structure for registration_tokens
-- ----------------------------
DROP TABLE IF EXISTS `registration_tokens`;
CREATE TABLE `registration_tokens`  (
  `token` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL,
  `created_at` datetime(0) NULL DEFAULT NULL,
  `provider` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `identifier` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_attributes` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL,
  PRIMARY KEY (`token`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for settings
-- ----------------------------
DROP TABLE IF EXISTS `settings`;
CREATE TABLE `settings`  (
  `key` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL,
  PRIMARY KEY (`key`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of settings
-- ----------------------------
INSERT INTO `settings` VALUES ('allow_post_editing', 'reply');
INSERT INTO `settings` VALUES ('allow_renaming', '10');
INSERT INTO `settings` VALUES ('allow_sign_up', '1');
INSERT INTO `settings` VALUES ('antoinefr-money.moneyfordiscussion', '1');
INSERT INTO `settings` VALUES ('antoinefr-money.moneyforpost', '10');
INSERT INTO `settings` VALUES ('antoinefr-money.moneyname', 'point');
INSERT INTO `settings` VALUES ('antoinefr-money.noshowzero', '');
INSERT INTO `settings` VALUES ('antoinefr-money.postminimumlength', '30');
INSERT INTO `settings` VALUES ('custom_less', '@media (min-width: 768px) {\n.sideNav .Dropdown--select .Dropdown-menu>li>a .Button-icon {\nfont-size: 20px;\n}\n}\n\n.item-tag7 .TagIcon {\n    height: 20px;\nwidth: 20px;\n    background: url(https://cdn.iconscout.com/icon/free/png-64/kafka-282292.png);\n    background-size: 20px 20px;\ndisplay: block!important;\n}\n.TagLinkButton.child {\n    margin-left: 15px!important;\n}');
INSERT INTO `settings` VALUES ('default_locale', 'en');
INSERT INTO `settings` VALUES ('default_route', '/all');
INSERT INTO `settings` VALUES ('display_name_driver', 'username');
INSERT INTO `settings` VALUES ('extensions_enabled', '[\"flarum-approval\",\"flarum-bbcode\",\"flarum-emoji\",\"flarum-lang-english\",\"flarum-flags\",\"flarum-likes\",\"flarum-lock\",\"flarum-markdown\",\"flarum-mentions\",\"flarum-statistics\",\"flarum-sticky\",\"flarum-subscriptions\",\"flarum-suspend\",\"flarum-tags\",\"clarkwinkelmann-circle-groups\",\"zeokat-seoslugs\",\"askvortsov-categories\",\"clarkwinkelmann-bookmarks\",\"zerosonesfun-elint\",\"nearata-signup-confirm-password\",\"flarumite-simple-discussion-views\",\"therealsujitk-gifs\",\"fof-reactions\",\"fof-polls\",\"fof-gamification\",\"fof-follow-tags\",\"fof-drafts\",\"fof-doorman\",\"fof-links\",\"clarkwinkelmann-emojionearea\",\"antoinefr-money\",\"mskian-tasklist\",\"matteocontrini-imgur-upload\",\"flarum-nicknames\",\"fof-user-directory\",\"simonxeko-preview-discussion\",\"nearata-copy-code-to-clipboard\"]');
INSERT INTO `settings` VALUES ('flarum-nicknames.max', '150');
INSERT INTO `settings` VALUES ('flarum-nicknames.min', '1');
INSERT INTO `settings` VALUES ('flarum-nicknames.regex', '');
INSERT INTO `settings` VALUES ('flarum-nicknames.unique', '1');
INSERT INTO `settings` VALUES ('flarum-tags.max_primary_tags', '1');
INSERT INTO `settings` VALUES ('flarum-tags.max_secondary_tags', '3');
INSERT INTO `settings` VALUES ('flarum-tags.min_primary_tags', '1');
INSERT INTO `settings` VALUES ('flarum-tags.min_secondary_tags', '0');
INSERT INTO `settings` VALUES ('fof-drafts.enable_scheduled_drafts', '1');
INSERT INTO `settings` VALUES ('forum_description', '');
INSERT INTO `settings` VALUES ('forum_title', 'HTGP Wiki');
INSERT INTO `settings` VALUES ('imgur-upload.client-id', '8860a4247b892a5');
INSERT INTO `settings` VALUES ('imgur-upload.hide-markdown-image', '');
INSERT INTO `settings` VALUES ('mail_driver', 'mail');
INSERT INTO `settings` VALUES ('mail_from', 'noreply@localhost');
INSERT INTO `settings` VALUES ('show_language_selector', '0');
INSERT INTO `settings` VALUES ('slug_driver_Flarum\\Discussion\\Discussion', 'default');
INSERT INTO `settings` VALUES ('slug_driver_Flarum\\User\\User', 'default');
INSERT INTO `settings` VALUES ('theme_colored_header', '0');
INSERT INTO `settings` VALUES ('theme_dark_mode', '0');
INSERT INTO `settings` VALUES ('theme_primary_color', '#e7672e');
INSERT INTO `settings` VALUES ('theme_secondary_color', '#4D698E');
INSERT INTO `settings` VALUES ('therealsujitk-gifs.giphy_api_key', 'XYpg1AqYKxD1v0TRWMQd3K03THsXy2U2');
INSERT INTO `settings` VALUES ('version', '0.1.0-beta.15');
INSERT INTO `settings` VALUES ('welcome_message', 'This is beta software and you should not use it in production.');
INSERT INTO `settings` VALUES ('welcome_title', 'Welcome to HTGP Wiki');

-- ----------------------------
-- Table structure for tag_user
-- ----------------------------
DROP TABLE IF EXISTS `tag_user`;
CREATE TABLE `tag_user`  (
  `user_id` int(10) UNSIGNED NOT NULL,
  `tag_id` int(10) UNSIGNED NOT NULL,
  `marked_as_read_at` datetime(0) NULL DEFAULT NULL,
  `is_hidden` tinyint(1) NOT NULL DEFAULT 0,
  `subscription` enum('follow','lurk','ignore','hide') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  PRIMARY KEY (`user_id`, `tag_id`) USING BTREE,
  INDEX `tag_user_tag_id_foreign`(`tag_id`) USING BTREE,
  CONSTRAINT `tag_user_tag_id_foreign` FOREIGN KEY (`tag_id`) REFERENCES `tags` (`id`) ON DELETE CASCADE ON UPDATE RESTRICT,
  CONSTRAINT `tag_user_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tag_user
-- ----------------------------
INSERT INTO `tag_user` VALUES (4, 13, NULL, 0, NULL);

-- ----------------------------
-- Table structure for tags
-- ----------------------------
DROP TABLE IF EXISTS `tags`;
CREATE TABLE `tags`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL,
  `color` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `background_path` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `background_mode` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `position` int(11) NULL DEFAULT NULL,
  `parent_id` int(10) UNSIGNED NULL DEFAULT NULL,
  `default_sort` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `is_restricted` tinyint(1) NOT NULL DEFAULT 0,
  `is_hidden` tinyint(1) NOT NULL DEFAULT 0,
  `discussion_count` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `last_posted_at` datetime(0) NULL DEFAULT NULL,
  `last_posted_discussion_id` int(10) UNSIGNED NULL DEFAULT NULL,
  `last_posted_user_id` int(10) UNSIGNED NULL DEFAULT NULL,
  `icon` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `post_count` int(10) UNSIGNED NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `tags_slug_unique`(`slug`) USING BTREE,
  INDEX `tags_parent_id_foreign`(`parent_id`) USING BTREE,
  INDEX `tags_last_posted_user_id_foreign`(`last_posted_user_id`) USING BTREE,
  INDEX `tags_last_posted_discussion_id_foreign`(`last_posted_discussion_id`) USING BTREE,
  CONSTRAINT `tags_last_posted_discussion_id_foreign` FOREIGN KEY (`last_posted_discussion_id`) REFERENCES `discussions` (`id`) ON DELETE SET NULL ON UPDATE RESTRICT,
  CONSTRAINT `tags_last_posted_user_id_foreign` FOREIGN KEY (`last_posted_user_id`) REFERENCES `users` (`id`) ON DELETE SET NULL ON UPDATE RESTRICT,
  CONSTRAINT `tags_parent_id_foreign` FOREIGN KEY (`parent_id`) REFERENCES `tags` (`id`) ON DELETE SET NULL ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 17 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tags
-- ----------------------------
INSERT INTO `tags` VALUES (1, 'General', 'general', NULL, '#888', NULL, NULL, 0, NULL, NULL, 0, 0, 0, NULL, NULL, NULL, NULL, 4);
INSERT INTO `tags` VALUES (2, 'Product', 'product', '', '', NULL, NULL, 1, NULL, NULL, 0, 0, 0, NULL, NULL, NULL, 'fas fa-bolt', 9);
INSERT INTO `tags` VALUES (3, 'Wiki', 'wiki', '', '#595959', NULL, NULL, 2, NULL, NULL, 0, 0, 1, '2021-01-21 10:53:04', 9, 2, 'fas fa-book-dead', 3);
INSERT INTO `tags` VALUES (4, 'EPoint', 'epoint', '', '', NULL, NULL, 1, 2, NULL, 0, 0, 0, NULL, NULL, NULL, 'fas fa-atom', 0);
INSERT INTO `tags` VALUES (5, 'MyPoint', 'mypoint', '', '', NULL, NULL, 0, 2, NULL, 0, 0, 0, NULL, NULL, NULL, '', 2);
INSERT INTO `tags` VALUES (6, 'Python', 'python', '', '#5797ff', NULL, NULL, 2, 3, NULL, 0, 0, 1, '2021-01-21 10:53:04', 9, 2, 'fab fa-python', 3);
INSERT INTO `tags` VALUES (7, 'Kafka', 'kafka', '', '', NULL, NULL, 4, 3, NULL, 0, 0, 0, NULL, NULL, NULL, '', 0);
INSERT INTO `tags` VALUES (8, 'Java', 'java', '', '#ff722b', NULL, NULL, 1, 3, NULL, 0, 0, 0, NULL, NULL, NULL, 'fab fa-java', 0);
INSERT INTO `tags` VALUES (9, 'WorkFlow', 'workflow', '', '#fc7f12', NULL, NULL, 3, NULL, NULL, 0, 0, 0, NULL, NULL, NULL, 'fab fa-stack-overflow', 0);
INSERT INTO `tags` VALUES (11, 'Soii', 'soii', '', '', NULL, NULL, 3, 2, NULL, 0, 0, 0, NULL, NULL, NULL, '', 0);
INSERT INTO `tags` VALUES (12, 'Media', 'media', '', '', NULL, NULL, 2, 2, NULL, 0, 0, 0, NULL, NULL, NULL, '', 0);
INSERT INTO `tags` VALUES (13, 'Vitapay', 'vitapay', '', '', NULL, NULL, 4, 2, NULL, 0, 0, 0, NULL, NULL, NULL, '', 0);
INSERT INTO `tags` VALUES (14, 'PHP', 'php', '', '#7848e8', NULL, NULL, 3, 3, NULL, 0, 0, 0, NULL, NULL, NULL, 'fab fa-php', 0);
INSERT INTO `tags` VALUES (15, 'Node Js', 'node-js', '', '#026e00', NULL, NULL, 0, 3, NULL, 0, 0, 0, NULL, NULL, NULL, 'fab fa-node-js', 0);
INSERT INTO `tags` VALUES (16, 'SysOps', 'sysops', '', '', NULL, NULL, 5, 3, NULL, 0, 0, 0, NULL, NULL, NULL, 'fab fa-ubuntu', 0);

-- ----------------------------
-- Table structure for users
-- ----------------------------
DROP TABLE IF EXISTS `users`;
CREATE TABLE `users`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `username` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `nickname` varchar(150) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(150) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_email_confirmed` tinyint(1) NOT NULL DEFAULT 0,
  `password` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `avatar_url` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `preferences` blob NULL,
  `joined_at` datetime(0) NULL DEFAULT NULL,
  `last_seen_at` datetime(0) NULL DEFAULT NULL,
  `marked_all_as_read_at` datetime(0) NULL DEFAULT NULL,
  `read_notifications_at` datetime(0) NULL DEFAULT NULL,
  `discussion_count` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `comment_count` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `read_flags_at` datetime(0) NULL DEFAULT NULL,
  `suspended_until` datetime(0) NULL DEFAULT NULL,
  `votes` int(11) NOT NULL,
  `rank` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `last_vote_time` datetime(0) NULL DEFAULT NULL,
  `invite_code` varchar(128) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `money` double NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `users_username_unique`(`username`) USING BTREE,
  UNIQUE INDEX `users_email_unique`(`email`) USING BTREE,
  INDEX `users_joined_at_index`(`joined_at`) USING BTREE,
  INDEX `users_last_seen_at_index`(`last_seen_at`) USING BTREE,
  INDEX `users_discussion_count_index`(`discussion_count`) USING BTREE,
  INDEX `users_comment_count_index`(`comment_count`) USING BTREE,
  INDEX `users_nickname_index`(`nickname`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 6 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of users
-- ----------------------------
INSERT INTO `users` VALUES (1, 'admin', '', 'anhlv@i-com.vn', 1, '$2y$10$.DpoRlSQG0wWk.VLrKTh9.p5yrk2bdiMrgS07TdDcWR/kDsrpfwNW', NULL, 0x7B22666F6C6C6F7741667465725265706C79223A66616C73652C22666F6C6C6F77546167735061676544656661756C74223A6E756C6C2C2264726166744175746F73617665456E61626C65223A66616C73652C2264726166744175746F73617665496E74657276616C223A362C226E6F746966795F64697363757373696F6E52656E616D65645F616C657274223A747275652C226E6F746966795F706F73744C696B65645F616C657274223A747275652C226E6F746966795F64697363757373696F6E4C6F636B65645F616C657274223A747275652C226E6F746966795F706F73744D656E74696F6E65645F616C657274223A747275652C226E6F746966795F706F73744D656E74696F6E65645F656D61696C223A66616C73652C226E6F746966795F757365724D656E74696F6E65645F616C657274223A747275652C226E6F746966795F757365724D656E74696F6E65645F656D61696C223A66616C73652C226E6F746966795F6E6577506F73745F616C657274223A747275652C226E6F746966795F6E6577506F73745F656D61696C223A747275652C226E6F746966795F7573657253757370656E6465645F616C657274223A747275652C226E6F746966795F75736572556E73757370656E6465645F616C657274223A747275652C226E6F746966795F706F7374526561637465645F616C657274223A747275652C226E6F746966795F766F74655F616C657274223A747275652C226E6F746966795F6E657744697363757373696F6E496E5461675F616C657274223A747275652C226E6F746966795F6E657744697363757373696F6E496E5461675F656D61696C223A747275652C226E6F746966795F6E6577506F7374496E5461675F616C657274223A747275652C226E6F746966795F6E6577506F7374496E5461675F656D61696C223A747275652C226E6F746966795F6E657744697363757373696F6E5461675F616C657274223A747275652C226E6F746966795F6E657744697363757373696F6E5461675F656D61696C223A747275652C22646973636C6F73654F6E6C696E65223A747275652C22696E64657850726F66696C65223A747275652C226C6F63616C65223A227669227D, '2021-01-21 06:59:29', '2021-01-25 04:29:50', NULL, '2021-01-25 04:28:42', 0, 0, '2021-01-21 07:07:15', NULL, 0, NULL, '2021-01-21 10:48:20', NULL, -2);
INSERT INTO `users` VALUES (2, 'jungle20m', '', 'anhnv@i-com.vn', 1, '$2y$10$SKwB0Oc6JpAQd0xFGzfYQujvj8NHcfIYQKss.5oNdFblEEO.Ypf2y', 'DVuqmTyGzYiHgsRd.png', NULL, '2021-01-21 09:33:04', '2021-01-25 04:44:23', '2021-01-21 10:48:27', '2021-01-21 10:10:50', 1, 4, NULL, NULL, 6, NULL, '2021-01-21 10:14:52', 'HTGP', 21);
INSERT INTO `users` VALUES (3, 'Joker', '', 'thinhdv@i-com.vn', 1, '$2y$10$CHQWNvDXSPAVGlASxbxosOKzTypTRvEKHq0R3yu5wYWB9aA.moYX.', 'KKJEq8tKUFKfSfaT.png', NULL, '2021-01-21 09:45:04', '2021-01-21 10:44:44', NULL, NULL, 0, 0, NULL, NULL, 2, NULL, NULL, 'HTGP', 0);
INSERT INTO `users` VALUES (4, 'binhkieu', '', 'binhkd@i-com.vn', 1, '$2y$10$4qrUt2V2ac6VCdDCYO3k6.0OUFL0RUNW0lgDi1xxBgypoAMUiiZly', NULL, 0x7B22666F6C6C6F7741667465725265706C79223A66616C73652C22666F6C6C6F77546167735061676544656661756C74223A6E756C6C2C2264726166744175746F73617665456E61626C65223A66616C73652C2264726166744175746F73617665496E74657276616C223A362C226E6F746966795F64697363757373696F6E52656E616D65645F616C657274223A747275652C226E6F746966795F706F73744C696B65645F616C657274223A747275652C226E6F746966795F64697363757373696F6E4C6F636B65645F616C657274223A747275652C226E6F746966795F706F73744D656E74696F6E65645F616C657274223A747275652C226E6F746966795F706F73744D656E74696F6E65645F656D61696C223A66616C73652C226E6F746966795F757365724D656E74696F6E65645F616C657274223A747275652C226E6F746966795F757365724D656E74696F6E65645F656D61696C223A66616C73652C226E6F746966795F6E6577506F73745F616C657274223A747275652C226E6F746966795F6E6577506F73745F656D61696C223A747275652C226E6F746966795F7573657253757370656E6465645F616C657274223A747275652C226E6F746966795F75736572556E73757370656E6465645F616C657274223A747275652C226E6F746966795F706F7374526561637465645F616C657274223A747275652C226E6F746966795F766F74655F616C657274223A747275652C226E6F746966795F6E657744697363757373696F6E496E5461675F616C657274223A747275652C226E6F746966795F6E657744697363757373696F6E496E5461675F656D61696C223A747275652C226E6F746966795F6E6577506F7374496E5461675F616C657274223A747275652C226E6F746966795F6E6577506F7374496E5461675F656D61696C223A747275652C226E6F746966795F6E657744697363757373696F6E5461675F616C657274223A747275652C226E6F746966795F6E657744697363757373696F6E5461675F656D61696C223A747275652C22646973636C6F73654F6E6C696E65223A747275652C22696E64657850726F66696C65223A747275652C226C6F63616C65223A227669227D, '2021-01-21 09:58:46', '2021-01-21 10:46:14', NULL, '2021-01-21 10:30:57', 0, 0, NULL, NULL, 3, NULL, '2021-01-21 10:31:10', 'EYG5PE4G', 0);
INSERT INTO `users` VALUES (5, 'canh_en_be_nho', '', 'dungnt2@i-com.vn', 1, '$2y$10$O917Gb1vHR.enIV09SJ.SuFM3E7.WwISeGD1RY743nsAys7pGl3Am', NULL, NULL, '2021-01-21 10:32:35', '2021-01-21 10:34:41', NULL, NULL, 0, 0, NULL, NULL, 2, NULL, NULL, 'HTGP', 0);

SET FOREIGN_KEY_CHECKS = 1;
