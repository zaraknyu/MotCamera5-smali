.class public final Landroidx/media3/exoplayer/image/ImageRenderer$TileInfo;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public presentationTimeUs:J

.field public tileBitmap:Ljava/lang/Object;

.field public tileIndex:I


# virtual methods
.method public getGestureTriggerBundle(I)Landroid/os/Bundle;
    .locals 3

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "TIMER"

    const/16 v2, 0xbb8

    invoke-virtual {v0, v1, v2}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    const-string v1, "TIMER_CANCEL_UI"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v1, "AIR_GESTURE_TYPE"

    invoke-virtual {v0, v1, p1}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    iget-object p0, p0, Landroidx/media3/exoplayer/image/ImageRenderer$TileInfo;->tileBitmap:Ljava/lang/Object;

    check-cast p0, Landroidx/media3/common/util/TimedValueQueue;

    iget p1, p0, Landroidx/media3/common/util/TimedValueQueue;->first:I

    const-string v1, "ANALYTICS_AIR_GESTURE_STOP"

    invoke-virtual {v0, v1, p1}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    const-string p1, "ANALYTICS_AIR_GESTURE_PAUSE"

    iget p0, p0, Landroidx/media3/common/util/TimedValueQueue;->size:I

    invoke-virtual {v0, p1, p0}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    return-object v0
.end method

.method public setGestureTriggerCounter(IZ)V
    .locals 1

    iget-object p0, p0, Landroidx/media3/exoplayer/image/ImageRenderer$TileInfo;->tileBitmap:Ljava/lang/Object;

    check-cast p0, Landroidx/media3/common/util/TimedValueQueue;

    const/4 v0, 0x2

    if-eq p1, v0, :cond_2

    const/4 v0, 0x3

    if-eq p1, v0, :cond_0

    return-void

    :cond_0
    if-eqz p2, :cond_1

    iget p1, p0, Landroidx/media3/common/util/TimedValueQueue;->size:I

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Landroidx/media3/common/util/TimedValueQueue;->size:I

    return-void

    :cond_1
    iget p1, p0, Landroidx/media3/common/util/TimedValueQueue;->size:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Landroidx/media3/common/util/TimedValueQueue;->size:I

    return-void

    :cond_2
    if-eqz p2, :cond_3

    iget p1, p0, Landroidx/media3/common/util/TimedValueQueue;->first:I

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Landroidx/media3/common/util/TimedValueQueue;->first:I

    return-void

    :cond_3
    iget p1, p0, Landroidx/media3/common/util/TimedValueQueue;->first:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Landroidx/media3/common/util/TimedValueQueue;->first:I

    return-void
.end method
