.class public final synthetic Landroidx/core/view/DifferentialMotionFlingController$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/compose/animation/core/Easing;
.implements Landroidx/compose/ui/graphics/colorspace/DoubleFunction;
.implements Lcom/google/common/base/Function;
.implements Landroidx/media3/common/util/ListenerSet$Event;
.implements Landroidx/media3/common/util/ListenerSet$IterationFinishedEvent;


# instance fields
.field public final synthetic $r8$classId:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    .line 1
    iput p1, p0, Landroidx/core/view/DifferentialMotionFlingController$$ExternalSyntheticLambda0;->$r8$classId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Landroidx/media3/exoplayer/ExoPlayerImpl;)V
    .locals 0

    .line 2
    const/16 p1, 0xf

    iput p1, p0, Landroidx/core/view/DifferentialMotionFlingController$$ExternalSyntheticLambda0;->$r8$classId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;F)V
    .locals 0

    .line 3
    const/16 p1, 0x13

    iput p1, p0, Landroidx/core/view/DifferentialMotionFlingController$$ExternalSyntheticLambda0;->$r8$classId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;I)V
    .locals 0

    .line 4
    const/16 p1, 0x18

    iput p1, p0, Landroidx/core/view/DifferentialMotionFlingController$$ExternalSyntheticLambda0;->$r8$classId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;IIZ)V
    .locals 0

    .line 5
    const/16 p1, 0x1d

    iput p1, p0, Landroidx/core/view/DifferentialMotionFlingController$$ExternalSyntheticLambda0;->$r8$classId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;Landroidx/media3/common/MediaItem;I)V
    .locals 0

    .line 6
    const/16 p1, 0x12

    iput p1, p0, Landroidx/core/view/DifferentialMotionFlingController$$ExternalSyntheticLambda0;->$r8$classId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;Ljava/lang/Object;I)V
    .locals 0

    .line 7
    iput p3, p0, Landroidx/core/view/DifferentialMotionFlingController$$ExternalSyntheticLambda0;->$r8$classId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;ZI)V
    .locals 0

    .line 8
    const/16 p1, 0x1c

    iput p1, p0, Landroidx/core/view/DifferentialMotionFlingController$$ExternalSyntheticLambda0;->$r8$classId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;ZIB)V
    .locals 0

    .line 9
    iput p3, p0, Landroidx/core/view/DifferentialMotionFlingController$$ExternalSyntheticLambda0;->$r8$classId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget p0, p0, Landroidx/core/view/DifferentialMotionFlingController$$ExternalSyntheticLambda0;->$r8$classId:I

    packed-switch p0, :pswitch_data_0

    new-instance p0, Landroidx/media3/exoplayer/analytics/DefaultAnalyticsCollector;

    check-cast p1, Landroidx/media3/common/util/SystemClock;

    invoke-direct {p0, p1}, Landroidx/media3/exoplayer/analytics/DefaultAnalyticsCollector;-><init>(Landroidx/media3/common/util/SystemClock;)V

    return-object p0

    :pswitch_0
    check-cast p1, Landroidx/media3/common/Label;

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p1, Landroidx/media3/common/Label;->language:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ": "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p1, Landroidx/media3/common/Label;->value:Ljava/lang/String;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_data_0
    .packed-switch 0xc
        :pswitch_0
    .end packed-switch
.end method

.method public invoke(D)D
    .locals 10

    iget p0, p0, Landroidx/core/view/DifferentialMotionFlingController$$ExternalSyntheticLambda0;->$r8$classId:I

    const-wide/16 v0, 0x0

    const-wide v2, 0x3fb3d0722149b580L    # 0.07739938080495357

    const-wide v4, 0x3faab1232f514a03L    # 0.05213270142180095

    const-wide v6, 0x3fee54edcd0aeb60L    # 0.9478672985781991

    packed-switch p0, :pswitch_data_0

    return-wide p1

    .line 33
    :pswitch_0
    sget-object p0, Landroidx/compose/ui/graphics/colorspace/ColorSpaces;->SrgbPrimaries:[F

    sget-object p0, Landroidx/compose/ui/graphics/colorspace/ColorSpaces;->Bt2020PqTransferParameters:Landroidx/compose/ui/graphics/colorspace/TransferParameters;

    invoke-static {p0, p1, p2}, Landroidx/compose/ui/graphics/colorspace/ColorSpaces;->transferSt2048Eotf$ui_graphics_release(Landroidx/compose/ui/graphics/colorspace/TransferParameters;D)D

    move-result-wide p0

    return-wide p0

    .line 34
    :pswitch_1
    sget-object p0, Landroidx/compose/ui/graphics/colorspace/ColorSpaces;->SrgbPrimaries:[F

    sget-object p0, Landroidx/compose/ui/graphics/colorspace/ColorSpaces;->Bt2020PqTransferParameters:Landroidx/compose/ui/graphics/colorspace/TransferParameters;

    invoke-static {p0, p1, p2}, Landroidx/compose/ui/graphics/colorspace/ColorSpaces;->transferSt2048Oetf$ui_graphics_release(Landroidx/compose/ui/graphics/colorspace/TransferParameters;D)D

    move-result-wide p0

    return-wide p0

    .line 35
    :pswitch_2
    sget-object p0, Landroidx/compose/ui/graphics/colorspace/ColorSpaces;->SrgbPrimaries:[F

    sget-object p0, Landroidx/compose/ui/graphics/colorspace/ColorSpaces;->Bt2020HlgTransferParameters:Landroidx/compose/ui/graphics/colorspace/TransferParameters;

    invoke-static {p0, p1, p2}, Landroidx/compose/ui/graphics/colorspace/ColorSpaces;->transferHlgEotf$ui_graphics_release(Landroidx/compose/ui/graphics/colorspace/TransferParameters;D)D

    move-result-wide p0

    return-wide p0

    .line 36
    :pswitch_3
    sget-object p0, Landroidx/compose/ui/graphics/colorspace/ColorSpaces;->SrgbPrimaries:[F

    sget-object p0, Landroidx/compose/ui/graphics/colorspace/ColorSpaces;->Bt2020HlgTransferParameters:Landroidx/compose/ui/graphics/colorspace/TransferParameters;

    invoke-static {p0, p1, p2}, Landroidx/compose/ui/graphics/colorspace/ColorSpaces;->transferHlgOetf$ui_graphics_release(Landroidx/compose/ui/graphics/colorspace/TransferParameters;D)D

    move-result-wide p0

    return-wide p0

    :pswitch_4
    cmpg-double p0, p1, v0

    if-gez p0, :cond_0

    neg-double v0, p1

    goto :goto_0

    :cond_0
    move-wide v0, p1

    :goto_0
    const-wide v8, 0x3fa4b5dcc63f1412L    # 0.04045

    cmpl-double p0, v0, v8

    if-ltz p0, :cond_1

    mul-double/2addr v6, v0

    add-double/2addr v6, v4

    const-wide v0, 0x4003333333333333L    # 2.4

    .line 37
    invoke-static {v6, v7, v0, v1}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    goto :goto_1

    :cond_1
    mul-double/2addr v0, v2

    .line 38
    :goto_1
    invoke-static {v0, v1, p1, p2}, Ljava/lang/Math;->copySign(DD)D

    move-result-wide p0

    return-wide p0

    :pswitch_5
    cmpg-double p0, p1, v0

    if-gez p0, :cond_2

    neg-double v0, p1

    goto :goto_2

    :cond_2
    move-wide v0, p1

    :goto_2
    const-wide v8, 0x3f69a5c61c57a063L    # 0.0031308049535603718

    cmpl-double p0, v0, v8

    if-ltz p0, :cond_3

    const-wide v2, 0x3fdaaaaaaaaaaaabL    # 0.4166666666666667

    .line 39
    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    sub-double/2addr v0, v4

    div-double/2addr v0, v6

    goto :goto_3

    :cond_3
    div-double/2addr v0, v2

    .line 40
    :goto_3
    invoke-static {v0, v1, p1, p2}, Ljava/lang/Math;->copySign(DD)D

    move-result-wide p0

    return-wide p0

    nop

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public invoke(Ljava/lang/Object;)V
    .locals 3

    iget p0, p0, Landroidx/core/view/DifferentialMotionFlingController$$ExternalSyntheticLambda0;->$r8$classId:I

    packed-switch p0, :pswitch_data_0

    :pswitch_0
    check-cast p1, Landroidx/media3/exoplayer/analytics/MediaMetricsListener;

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-void

    .line 2
    :pswitch_1
    check-cast p1, Landroidx/media3/exoplayer/analytics/MediaMetricsListener;

    .line 3
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-void

    .line 4
    :pswitch_2
    check-cast p1, Landroidx/media3/exoplayer/analytics/MediaMetricsListener;

    .line 5
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-void

    .line 6
    :pswitch_3
    check-cast p1, Landroidx/media3/exoplayer/analytics/MediaMetricsListener;

    .line 7
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-void

    .line 8
    :pswitch_4
    check-cast p1, Landroidx/media3/exoplayer/analytics/MediaMetricsListener;

    .line 9
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-void

    .line 10
    :pswitch_5
    check-cast p1, Landroidx/media3/exoplayer/analytics/MediaMetricsListener;

    .line 11
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-void

    .line 12
    :pswitch_6
    check-cast p1, Landroidx/media3/exoplayer/analytics/MediaMetricsListener;

    .line 13
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-void

    .line 14
    :pswitch_7
    check-cast p1, Landroidx/media3/exoplayer/analytics/MediaMetricsListener;

    .line 15
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-void

    .line 16
    :pswitch_8
    check-cast p1, Landroidx/media3/exoplayer/analytics/MediaMetricsListener;

    .line 17
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-void

    .line 18
    :pswitch_9
    check-cast p1, Landroidx/media3/exoplayer/analytics/MediaMetricsListener;

    .line 19
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-void

    .line 20
    :pswitch_a
    check-cast p1, Landroidx/media3/exoplayer/analytics/MediaMetricsListener;

    .line 21
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-void

    .line 22
    :pswitch_b
    check-cast p1, Landroidx/media3/exoplayer/analytics/MediaMetricsListener;

    .line 23
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-void

    .line 24
    :pswitch_c
    check-cast p1, Landroidx/media3/exoplayer/analytics/MediaMetricsListener;

    .line 25
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-void

    .line 26
    :pswitch_d
    check-cast p1, Landroidx/media3/common/Player$Listener;

    invoke-interface {p1}, Landroidx/media3/common/Player$Listener;->onRenderedFirstFrame()V

    return-void

    :pswitch_e
    check-cast p1, Landroidx/media3/common/Player$Listener;

    .line 27
    new-instance p0, Lcom/google/gson/JsonParseException;

    .line 28
    const-string v0, "Player release timed out."

    .line 29
    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 30
    new-instance v0, Landroidx/media3/exoplayer/ExoPlaybackException;

    const/4 v1, 0x2

    const/16 v2, 0x3eb

    invoke-direct {v0, v1, p0, v2}, Landroidx/media3/exoplayer/ExoPlaybackException;-><init>(ILjava/lang/Exception;I)V

    .line 31
    invoke-interface {p1, v0}, Landroidx/media3/common/Player$Listener;->onPlayerError(Landroidx/media3/common/PlaybackException;)V

    return-void

    :pswitch_data_0
    .packed-switch 0xe
        :pswitch_e
        :pswitch_0
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public invoke(Ljava/lang/Object;Landroidx/media3/common/FlagSet;)V
    .locals 0

    check-cast p1, Landroidx/media3/common/Player$Listener;

    .line 32
    new-instance p0, Landroidx/media3/common/Player$Events;

    invoke-direct {p0, p2}, Landroidx/media3/common/Player$Events;-><init>(Landroidx/media3/common/FlagSet;)V

    invoke-interface {p1, p0}, Landroidx/media3/common/Player$Listener;->onEvents(Landroidx/media3/common/Player$Events;)V

    return-void
.end method

.method public transform(F)F
    .locals 1

    iget p0, p0, Landroidx/core/view/DifferentialMotionFlingController$$ExternalSyntheticLambda0;->$r8$classId:I

    packed-switch p0, :pswitch_data_0

    return p1

    :pswitch_0
    const p0, 0x3eba2e8c

    cmpg-float p0, p1, p0

    const/high16 v0, 0x40f20000    # 7.5625f

    if-gez p0, :cond_0

    mul-float/2addr v0, p1

    mul-float/2addr v0, p1

    goto :goto_1

    :cond_0
    const p0, 0x3f3a2e8c

    cmpg-float p0, p1, p0

    if-gez p0, :cond_1

    const p0, 0x3f0ba2e9

    sub-float/2addr p1, p0

    mul-float/2addr v0, p1

    mul-float/2addr v0, p1

    const/high16 p0, 0x3f400000    # 0.75f

    :goto_0
    add-float/2addr v0, p0

    goto :goto_1

    :cond_1
    const p0, 0x3f68ba2f

    cmpg-float p0, p1, p0

    if-gez p0, :cond_2

    const p0, 0x3f51745d

    sub-float/2addr p1, p0

    mul-float/2addr v0, p1

    mul-float/2addr v0, p1

    const/high16 p0, 0x3f700000    # 0.9375f

    goto :goto_0

    :cond_2
    const p0, 0x3f745d17

    sub-float/2addr p1, p0

    mul-float/2addr v0, p1

    mul-float/2addr v0, p1

    const/high16 p0, 0x3f7c0000    # 0.984375f

    goto :goto_0

    :goto_1
    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
