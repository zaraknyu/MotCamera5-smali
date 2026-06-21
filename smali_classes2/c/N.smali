.class public final enum Lc/N;
.super Ljava/lang/Enum;
.source "SourceFile"


# static fields
.field public static final enum a:Lc/N;

.field public static final enum b:Lc/N;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lc/N;

    const-string v1, "CONTENT_URI"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lc/N;->a:Lc/N;

    new-instance v1, Lc/N;

    const-string v2, "FILE_DIR"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lc/N;->b:Lc/N;

    filled-new-array {v0, v1}, [Lc/N;

    move-result-object v0

    invoke-static {v0}, Lkotlin/enums/EnumEntriesKt;->enumEntries([Ljava/lang/Enum;)Lkotlin/enums/EnumEntriesList;

    return-void
.end method
