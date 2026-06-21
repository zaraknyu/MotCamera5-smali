.class public final Landroidx/media3/exoplayer/audio/DefaultAudioSink$StreamEventCallbackV29$1;
.super Landroid/media/AudioTrack$StreamEventCallback;
.source "SourceFile"


# instance fields
.field public final synthetic this$1:Landroidx/core/view/MenuHostHelper;


# direct methods
.method public constructor <init>(Landroidx/core/view/MenuHostHelper;)V
    .locals 0

    iput-object p1, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink$StreamEventCallbackV29$1;->this$1:Landroidx/core/view/MenuHostHelper;

    invoke-direct {p0}, Landroid/media/AudioTrack$StreamEventCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public final onDataRequest(Landroid/media/AudioTrack;I)V
    .locals 0

    iget-object p0, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink$StreamEventCallbackV29$1;->this$1:Landroidx/core/view/MenuHostHelper;

    iget-object p0, p0, Landroidx/core/view/MenuHostHelper;->mProviderToLifecycleContainers:Ljava/lang/Object;

    check-cast p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;

    iget-object p2, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->audioTrack:Landroid/media/AudioTrack;

    invoke-virtual {p1, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    iget-object p1, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->listener:Lcom/google/android/gms/tasks/zzs;

    if-eqz p1, :cond_1

    iget-boolean p0, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->playing:Z

    if-eqz p0, :cond_1

    iget-object p0, p1, Lcom/google/android/gms/tasks/zzs;->zza:Ljava/lang/Object;

    check-cast p0, Landroidx/media3/exoplayer/audio/MediaCodecAudioRenderer;

    iget-object p0, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->wakeupListener:Landroidx/media3/exoplayer/ExoPlayerImplInternal$1;

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Landroidx/media3/exoplayer/ExoPlayerImplInternal$1;->onWakeup()V

    :cond_1
    :goto_0
    return-void
.end method

.method public final onPresentationEnded(Landroid/media/AudioTrack;)V
    .locals 1

    iget-object p0, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink$StreamEventCallbackV29$1;->this$1:Landroidx/core/view/MenuHostHelper;

    iget-object v0, p0, Landroidx/core/view/MenuHostHelper;->mProviderToLifecycleContainers:Ljava/lang/Object;

    check-cast v0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;

    iget-object v0, v0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->audioTrack:Landroid/media/AudioTrack;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-object p0, p0, Landroidx/core/view/MenuHostHelper;->mProviderToLifecycleContainers:Ljava/lang/Object;

    check-cast p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;

    const/4 p1, 0x1

    iput-boolean p1, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->handledOffloadOnPresentationEnded:Z

    return-void
.end method

.method public final onTearDown(Landroid/media/AudioTrack;)V
    .locals 1

    iget-object p0, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink$StreamEventCallbackV29$1;->this$1:Landroidx/core/view/MenuHostHelper;

    iget-object p0, p0, Landroidx/core/view/MenuHostHelper;->mProviderToLifecycleContainers:Ljava/lang/Object;

    check-cast p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;

    iget-object v0, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->audioTrack:Landroid/media/AudioTrack;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    iget-object p1, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->listener:Lcom/google/android/gms/tasks/zzs;

    if-eqz p1, :cond_1

    iget-boolean p0, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->playing:Z

    if-eqz p0, :cond_1

    iget-object p0, p1, Lcom/google/android/gms/tasks/zzs;->zza:Ljava/lang/Object;

    check-cast p0, Landroidx/media3/exoplayer/audio/MediaCodecAudioRenderer;

    iget-object p0, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->wakeupListener:Landroidx/media3/exoplayer/ExoPlayerImplInternal$1;

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Landroidx/media3/exoplayer/ExoPlayerImplInternal$1;->onWakeup()V

    :cond_1
    :goto_0
    return-void
.end method
