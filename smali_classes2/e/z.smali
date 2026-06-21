.class public final enum Le/z;
.super Ljava/lang/Enum;
.source "SourceFile"


# static fields
.field public static final enum a:Le/z;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    new-instance v0, Le/z;

    const-string v1, "Normal"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v0, Le/z;->a:Le/z;

    new-instance v1, Le/z;

    const-string v2, "IDCardFirstPage"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    new-instance v2, Le/z;

    const-string v3, "IDCardSecondPage"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    filled-new-array {v0, v1, v2}, [Le/z;

    move-result-object v0

    invoke-static {v0}, Lkotlin/enums/EnumEntriesKt;->enumEntries([Ljava/lang/Enum;)Lkotlin/enums/EnumEntriesList;

    return-void
.end method
