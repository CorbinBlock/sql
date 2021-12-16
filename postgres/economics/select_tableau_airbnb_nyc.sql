ALTER TABLE tableau..airbnb_nyc
ADD FILE_DATE BIGINT

ALTER TABLE tableau..airbnb_nyc
ALTER COLUMN FILE_DATE YEAR

UPDATE tableau..airbnb_nyc
SET FILE_DATE = '2019'

SELECT * FROM tableau..airbnb_nyc




