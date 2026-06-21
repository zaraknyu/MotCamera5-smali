.class public final Lcom/motorola/camera/HeadsetReceiver$1;
.super Landroid/media/AudioDeviceCallback;
.source "SourceFile"


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic this$0:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;)V
    .locals 0

    iput p1, p0, Lcom/motorola/camera/HeadsetReceiver$1;->$r8$classId:I

    iput-object p2, p0, Lcom/motorola/camera/HeadsetReceiver$1;->this$0:Ljava/lang/Object;

    invoke-direct {p0}, Landroid/media/AudioDeviceCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAudioDevicesAdded([Landroid/media/AudioDeviceInfo;)V
    .locals 4

    iget v0, p0, Lcom/motorola/camera/HeadsetReceiver$1;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    iget-object p0, p0, Lcom/motorola/camera/HeadsetReceiver$1;->this$0:Ljava/lang/Object;

    check-cast p0, Landroidx/media3/exoplayer/audio/AudioCapabilitiesReceiver;

    iget-object p1, p0, Landroidx/media3/exoplayer/audio/AudioCapabilitiesReceiver;->context:Landroid/content/Context;

    iget-object v0, p0, Landroidx/media3/exoplayer/audio/AudioCapabilitiesReceiver;->audioAttributes:Landroidx/media3/common/AudioAttributes;

    iget-object v1, p0, Landroidx/media3/exoplayer/audio/AudioCapabilitiesReceiver;->routedDevice:Lcom/google/android/gms/tasks/zzad;

    invoke-static {p1, v0, v1}, Landroidx/media3/exoplayer/audio/AudioCapabilities;->getCapabilitiesInternal(Landroid/content/Context;Landroidx/media3/common/AudioAttributes;Lcom/google/android/gms/tasks/zzad;)Landroidx/media3/exoplayer/audio/AudioCapabilities;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroidx/media3/exoplayer/audio/AudioCapabilitiesReceiver;->onNewAudioCapabilities(Landroidx/media3/exoplayer/audio/AudioCapabilities;)V

    return-void

    :pswitch_0
    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    aget-object v2, p1, v1

    invoke-virtual {v2}, Landroid/media/AudioDeviceInfo;->isSource()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v2}, Landroid/media/AudioDeviceInfo;->getType()I

    move-result v2

    invoke-static {v2}, Lcom/motorola/camera/Util;->isExternalMicType(I)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object p0, p0, Lcom/motorola/camera/HeadsetReceiver$1;->this$0:Ljava/lang/Object;

    check-cast p0, Landroidx/room/concurrent/FileLock;

    sget-object p1, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    new-instance v0, Lcom/motorola/camera/Controller$$ExternalSyntheticLambda11;

    const/4 v1, 0x5

    sget-object v2, Lcom/motorola/camera/fsm/camera/Trigger$HeadsetPlugStatus;->PLUG:Lcom/motorola/camera/fsm/camera/Trigger$HeadsetPlugStatus;

    invoke-direct {v0, v1, p0, v2}, Lcom/motorola/camera/Controller$$ExternalSyntheticLambda11;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    const-wide/16 v1, 0x3e8

    invoke-virtual {p1, v0, v1, v2}, Lcom/motorola/camera/CameraApp;->postDelayed(Ljava/lang/Runnable;J)V

    goto :goto_1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final onAudioDevicesRemoved([Landroid/media/AudioDeviceInfo;)V
    .locals 4

    iget v0, p0, Lcom/motorola/camera/HeadsetReceiver$1;->$r8$classId:I

    const/4 v1, 0x0

    iget-object p0, p0, Lcom/motorola/camera/HeadsetReceiver$1;->this$0:Ljava/lang/Object;

    packed-switch v0, :pswitch_data_0

    check-cast p0, Landroidx/media3/exoplayer/audio/AudioCapabilitiesReceiver;

    iget-object v0, p0, Landroidx/media3/exoplayer/audio/AudioCapabilitiesReceiver;->routedDevice:Lcom/google/android/gms/tasks/zzad;

    sget v2, Landroidx/media3/common/util/Util;->SDK_INT:I

    array-length v2, p1

    :goto_0
    if-ge v1, v2, :cond_1

    aget-object v3, p1, v1

    invoke-static {v3, v0}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 p1, 0x0

    iput-object p1, p0, Landroidx/media3/exoplayer/audio/AudioCapabilitiesReceiver;->routedDevice:Lcom/google/android/gms/tasks/zzad;

    goto :goto_1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    iget-object p1, p0, Landroidx/media3/exoplayer/audio/AudioCapabilitiesReceiver;->context:Landroid/content/Context;

    iget-object v0, p0, Landroidx/media3/exoplayer/audio/AudioCapabilitiesReceiver;->audioAttributes:Landroidx/media3/common/AudioAttributes;

    iget-object v1, p0, Landroidx/media3/exoplayer/audio/AudioCapabilitiesReceiver;->routedDevice:Lcom/google/android/gms/tasks/zzad;

    invoke-static {p1, v0, v1}, Landroidx/media3/exoplayer/audio/AudioCapabilities;->getCapabilitiesInternal(Landroid/content/Context;Landroidx/media3/common/AudioAttributes;Lcom/google/android/gms/tasks/zzad;)Landroidx/media3/exoplayer/audio/AudioCapabilities;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroidx/media3/exoplayer/audio/AudioCapabilitiesReceiver;->onNewAudioCapabilities(Landroidx/media3/exoplayer/audio/AudioCapabilities;)V

    return-void

    :pswitch_0
    array-length v0, p1

    :goto_2
    if-ge v1, v0, :cond_3

    aget-object v2, p1, v1

    invoke-virtual {v2}, Landroid/media/AudioDeviceInfo;->isSource()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-virtual {v2}, Landroid/media/AudioDeviceInfo;->getType()I

    move-result v2

    invoke-static {v2}, Lcom/motorola/camera/Util;->isExternalMicType(I)Z

    move-result v2

    if-eqz v2, :cond_2

    check-cast p0, Landroidx/room/concurrent/FileLock;

    sget-object p1, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    new-instance v0, Lcom/motorola/camera/Controller$$ExternalSyntheticLambda11;

    const/4 v1, 0x5

    sget-object v2, Lcom/motorola/camera/fsm/camera/Trigger$HeadsetPlugStatus;->UNPLUG:Lcom/motorola/camera/fsm/camera/Trigger$HeadsetPlugStatus;

    invoke-direct {v0, v1, p0, v2}, Lcom/motorola/camera/Controller$$ExternalSyntheticLambda11;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    const-wide/16 v1, 0x3e8

    invoke-virtual {p1, v0, v1, v2}, Lcom/motorola/camera/CameraApp;->postDelayed(Ljava/lang/Runnable;J)V

    goto :goto_3

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_3
    :goto_3
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
