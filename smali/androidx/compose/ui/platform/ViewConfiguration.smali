.class public interface abstract Landroidx/compose/ui/platform/ViewConfiguration;
.super Ljava/lang/Object;
.source "SourceFile"


# virtual methods
.method public abstract getDoubleTapTimeoutMillis()J
.end method

.method public abstract getLongPressTimeoutMillis()J
.end method

.method public getMaximumFlingVelocity()F
    .locals 0

    const p0, 0x7f7fffff    # Float.MAX_VALUE

    return p0
.end method

.method public getMinimumTouchTargetSize-MYxV2XQ()J
    .locals 2

    const/16 p0, 0x30

    int-to-float p0, p0

    invoke-static {p0, p0}, Landroidx/compose/ui/unit/DpKt;->DpSize-YgX7TsA(FF)J

    move-result-wide v0

    return-wide v0
.end method

.method public abstract getTouchSlop()F
.end method
