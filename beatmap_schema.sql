CREATE TABLE BeatmapInfo (
beatmap_id int not null primary key,
total_length int not null,
hit_length int not null,
version text not null,
file_md5 text not null,
diff_size decimal(2,1) not null,
diff_overall decimal(2,1) not null,
diff_approach decimal(2,1) not null,
diff_drain decimal(2,1) not null,
mode int not null,
playcount int not null,
passcount int not null,
max_combo int not null,
difficultyrating float not null
);

CREATE TABLE BeatmapSetInfo (
beatmapset_id int not null primary key,
approved int not null,
approved_date text not null,
last_update text not null,
artist text not null,
title text not null,
creator text not null,
bpm int not null,
source text not null,
genre_id int not null,
language_id int not null,
favourite_count int not null
);

CREATE TABLE BeatmapSetContain (
beatmapset_id int not null,
beatmap_id int not null,
foreign key (beatmapset_id) references BeatmapSetInfo(beatmapset_id),
foreign key (beatmap_id) references BeatmapInfo(beatmap_id)
);