.class public final Landroidx/media3/exoplayer/audio/AudioCapabilitiesReceiver$ExternalSurroundSoundSettingObserver;
.super Landroid/database/ContentObserver;
.source "SourceFile"


# instance fields
.field public final resolver:Landroid/content/ContentResolver;

.field public final settingUri:Landroid/net/Uri;

.field public final synthetic this$0:Landroidx/media3/exoplayer/audio/AudioCapabilitiesReceiver;


# direct methods
.method public constructor <init>(Landroidx/media3/exoplayer/audio/AudioCapabilitiesReceiver;Landroid/os/Handler;Landroid/content/ContentResolver;Landroid/net/Uri;)V
    .locals 0

    iput-object p1, p0, Landroidx/media3/exoplayer/audio/AudioCapabilitiesReceiver$ExternalSurroundSoundSettingObserver;->this$0:Landroidx/media3/exoplayer/audio/AudioCapabilitiesReceiver;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    iput-object p3, p0, Landroidx/media3/exoplayer/audio/AudioCapabilitiesReceiver$ExternalSurroundSoundSettingObserver;->resolver:Landroid/content/ContentResolver;

    iput-object p4, p0, Landroidx/media3/exoplayer/audio/AudioCapabilitiesReceiver$ExternalSurroundSoundSettingObserver;->settingUri:Landroid/net/Uri;

    return-void
.end method


# virtual methods
.method public final onChange(Z)V
    .locals 2

    iget-object p0, p0, Landroidx/media3/exoplayer/audio/AudioCapabilitiesReceiver$ExternalSurroundSoundSettingObserver;->this$0:Landroidx/media3/exoplayer/audio/AudioCapabilitiesReceiver;

    iget-object p1, p0, Landroidx/media3/exoplayer/audio/AudioCapabilitiesReceiver;->context:Landroid/content/Context;

    iget-object v0, p0, Landroidx/media3/exoplayer/audio/AudioCapabilitiesReceiver;->audioAttributes:Landroidx/media3/common/AudioAttributes;

    iget-object v1, p0, Landroidx/media3/exoplayer/audio/AudioCapabilitiesReceiver;->routedDevice:Lcom/google/android/gms/tasks/zzad;

    invoke-static {p1, v0, v1}, Landroidx/media3/exoplayer/audio/AudioCapabilities;->getCapabilitiesInternal(Landroid/content/Context;Landroidx/media3/common/AudioAttributes;Lcom/google/android/gms/tasks/zzad;)Landroidx/media3/exoplayer/audio/AudioCapabilities;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroidx/media3/exoplayer/audio/AudioCapabilitiesReceiver;->onNewAudioCapabilities(Landroidx/media3/exoplayer/audio/AudioCapabilities;)V

    return-void
.end method
