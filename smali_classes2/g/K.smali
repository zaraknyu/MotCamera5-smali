.class public final enum Lg/K;
.super Ljava/lang/Enum;
.source "SourceFile"


# static fields
.field public static final enum a:Lg/K;

.field public static final enum b:Lg/K;

.field public static final enum c:Lg/K;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    new-instance v0, Lg/K;

    const-string v1, "kSuccess"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lg/K;->a:Lg/K;

    new-instance v1, Lg/K;

    const-string v2, "kFailure"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lg/K;->b:Lg/K;

    new-instance v2, Lg/K;

    const-string v3, "kInterrupted"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lg/K;->c:Lg/K;

    filled-new-array {v0, v1, v2}, [Lg/K;

    move-result-object v0

    invoke-static {v0}, Lkotlin/enums/EnumEntriesKt;->enumEntries([Ljava/lang/Enum;)Lkotlin/enums/EnumEntriesList;

    return-void
.end method
