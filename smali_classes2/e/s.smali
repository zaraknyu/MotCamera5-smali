.class public final Le/s;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Iterator;
.implements Lkotlin/jvm/internal/markers/KMappedMarker;


# instance fields
.field public a:I

.field public final synthetic b:Le/t;


# direct methods
.method public constructor <init>(Le/t;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/s;->b:Le/t;

    return-void
.end method


# virtual methods
.method public final hasNext()Z
    .locals 1

    iget p0, p0, Le/s;->a:I

    const/4 v0, 0x4

    if-ge p0, v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final next()Ljava/lang/Object;
    .locals 2

    iget v0, p0, Le/s;->a:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Le/s;->a:I

    rem-int/lit8 v0, v0, 0x4

    const/4 v1, -0x3

    iget-object p0, p0, Le/s;->b:Le/t;

    if-eq v0, v1, :cond_2

    const/4 v1, -0x2

    if-eq v0, v1, :cond_1

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    iget-wide v0, p0, Le/t;->a:J

    goto :goto_0

    :cond_0
    iget-wide v0, p0, Le/t;->d:J

    goto :goto_0

    :cond_1
    iget-wide v0, p0, Le/t;->c:J

    goto :goto_0

    :cond_2
    iget-wide v0, p0, Le/t;->b:J

    :goto_0
    new-instance p0, Landroidx/compose/ui/geometry/Offset;

    invoke-direct {p0, v0, v1}, Landroidx/compose/ui/geometry/Offset;-><init>(J)V

    return-object p0
.end method

.method public final remove()V
    .locals 1

    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string v0, "Operation is not supported for read-only collection"

    invoke-direct {p0, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
