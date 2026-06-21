.class public final synthetic Landroidx/media3/exoplayer/audio/AudioRendererEventListener$EventDispatcher$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/tinder/StateMachine;

.field public final synthetic f$1:Landroidx/media3/extractor/Ac4Util$Ac4Presentation;


# direct methods
.method public synthetic constructor <init>(Lcom/tinder/StateMachine;Landroidx/media3/extractor/Ac4Util$Ac4Presentation;I)V
    .locals 0

    iput p3, p0, Landroidx/media3/exoplayer/audio/AudioRendererEventListener$EventDispatcher$$ExternalSyntheticLambda0;->$r8$classId:I

    iput-object p1, p0, Landroidx/media3/exoplayer/audio/AudioRendererEventListener$EventDispatcher$$ExternalSyntheticLambda0;->f$0:Lcom/tinder/StateMachine;

    iput-object p2, p0, Landroidx/media3/exoplayer/audio/AudioRendererEventListener$EventDispatcher$$ExternalSyntheticLambda0;->f$1:Landroidx/media3/extractor/Ac4Util$Ac4Presentation;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget v0, p0, Landroidx/media3/exoplayer/audio/AudioRendererEventListener$EventDispatcher$$ExternalSyntheticLambda0;->$r8$classId:I

    const/16 v1, 0x1b

    iget-object v2, p0, Landroidx/media3/exoplayer/audio/AudioRendererEventListener$EventDispatcher$$ExternalSyntheticLambda0;->f$1:Landroidx/media3/extractor/Ac4Util$Ac4Presentation;

    iget-object p0, p0, Landroidx/media3/exoplayer/audio/AudioRendererEventListener$EventDispatcher$$ExternalSyntheticLambda0;->f$0:Lcom/tinder/StateMachine;

    packed-switch v0, :pswitch_data_0

    iget-object p0, p0, Lcom/tinder/StateMachine;->graph:Ljava/lang/Object;

    check-cast p0, Landroidx/media3/exoplayer/ExoPlayerImpl$ComponentListener;

    sget v0, Landroidx/media3/common/util/Util;->SDK_INT:I

    iget-object p0, p0, Landroidx/media3/exoplayer/ExoPlayerImpl$ComponentListener;->this$0:Landroidx/media3/exoplayer/ExoPlayerImpl;

    iget-object p0, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->analyticsCollector:Landroidx/media3/exoplayer/analytics/DefaultAnalyticsCollector;

    invoke-virtual {p0}, Landroidx/media3/exoplayer/analytics/DefaultAnalyticsCollector;->generateReadingMediaPeriodEventTime()Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;

    move-result-object v0

    new-instance v3, Landroidx/media3/exoplayer/analytics/DefaultAnalyticsCollector$$ExternalSyntheticLambda2;

    invoke-direct {v3, v0, v2, v1}, Landroidx/media3/exoplayer/analytics/DefaultAnalyticsCollector$$ExternalSyntheticLambda2;-><init>(Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;Ljava/lang/Object;I)V

    const/16 v1, 0x407

    invoke-virtual {p0, v0, v1, v3}, Landroidx/media3/exoplayer/analytics/DefaultAnalyticsCollector;->sendEvent(Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;ILandroidx/media3/common/util/ListenerSet$Event;)V

    return-void

    :pswitch_0
    iget-object p0, p0, Lcom/tinder/StateMachine;->graph:Ljava/lang/Object;

    check-cast p0, Landroidx/media3/exoplayer/ExoPlayerImpl$ComponentListener;

    sget v0, Landroidx/media3/common/util/Util;->SDK_INT:I

    iget-object p0, p0, Landroidx/media3/exoplayer/ExoPlayerImpl$ComponentListener;->this$0:Landroidx/media3/exoplayer/ExoPlayerImpl;

    iget-object p0, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->analyticsCollector:Landroidx/media3/exoplayer/analytics/DefaultAnalyticsCollector;

    invoke-virtual {p0}, Landroidx/media3/exoplayer/analytics/DefaultAnalyticsCollector;->generateReadingMediaPeriodEventTime()Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;

    move-result-object v0

    new-instance v3, Landroidx/core/view/DifferentialMotionFlingController$$ExternalSyntheticLambda0;

    invoke-direct {v3, v0, v2, v1}, Landroidx/core/view/DifferentialMotionFlingController$$ExternalSyntheticLambda0;-><init>(Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;Ljava/lang/Object;I)V

    const/16 v1, 0x408

    invoke-virtual {p0, v0, v1, v3}, Landroidx/media3/exoplayer/analytics/DefaultAnalyticsCollector;->sendEvent(Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;ILandroidx/media3/common/util/ListenerSet$Event;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
