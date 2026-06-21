.class public final enum Lc/J;
.super Ljava/lang/Enum;
.source "SourceFile"


# static fields
.field public static final enum a:Lc/J;

.field public static final enum b:Lc/J;

.field public static final enum c:Lc/J;

.field public static final enum d:Lc/J;

.field public static final enum e:Lc/J;

.field public static final synthetic f:[Lc/J;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    new-instance v0, Lc/J;

    const-string v1, "WHITEBOARD"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lc/J;->a:Lc/J;

    new-instance v1, Lc/J;

    const-string v2, "BOOK"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lc/J;->b:Lc/J;

    new-instance v2, Lc/J;

    const-string v3, "DOCUMENT"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lc/J;->c:Lc/J;

    new-instance v3, Lc/J;

    const-string v4, "ID_CARD"

    const/4 v5, 0x3

    invoke-direct {v3, v4, v5}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lc/J;->d:Lc/J;

    new-instance v4, Lc/J;

    const-string v5, "BUSINESS_CARD"

    const/4 v6, 0x4

    invoke-direct {v4, v5, v6}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v4, Lc/J;->e:Lc/J;

    filled-new-array {v0, v1, v2, v3, v4}, [Lc/J;

    move-result-object v0

    sput-object v0, Lc/J;->f:[Lc/J;

    invoke-static {v0}, Lkotlin/enums/EnumEntriesKt;->enumEntries([Ljava/lang/Enum;)Lkotlin/enums/EnumEntriesList;

    return-void
.end method

.method public static a()[Lc/J;
    .locals 1

    sget-object v0, Lc/J;->f:[Lc/J;

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lc/J;

    return-object v0
.end method
