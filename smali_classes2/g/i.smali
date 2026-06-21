.class public final enum Lg/i;
.super Ljava/lang/Enum;
.source "SourceFile"


# static fields
.field public static final a:La/k;

.field public static final enum b:Lg/i;

.field public static final enum c:Lg/i;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lg/i;

    const-string v1, "STROKE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lg/i;->b:Lg/i;

    new-instance v1, Lg/i;

    const-string v2, "FILL"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lg/i;->c:Lg/i;

    filled-new-array {v0, v1}, [Lg/i;

    move-result-object v0

    invoke-static {v0}, Lkotlin/enums/EnumEntriesKt;->enumEntries([Ljava/lang/Enum;)Lkotlin/enums/EnumEntriesList;

    new-instance v0, La/k;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lg/i;->a:La/k;

    return-void
.end method
