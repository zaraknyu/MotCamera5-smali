.class public abstract Lcom/google/android/gms/common/wrappers/InstantApps;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static _cache:Landroidx/sqlite/db/SimpleSQLiteQuery;

.field public static zza:Landroid/content/Context;

.field public static zzb:Ljava/lang/Boolean;


# direct methods
.method public static final offsetOnMainAxis(Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredItem;Landroidx/compose/foundation/gestures/Orientation;)I
    .locals 2

    sget-object v0, Landroidx/compose/foundation/gestures/Orientation;->Vertical:Landroidx/compose/foundation/gestures/Orientation;

    if-ne p1, v0, :cond_0

    iget-wide p0, p0, Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredItem;->offset:J

    const-wide v0, 0xffffffffL

    and-long/2addr p0, v0

    :goto_0
    long-to-int p0, p0

    return p0

    :cond_0
    iget-wide p0, p0, Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredItem;->offset:J

    const/16 v0, 0x20

    shr-long/2addr p0, v0

    goto :goto_0
.end method
