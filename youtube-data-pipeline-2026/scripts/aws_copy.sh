aws s3 cp CAVideos.csv s3://yt-data-pipeline-bronze-584342047171-ap-southeast-1-an/youtube/raw_statistics/region=ca/

aws s3 cp CA_category_id.json s3://yt-data-pipeline-bronze-584342047171-ap-southeast-1-an/youtube/raw_statistics_reference_data/region=ca/

for %r in (ca de fr gb in jp kr mx ru us) do (
    aws s3 cp %rvideos.csv s3://yt-data-pipeline-bronze-584342047171-ap-southeast-1-an/youtube/raw_statistics/region=%r/
    aws s3 cp %r_category_id.json s3://yt-data-pipeline-bronze-584342047171-ap-southeast-1-an/youtube/raw_statistics_reference_data/region=%r/
)