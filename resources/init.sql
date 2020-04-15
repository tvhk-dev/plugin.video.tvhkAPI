BEGIN TRANSACTION;
CREATE TABLE IF NOT EXISTS "playlists" (
	"index"	INTEGER PRIMARY KEY AUTOINCREMENT,
	"uuid"	VARCHAR(255) NOT NULL,
	"channelID"	VARCHAR(255) NOT NULL,
	"playlistID"	VARCHAR(255) NOT NULL,
	"timestamp"	DATETIME NOT NULL,
	"content"	TEXT NOT NULL,
	"updatedAt"	DATETIME NOT NULL
);
CREATE TABLE IF NOT EXISTS "lives" (
	"id"	VARCHAR(255) NOT NULL,
	"channelID"	VARCHAR(255) NOT NULL,
	"timestamp"	DATETIME NOT NULL,
	"content"	TEXT NOT NULL,
	PRIMARY KEY("id")
);
CREATE TABLE IF NOT EXISTS "channels" (
	"channelID"	VARCHAR(255) NOT NULL,
	"config"	TEXT NOT NULL,
	"updatedAt"	DATETIME NOT NULL,
	PRIMARY KEY("channelID")
);
CREATE TABLE IF NOT EXISTS "config" (
	"id"	INTEGER PRIMARY KEY AUTOINCREMENT,
	"config"	TEXT NOT NULL
);
COMMIT;
