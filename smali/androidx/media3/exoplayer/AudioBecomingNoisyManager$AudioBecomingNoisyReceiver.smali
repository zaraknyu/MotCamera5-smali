.class public final Landroidx/media3/exoplayer/AudioBecomingNoisyManager$AudioBecomingNoisyReceiver;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# instance fields
.field public final eventHandler:Landroidx/media3/common/util/SystemHandlerWrapper;

.field public final listener:Landroidx/media3/exoplayer/ExoPlayerImpl$ComponentListener;

.field public final synthetic this$0:Landroidx/compose/runtime/Latch;


# direct methods
.method public constructor <init>(Landroidx/compose/runtime/Latch;Landroidx/media3/common/util/SystemHandlerWrapper;Landroidx/media3/exoplayer/ExoPlayerImpl$ComponentListener;)V
    .locals 0

    iput-object p1, p0, Landroidx/media3/exoplayer/AudioBecomingNoisyManager$AudioBecomingNoisyReceiver;->this$0:Landroidx/compose/runtime/Latch;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    iput-object p2, p0, Landroidx/media3/exoplayer/AudioBecomingNoisyManager$AudioBecomingNoisyReceiver;->eventHandler:Landroidx/media3/common/util/SystemHandlerWrapper;

    iput-object p3, p0, Landroidx/media3/exoplayer/AudioBecomingNoisyManager$AudioBecomingNoisyReceiver;->listener:Landroidx/media3/exoplayer/ExoPlayerImpl$ComponentListener;

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    const-string p1, "android.media.AUDIO_BECOMING_NOISY"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    new-instance p1, Lcom/airbnb/lottie/LottieTask$$ExternalSyntheticLambda0;

    const/16 p2, 0x9

    invoke-direct {p1, p2, p0}, Lcom/airbnb/lottie/LottieTask$$ExternalSyntheticLambda0;-><init>(ILjava/lang/Object;)V

    iget-object p0, p0, Landroidx/media3/exoplayer/AudioBecomingNoisyManager$AudioBecomingNoisyReceiver;->eventHandler:Landroidx/media3/common/util/SystemHandlerWrapper;

    invoke-virtual {p0, p1}, Landroidx/media3/common/util/SystemHandlerWrapper;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method
