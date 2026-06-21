.class public abstract Landroidx/room/RoomOpenDelegate;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final identityHash:Ljava/lang/Object;

.field public final legacyIdentityHash:Ljava/lang/Object;

.field public version:I


# direct methods
.method public constructor <init>(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V
    .locals 1

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/high16 v0, -0x80000000

    .line 6
    iput v0, p0, Landroidx/room/RoomOpenDelegate;->version:I

    .line 7
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroidx/room/RoomOpenDelegate;->legacyIdentityHash:Ljava/lang/Object;

    .line 8
    iput-object p1, p0, Landroidx/room/RoomOpenDelegate;->identityHash:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput p2, p0, Landroidx/room/RoomOpenDelegate;->version:I

    .line 3
    iput-object p1, p0, Landroidx/room/RoomOpenDelegate;->identityHash:Ljava/lang/Object;

    .line 4
    iput-object p3, p0, Landroidx/room/RoomOpenDelegate;->legacyIdentityHash:Ljava/lang/Object;

    return-void
.end method

.method public static createOrientationHelper(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;I)Landroidx/room/RoomOpenDelegate;
    .locals 1

    if-eqz p1, :cond_1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    new-instance p1, Landroidx/recyclerview/widget/OrientationHelper$1;

    const/4 v0, 0x1

    invoke-direct {p1, p0, v0}, Landroidx/recyclerview/widget/OrientationHelper$1;-><init>(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;I)V

    return-object p1

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "invalid orientation"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    new-instance p1, Landroidx/recyclerview/widget/OrientationHelper$1;

    const/4 v0, 0x0

    invoke-direct {p1, p0, v0}, Landroidx/recyclerview/widget/OrientationHelper$1;-><init>(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;I)V

    return-object p1
.end method


# virtual methods
.method public abstract createAllTables(Landroidx/sqlite/SQLiteConnection;)V
.end method

.method public abstract dropAllTables(Landroidx/sqlite/SQLiteConnection;)V
.end method

.method public abstract getDecoratedEnd(Landroid/view/View;)I
.end method

.method public abstract getDecoratedMeasurement(Landroid/view/View;)I
.end method

.method public abstract getDecoratedMeasurementInOther(Landroid/view/View;)I
.end method

.method public abstract getDecoratedStart(Landroid/view/View;)I
.end method

.method public abstract getEnd()I
.end method

.method public abstract getEndAfterPadding()I
.end method

.method public abstract getEndPadding()I
.end method

.method public abstract getMode()I
.end method

.method public abstract getModeInOther()I
.end method

.method public abstract getStartAfterPadding()I
.end method

.method public abstract getTotalSpace()I
.end method

.method public getTotalSpaceChange()I
    .locals 2

    const/high16 v0, -0x80000000

    iget v1, p0, Landroidx/room/RoomOpenDelegate;->version:I

    if-ne v0, v1, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    invoke-virtual {p0}, Landroidx/room/RoomOpenDelegate;->getTotalSpace()I

    move-result v0

    iget p0, p0, Landroidx/room/RoomOpenDelegate;->version:I

    sub-int/2addr v0, p0

    return v0
.end method

.method public abstract getTransformedEndWithDecoration(Landroid/view/View;)I
.end method

.method public abstract getTransformedStartWithDecoration(Landroid/view/View;)I
.end method

.method public abstract offsetChildren(I)V
.end method

.method public abstract onCreate(Landroidx/sqlite/SQLiteConnection;)V
.end method

.method public abstract onOpen(Landroidx/sqlite/SQLiteConnection;)V
.end method

.method public abstract onPostMigrate(Landroidx/sqlite/SQLiteConnection;)V
.end method

.method public abstract onPreMigrate(Landroidx/sqlite/SQLiteConnection;)V
.end method

.method public abstract onValidateSchema(Landroidx/sqlite/SQLiteConnection;)Lcom/google/android/gms/common/internal/zzv;
.end method
