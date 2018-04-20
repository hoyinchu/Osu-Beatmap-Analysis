select
bmap.beatmap_id, bmap.hit_length, 
bmap.diff_size, bmap.diff_overall, bmap.diff_approach, bmap.diff_drain,
bmap.playcount, bmap.passcount, bmap.max_combo, bmap.difficultyrating,
bset.approved, bset.approved_date, bset.last_update,
bset.bpm, bset.genre_id,bset.language_id,bset.favourite_count
from
BeatmapInfo bmap
inner join BeatmapSetContain on bmap.beatmap_id=BeatmapSetContain.beatmap_id
inner join BeatmapSetInfo bset on BeatmapSetContain.beatmapset_id=bset.beatmapset_id