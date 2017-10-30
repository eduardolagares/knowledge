SELECT TAGS.*, COUNT(KNOWLEDGE_TAGS.KNOWLEDGE_ID) AS KNOWLEDGE_COUNT FROM TAGS
INNER JOIN KNOWLEDGE_TAGS ON (TAGS.TAG_ID = KNOWLEDGE_TAGS.TAG_ID)
AND TAGS.DELETE_FLAG = 0
AND TAGS.TAG_NAME ILIKE ?
GROUP BY TAGS.TAG_ID
ORDER BY KNOWLEDGE_COUNT DESC, TAG_NAME
LIMIT ? OFFSET ?
