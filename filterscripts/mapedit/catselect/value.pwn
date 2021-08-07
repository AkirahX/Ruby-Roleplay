#define MAX_CATEGORYSELECT_ROWS \
    20

#define MIN_CATEGORYSELECT_PAGE \
    0

enum {
    LITEM_CATEGORYSELECT_ROW_F,
    LITEM_CATEGORYSELECT_ROW_L = (LITEM_CATEGORYSELECT_ROW_F + MAX_CATEGORYSELECT_ROWS) - 1,
    LITEM_CATEGORYSELECT_SPACE,
    LITEM_CATEGORYSELECT_SEARCH,
    LITEM_CATEGORYSELECT_PAGE,
    LITEM_CATEGORYSELECT_PAGE_F,
    LITEM_CATEGORYSELECT_PAGE_P,
    LITEM_CATEGORYSELECT_PAGE_N,
    LITEM_CATEGORYSELECT_PAGE_L,
    MAX_CATEGORYSELECT_LITEMS
}

enum {
    CATEGORYSELECT_ID_NONE,
    CATEGORYSELECT_ID_MODEL,
    CATEGORYSELECT_ID_VEHICLE,
    CATEGORYSELECT_ID_SKIN,
    CATEGORYSELECT_ID_TEXTURE,
    MAX_CATEGORYSELECT_IDS
}