.class public final enum La/v;
.super Ljava/lang/Enum;
.source "SourceFile"


# static fields
.field public static final enum a:La/v;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    new-instance v0, La/v;

    const-string v1, "SAVE_PDF"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v0, La/v;->a:La/v;

    new-instance v1, La/v;

    const-string v2, "FINISH_SCAN"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    new-instance v2, La/v;

    const-string v3, "CUSTOM_ACTION"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    filled-new-array {v0, v1, v2}, [La/v;

    move-result-object v0

    invoke-static {v0}, Lkotlin/enums/EnumEntriesKt;->enumEntries([Ljava/lang/Enum;)Lkotlin/enums/EnumEntriesList;

    return-void
.end method
