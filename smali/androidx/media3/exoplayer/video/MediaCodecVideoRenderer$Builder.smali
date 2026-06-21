.class public final Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer$Builder;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public allowedJoiningTimeMs:J

.field public buildCalled:Z

.field public codecAdapterFactory:Landroidx/media3/exoplayer/mediacodec/MediaCodecAdapter$Factory;

.field public final context:Landroid/content/Context;

.field public eventHandler:Landroid/os/Handler;

.field public eventListener:Landroidx/media3/exoplayer/ExoPlayerImpl$ComponentListener;

.field public maxDroppedFramesToNotify:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer$Builder;->context:Landroid/content/Context;

    new-instance v0, Lcom/google/android/play/core/splitinstall/zzac;

    invoke-direct {v0, p1}, Lcom/google/android/play/core/splitinstall/zzac;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer$Builder;->codecAdapterFactory:Landroidx/media3/exoplayer/mediacodec/MediaCodecAdapter$Factory;

    return-void
.end method
