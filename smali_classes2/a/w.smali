.class public final enum La/w;
.super Ljava/lang/Enum;
.source "SourceFile"


# static fields
.field public static final enum a:La/w;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    new-instance v0, La/w;

    const-string v1, "PHOTO_LIBRARY"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    new-instance v1, La/w;

    const-string v2, "CAPTURE"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v1, La/w;->a:La/w;

    new-instance v2, La/w;

    const-string v3, "REVIEW"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    filled-new-array {v0, v1, v2}, [La/w;

    move-result-object v0

    invoke-static {v0}, Lkotlin/enums/EnumEntriesKt;->enumEntries([Ljava/lang/Enum;)Lkotlin/enums/EnumEntriesList;

    return-void
.end method
