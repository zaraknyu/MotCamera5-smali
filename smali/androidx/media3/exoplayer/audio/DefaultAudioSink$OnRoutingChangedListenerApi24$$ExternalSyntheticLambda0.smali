.class public final synthetic Landroidx/media3/exoplayer/audio/DefaultAudioSink$OnRoutingChangedListenerApi24$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/media/AudioRouting$OnRoutingChangedListener;


# instance fields
.field public final synthetic f$0:Landroidx/core/view/MenuHostHelper;


# direct methods
.method public synthetic constructor <init>(Landroidx/core/view/MenuHostHelper;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink$OnRoutingChangedListenerApi24$$ExternalSyntheticLambda0;->f$0:Landroidx/core/view/MenuHostHelper;

    return-void
.end method


# virtual methods
.method public final onRoutingChanged(Landroid/media/AudioRouting;)V
    .locals 1

    iget-object p0, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink$OnRoutingChangedListenerApi24$$ExternalSyntheticLambda0;->f$0:Landroidx/core/view/MenuHostHelper;

    iget-object v0, p0, Landroidx/core/view/MenuHostHelper;->mProviderToLifecycleContainers:Ljava/lang/Object;

    check-cast v0, Landroidx/media3/exoplayer/audio/DefaultAudioSink$OnRoutingChangedListenerApi24$$ExternalSyntheticLambda0;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-interface {p1}, Landroid/media/AudioRouting;->getRoutedDevice()Landroid/media/AudioDeviceInfo;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-object p0, p0, Landroidx/core/view/MenuHostHelper;->mMenuProviders:Ljava/lang/Object;

    check-cast p0, Landroidx/media3/exoplayer/audio/AudioCapabilitiesReceiver;

    invoke-virtual {p0, p1}, Landroidx/media3/exoplayer/audio/AudioCapabilitiesReceiver;->setRoutedDevice(Landroid/media/AudioDeviceInfo;)V

    :cond_1
    :goto_0
    return-void
.end method
