.class public final Lcom/motorola/camera/superslowmotion/SuperSlowMotionController$ControllerRendererFactory;
.super Landroidx/media3/exoplayer/DefaultRenderersFactory;
.source "SourceFile"


# instance fields
.field public final listener:Lcom/motorola/camera/superslowmotion/SuperSlowMotionController$1;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/motorola/camera/superslowmotion/SuperSlowMotionController$1;)V
    .locals 0

    invoke-direct {p0, p1}, Landroidx/media3/exoplayer/DefaultRenderersFactory;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/motorola/camera/superslowmotion/SuperSlowMotionController$ControllerRendererFactory;->listener:Lcom/motorola/camera/superslowmotion/SuperSlowMotionController$1;

    return-void
.end method


# virtual methods
.method public final buildAudioRenderers(Landroid/content/Context;Landroidx/media3/exoplayer/audio/DefaultAudioSink;Landroid/os/Handler;Landroidx/media3/exoplayer/ExoPlayerImpl$ComponentListener;Ljava/util/ArrayList;)V
    .locals 0

    return-void
.end method

.method public final buildMiscellaneousRenderers(Landroid/content/Context;Landroid/os/Handler;Ljava/util/ArrayList;)V
    .locals 0

    new-instance p1, Lcom/motorola/camera/superslowmotion/SuperSlowMotionController$ControllerRendererFactory$buildMiscellaneousRenderers$1;

    invoke-direct {p1, p0}, Lcom/motorola/camera/superslowmotion/SuperSlowMotionController$ControllerRendererFactory$buildMiscellaneousRenderers$1;-><init>(Lcom/motorola/camera/superslowmotion/SuperSlowMotionController$ControllerRendererFactory;)V

    invoke-virtual {p3, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method
