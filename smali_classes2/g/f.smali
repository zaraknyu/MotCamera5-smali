.class public final enum Lg/f;
.super Ljava/lang/Enum;
.source "SourceFile"


# static fields
.field public static final a:La/k;

.field public static final enum b:Lg/f;

.field public static final enum c:Lg/f;

.field public static final enum d:Lg/f;

.field public static final enum e:Lg/f;

.field public static final enum f:Lg/f;

.field public static final enum g:Lg/f;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    new-instance v0, Lg/f;

    const-string v1, "NO_OP"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lg/f;->b:Lg/f;

    new-instance v1, Lg/f;

    const-string v2, "CREATE_OP"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lg/f;->c:Lg/f;

    new-instance v2, Lg/f;

    const-string v3, "DELETE_OP"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lg/f;->d:Lg/f;

    new-instance v3, Lg/f;

    const-string v4, "COLOR_OP"

    const/4 v5, 0x3

    invoke-direct {v3, v4, v5}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lg/f;->e:Lg/f;

    new-instance v4, Lg/f;

    const-string v5, "COLOR_VISIBILITY_OP"

    const/4 v6, 0x4

    invoke-direct {v4, v5, v6}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v4, Lg/f;->f:Lg/f;

    new-instance v5, Lg/f;

    const-string v6, "TRANSFORM_OP"

    const/4 v7, 0x5

    invoke-direct {v5, v6, v7}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lg/f;->g:Lg/f;

    filled-new-array/range {v0 .. v5}, [Lg/f;

    move-result-object v0

    invoke-static {v0}, Lkotlin/enums/EnumEntriesKt;->enumEntries([Ljava/lang/Enum;)Lkotlin/enums/EnumEntriesList;

    new-instance v0, La/k;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lg/f;->a:La/k;

    return-void
.end method
