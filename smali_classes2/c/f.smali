.class public final enum Lc/f;
.super Ljava/lang/Enum;
.source "SourceFile"


# static fields
.field public static final enum a:Lc/f;

.field public static final enum b:Lc/f;

.field public static final enum c:Lc/f;


# direct methods
.method static constructor <clinit>()V
    .locals 11

    new-instance v0, Lc/f;

    const-string v1, "NONE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    new-instance v1, Lc/f;

    const-string v2, "ERROR_GROUP_DISABLED"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    new-instance v2, Lc/f;

    const-string v3, "ERROR_UNSUPPORTED_LANGUAGE"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    new-instance v3, Lc/f;

    const-string v4, "ERROR_BUSINESS_CARD_DETECTED"

    const/4 v5, 0x3

    invoke-direct {v3, v4, v5}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    new-instance v4, Lc/f;

    const-string v5, "ERROR_TOO_MANY_PAGES"

    const/4 v6, 0x4

    invoke-direct {v4, v5, v6}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    new-instance v5, Lc/f;

    const-string v6, "ERROR_PAGE_ERROR"

    const/4 v7, 0x5

    invoke-direct {v5, v6, v7}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lc/f;->a:Lc/f;

    new-instance v6, Lc/f;

    const-string v7, "ERROR_DOCUMENT_TIMEOUT"

    const/4 v8, 0x6

    invoke-direct {v6, v7, v8}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v6, Lc/f;->b:Lc/f;

    new-instance v7, Lc/f;

    const-string v8, "ERROR_SCAN2PDF_LIBRARY_ERROR"

    const/4 v9, 0x7

    invoke-direct {v7, v8, v9}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    new-instance v8, Lc/f;

    const-string v9, "SUCCESS"

    const/16 v10, 0x8

    invoke-direct {v8, v9, v10}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v8, Lc/f;->c:Lc/f;

    filled-new-array/range {v0 .. v8}, [Lc/f;

    move-result-object v0

    invoke-static {v0}, Lkotlin/enums/EnumEntriesKt;->enumEntries([Ljava/lang/Enum;)Lkotlin/enums/EnumEntriesList;

    return-void
.end method
