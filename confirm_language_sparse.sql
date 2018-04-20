select
bset.language_id, count(*)
from
BeatmapInfo bmap
inner join BeatmapSetContain on bmap.beatmap_id=BeatmapSetContain.beatmap_id
inner join BeatmapSetInfo bset on BeatmapSetContain.beatmapset_id=bset.beatmapset_id
group by bset.language_id
order by count(*) desc