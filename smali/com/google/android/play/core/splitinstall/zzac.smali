.class public final Lcom/google/android/play/core/splitinstall/zzac;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/media3/exoplayer/mediacodec/MediaCodecAdapter$Factory;


# instance fields
.field public final zza:Landroid/content/Context;


# direct methods
.method public synthetic constructor <init>(Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/play/core/splitinstall/zzac;->zza:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createAdapter(Lcom/motorola/camera/fsm/Fsm;)Landroidx/media3/exoplayer/mediacodec/MediaCodecAdapter;
    .locals 4

    sget v0, Landroidx/media3/common/util/Util;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_1

    const/16 v1, 0x1f

    if-lt v0, v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/google/android/play/core/splitinstall/zzac;->zza:Landroid/content/Context;

    if-eqz p0, :cond_1

    const/16 v1, 0x1c

    if-lt v0, v1, :cond_1

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const-string v0, "com.amazon.hardware.tv_screen"

    invoke-virtual {p0, v0}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_1

    :goto_0
    iget-object p0, p1, Lcom/motorola/camera/fsm/Fsm;->mStates:Ljava/lang/Object;

    check-cast p0, Landroidx/media3/common/Format;

    iget-object p0, p0, Landroidx/media3/common/Format;->sampleMimeType:Ljava/lang/String;

    invoke-static {p0}, Landroidx/media3/common/MimeTypes;->getTrackType(Ljava/lang/String;)I

    move-result p0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Creating an asynchronous MediaCodec adapter for track type "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0}, Landroidx/media3/common/util/Util;->getTrackTypeString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DMCodecAdapterFactory"

    invoke-static {v1, v0}, Landroidx/media3/common/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Landroidx/room/concurrent/FileLock;

    new-instance v1, Landroidx/media3/exoplayer/mediacodec/AsynchronousMediaCodecAdapter$Factory$$ExternalSyntheticLambda0;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Landroidx/media3/exoplayer/mediacodec/AsynchronousMediaCodecAdapter$Factory$$ExternalSyntheticLambda0;-><init>(II)V

    new-instance v2, Landroidx/media3/exoplayer/mediacodec/AsynchronousMediaCodecAdapter$Factory$$ExternalSyntheticLambda0;

    const/4 v3, 0x1

    invoke-direct {v2, p0, v3}, Landroidx/media3/exoplayer/mediacodec/AsynchronousMediaCodecAdapter$Factory$$ExternalSyntheticLambda0;-><init>(II)V

    const/16 p0, 0xa

    invoke-direct {v0, p0, v1, v2}, Landroidx/room/concurrent/FileLock;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0, p1}, Landroidx/room/concurrent/FileLock;->createAdapter(Lcom/motorola/camera/fsm/Fsm;)Landroidx/compose/ui/node/NodeChain$Differ;

    move-result-object p0

    return-object p0

    :cond_1
    new-instance p0, Lcom/google/android/gms/dynamite/zzf;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p0, p1}, Lcom/google/android/gms/dynamite/zzf;->createAdapter(Lcom/motorola/camera/fsm/Fsm;)Landroidx/media3/exoplayer/mediacodec/MediaCodecAdapter;

    move-result-object p0

    return-object p0
.end method
