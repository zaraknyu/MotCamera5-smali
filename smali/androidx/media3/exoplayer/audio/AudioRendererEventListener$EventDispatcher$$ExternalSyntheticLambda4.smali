.class public final synthetic Landroidx/media3/exoplayer/audio/AudioRendererEventListener$EventDispatcher$$ExternalSyntheticLambda4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/tinder/StateMachine;


# direct methods
.method public synthetic constructor <init>(Lcom/tinder/StateMachine;J)V
    .locals 0

    .line 1
    const/4 p2, 0x1

    iput p2, p0, Landroidx/media3/exoplayer/audio/AudioRendererEventListener$EventDispatcher$$ExternalSyntheticLambda4;->$r8$classId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/media3/exoplayer/audio/AudioRendererEventListener$EventDispatcher$$ExternalSyntheticLambda4;->f$0:Lcom/tinder/StateMachine;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/tinder/StateMachine;Ljava/lang/Exception;I)V
    .locals 0

    .line 2
    iput p3, p0, Landroidx/media3/exoplayer/audio/AudioRendererEventListener$EventDispatcher$$ExternalSyntheticLambda4;->$r8$classId:I

    iput-object p1, p0, Landroidx/media3/exoplayer/audio/AudioRendererEventListener$EventDispatcher$$ExternalSyntheticLambda4;->f$0:Lcom/tinder/StateMachine;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget v0, p0, Landroidx/media3/exoplayer/audio/AudioRendererEventListener$EventDispatcher$$ExternalSyntheticLambda4;->$r8$classId:I

    iget-object p0, p0, Landroidx/media3/exoplayer/audio/AudioRendererEventListener$EventDispatcher$$ExternalSyntheticLambda4;->f$0:Lcom/tinder/StateMachine;

    packed-switch v0, :pswitch_data_0

    iget-object p0, p0, Lcom/tinder/StateMachine;->graph:Ljava/lang/Object;

    check-cast p0, Landroidx/media3/exoplayer/ExoPlayerImpl$ComponentListener;

    sget v0, Landroidx/media3/common/util/Util;->SDK_INT:I

    iget-object p0, p0, Landroidx/media3/exoplayer/ExoPlayerImpl$ComponentListener;->this$0:Landroidx/media3/exoplayer/ExoPlayerImpl;

    iget-object p0, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->analyticsCollector:Landroidx/media3/exoplayer/analytics/DefaultAnalyticsCollector;

    invoke-virtual {p0}, Landroidx/media3/exoplayer/analytics/DefaultAnalyticsCollector;->generateReadingMediaPeriodEventTime()Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;

    move-result-object v0

    new-instance v1, Landroidx/media3/exoplayer/image/BitmapFactoryImageDecoder$Factory$$ExternalSyntheticLambda0;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Landroidx/media3/exoplayer/image/BitmapFactoryImageDecoder$Factory$$ExternalSyntheticLambda0;-><init>(I)V

    const/16 v2, 0x3f6

    invoke-virtual {p0, v0, v2, v1}, Landroidx/media3/exoplayer/analytics/DefaultAnalyticsCollector;->sendEvent(Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;ILandroidx/media3/common/util/ListenerSet$Event;)V

    return-void

    :pswitch_0
    iget-object p0, p0, Lcom/tinder/StateMachine;->graph:Ljava/lang/Object;

    check-cast p0, Landroidx/media3/exoplayer/ExoPlayerImpl$ComponentListener;

    sget v0, Landroidx/media3/common/util/Util;->SDK_INT:I

    iget-object p0, p0, Landroidx/media3/exoplayer/ExoPlayerImpl$ComponentListener;->this$0:Landroidx/media3/exoplayer/ExoPlayerImpl;

    iget-object p0, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->analyticsCollector:Landroidx/media3/exoplayer/analytics/DefaultAnalyticsCollector;

    invoke-virtual {p0}, Landroidx/media3/exoplayer/analytics/DefaultAnalyticsCollector;->generateReadingMediaPeriodEventTime()Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;

    move-result-object v0

    new-instance v1, Landroidx/media3/exoplayer/analytics/DefaultAnalyticsCollector$$ExternalSyntheticLambda2;

    const/16 v2, 0x18

    invoke-direct {v1, v2}, Landroidx/media3/exoplayer/analytics/DefaultAnalyticsCollector$$ExternalSyntheticLambda2;-><init>(I)V

    const/16 v2, 0x3f2

    invoke-virtual {p0, v0, v2, v1}, Landroidx/media3/exoplayer/analytics/DefaultAnalyticsCollector;->sendEvent(Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;ILandroidx/media3/common/util/ListenerSet$Event;)V

    return-void

    :pswitch_1
    iget-object p0, p0, Lcom/tinder/StateMachine;->graph:Ljava/lang/Object;

    check-cast p0, Landroidx/media3/exoplayer/ExoPlayerImpl$ComponentListener;

    sget v0, Landroidx/media3/common/util/Util;->SDK_INT:I

    iget-object p0, p0, Landroidx/media3/exoplayer/ExoPlayerImpl$ComponentListener;->this$0:Landroidx/media3/exoplayer/ExoPlayerImpl;

    iget-object p0, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->analyticsCollector:Landroidx/media3/exoplayer/analytics/DefaultAnalyticsCollector;

    invoke-virtual {p0}, Landroidx/media3/exoplayer/analytics/DefaultAnalyticsCollector;->generateReadingMediaPeriodEventTime()Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;

    move-result-object v0

    new-instance v1, Landroidx/media3/exoplayer/analytics/DefaultAnalyticsCollector$$ExternalSyntheticLambda2;

    const/16 v2, 0x1d

    invoke-direct {v1, v2}, Landroidx/media3/exoplayer/analytics/DefaultAnalyticsCollector$$ExternalSyntheticLambda2;-><init>(I)V

    const/16 v2, 0x405

    invoke-virtual {p0, v0, v2, v1}, Landroidx/media3/exoplayer/analytics/DefaultAnalyticsCollector;->sendEvent(Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;ILandroidx/media3/common/util/ListenerSet$Event;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
